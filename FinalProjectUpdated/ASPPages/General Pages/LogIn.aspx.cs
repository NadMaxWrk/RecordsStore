using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace FinalProjectUpdated.ASPPages
{
    public partial class LogIn : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void CheckLogin(object sender, EventArgs e)
        {
            string username = Request.Form[LogInUsername.UniqueID];
            string password = Request.Form[LogInPassword.UniqueID];

            // 1. verify username and password are initialized (used CheckUsername and CheckPassword). 
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                // unlikely to reach this point, because the fields are validated on client side...
                divResponse.InnerHtml = "חסר משתמש או סיסמה";
            }

            // 2. verify username password against database
            // 3. create session with users parameters
            // 4. if users is not veriftied, show error message
            // 4.1 reset session to default
            CheckUserExists(username, password);

        }

        private void InitSession(DataRow userRow)
        {
            Session["UserName"] = userRow["FirstName"].ToString() + " " + userRow["LastName"].ToString();
            Session["LoggedIn"] = true;
 
            Session["Admin"] = false;
            if ((bool)userRow["Admin"] == true)
            {
                Session["Admin"] = true;
            }
            Response.Redirect("HomePage.aspx");
        }

        private void CheckUserExists(string username, string password)
        {
            string SQLStr = $"SELECT * FROM {Helper.tblName} WHERE UserName='{username}' AND Password='{password}' ";
            DataSet ds = Helper.RetrieveTable(SQLStr);
            DataTable dt = ds.Tables[0];
            if (dt?.Rows.Count > 0)
            {
                InitSession(dt.Rows[0]);
            }
            else
            {
                Session["UserName"] = "guest";
                Session["LoggedIn"] = false;
                Session["Admin"] = false;
                divResponse.InnerHtml = "אינך רשום באתר, עבור לטופס הרשמה";
            }
        }
    }
}