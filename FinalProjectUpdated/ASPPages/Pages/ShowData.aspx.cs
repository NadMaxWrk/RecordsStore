using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinalProjectUpdated.ASPPages
{
    public partial class ShowTable : System.Web.UI.Page
    {
        private bool _isAscending = true;
        private readonly string[] columnHeaders = new string[] { "שם משתמש", "שם פרטי", "שם משפחה", "סיסמה", "אמייל", "מגדר", "גיל", "ז'אנר אהוב", "אמן אהוב", "מנהל" };
        public void Page_Load(object sender, EventArgs e)
        {
            // building the select button dropdown options
            foreach (string option in columnHeaders)
            {
                ListItem item = new ListItem(option);
                sortBySelect.Items.Add(item);
            }

            //intializing ascending order
            asc.Value = "TRUE";
            dsc.Value = "FALSE";

            //building the users table
            string SQLStr = "SELECT * FROM " + Helper.tblName;
            DataSet ds = Helper.RetrieveTable(SQLStr);
            DataTable dt = ds.Tables[0];
            string table = Helper.BuildSimpleTable(dt, columnHeaders);
            divTable.InnerHtml = table;
        }


        protected void sortButton_ServerClicked(object sender, EventArgs e)
        {



        }
    }
}