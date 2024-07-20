using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Services.Description;
using System.Security.Principal;

namespace FinalProjectUpdated.ASPPages
{
    public partial class ShowTable : System.Web.UI.Page
    {
        private readonly string[] columnHeaders = new string[] { "שם משתמש", "שם פרטי", "שם משפחה", "סיסמה", "אמייל", "מגדר", "גיל", "אמן אהוב", "ז'אנר אהוב", "מנהל" };

        public ShowTable()
        {
            this.InitComplete += ShowTable_InitComplete;
        }

        /// <summary>
        /// This event is primarily used for tasks that need to be performed after all initializations are done
        /// but before the page starts to handle view state and postback data. 
        /// In this cnotext, we are initialzing the contol and sort buttons
        /// </summary>
        /// <param name="sender">The object that raised the event.</param>
        /// <param name="e">The event data.</param>
        private void ShowTable_InitComplete(object sender, EventArgs e)
        {
            // building the select button dropdown options
            foreach (string option in columnHeaders)
            {
                ListItem item = new ListItem(option);
                sortBySelect.Items.Add(item);
            }

            // initializing ascending order
            asc.Checked = true;
        }

        /// <summary>
        /// Loads the page and builds the users table.
        /// </summary>
        /// <param name="sender">The object that raised the event.</param>
        /// <param name="e">The event data.</param>
        public void Page_Load(object sender, EventArgs e)
        {
            // building the users table
            string SQLStr = "SELECT * FROM " + Helper.tblName;
            DataSet ds = Helper.ExecuteQuery(SQLStr);
            DataTable dt = ds.Tables[0];
            string table = Helper.BuildSimpleTable(dt, columnHeaders);
            divTable.InnerHtml = table;
        }


        /// <summary>
        /// Sorts the users table according to the user's request represented in the global variables 'sortBySelect' and 'asc', 'dsc'.
        /// </summary>
        /// <param name="sender">The object that raised the event.</param>
        /// <param name="e">The event data.</param>
        protected void sortButton_ServerClicked(object sender, EventArgs e)
        {
            // 1. Get the sort by index and get the relevant data column object. Assuming the order of the columns is identical to their order in db columns.
            int colIndex = sortBySelect.SelectedIndex + 1;

            // 2. Get the ASC / DSC value
            string orderValue = "ASC";
            if (!(asc.Checked))
            {
                orderValue = "DESC";
            }

            // 3. Call the ExecuteQuery() function
            string SQLStr = $"SELECT * FROM {Helper.tblName} ORDER BY {colIndex} {orderValue}";
            DataSet ds = Helper.ExecuteQuery(SQLStr);
            DataTable dt = ds.Tables[0];
            string table = Helper.BuildSimpleTable(dt, columnHeaders);
            divTable.InnerHtml = table;
        }

        /// <summary>
        /// Deletes a user from the table based on the provided user ID.
        /// </summary>
        /// <param name="sender">The object that raised the event.</param>
        /// <param name="e">The event data.</param>
        protected void deleteButton_ServerClicked(Object sender, EventArgs e)
        {
            string conString = Helper.conString;
            string sqlStr = $"SELECT * FROM {Helper.tblName} WHERE UserName Like'{Request.Form[deleteUserId.UniqueID]}'";

            SqlConnection con = new SqlConnection(conString);

            SqlCommand cmd = new SqlCommand(sqlStr, con);

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            adapter.Fill(ds, "users");

            if (ds.Tables[0].Rows.Count == 0)
            {
                UserNotFound.InnerHtml = "משתמש לא נמצא";
                return;
            }

            string deleteSQL = $"DELETE FROM {Helper.tblName} WHERE UserName Like'{Request.Form[deleteUserId.UniqueID]}'";
            int affectedRowsCount = Helper.ExecuteNonQuery(deleteSQL);
            if (affectedRowsCount > 0)
            {
                Response.Redirect("ShowData.aspx");
            }
            else
            {
                // Unlikely to reach this point, because the fields are validated above...
                UserNotFound.InnerHtml = "מחיקת משתמש נכשלה";
            }
        }
    }
}