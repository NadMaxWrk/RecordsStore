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
        private bool _isAscending = true;
        private readonly string[] columnHeaders = new string[] { "שם משתמש", "שם פרטי", "שם משפחה", "סיסמה", "אמייל", "מגדר", "גיל", "אמן אהוב", "ז'אנר אהוב", "מנהל" };

        public ShowTable()
        {
            this.InitComplete += ShowTable_InitComplete;
        }

        private void ShowTable_InitComplete(object sender, EventArgs e)
        {
            // building the select button dropdown options
            foreach (string option in columnHeaders)
            {
                ListItem item = new ListItem(option);
                sortBySelect.Items.Add(item);
            }

            //intializing ascending order
            asc.Checked = true;
        }

        public void Page_Load(object sender, EventArgs e)
        {
            //building the users table
            string SQLStr = "SELECT * FROM " + Helper.tblName;
            DataSet ds = Helper.ExecuteQuery(SQLStr);
            DataTable dt = ds.Tables[0];
            string table = Helper.BuildSimpleTable(dt, columnHeaders);
            divTable.InnerHtml = table;
        }


        /// <summary>
        /// sorts the users table according to the user's request represented in the global varialbes 'sortBySelect' and 'asc', 'dsc' 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void sortButton_ServerClicked(object sender, EventArgs e)
        {

            //1. get sort by index and get the relevant data column object. assuming the order of the columns is identical to their order in db columns
            int colIndex = sortBySelect.SelectedIndex + 1;

            //2. get the ASC / DSC value
            string orderValue = "ASC";
            if (!(asc.Checked))
            {
                orderValue = "DESC";
            }

            //3. call the ExecuteQuery() function
            string SQLStr = $"SELECT * FROM {Helper.tblName} ORDER BY {colIndex} {orderValue}";
            DataSet ds = Helper.ExecuteQuery(SQLStr);
            DataTable dt = ds.Tables[0];
            string table = Helper.BuildSimpleTable(dt, columnHeaders);
            divTable.InnerHtml = table;
        }

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
                // unlikely to reach this point, because the fields are validated above...
                UserNotFound.InnerHtml = "מחיקת משתמש נכשלה";
            }
        }
    }
}