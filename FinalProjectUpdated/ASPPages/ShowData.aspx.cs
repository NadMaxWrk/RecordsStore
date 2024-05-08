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
         public void Page_Load(object sender, EventArgs e)
        {
            string SQLStr = "SELECT * FROM " + Helper.tblName;
            DataSet ds = Helper.RetrieveTable(SQLStr);
            DataTable dt = ds.Tables[0];
            string table = Helper.BuildSimpleUsersTable(dt);
            divTable.InnerHtml = table;
        }
    }
}