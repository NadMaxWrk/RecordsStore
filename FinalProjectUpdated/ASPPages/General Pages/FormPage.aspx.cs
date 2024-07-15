using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjectUpdated.ASPPages
{
    public partial class FormPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// just verifying the fields are not empty. fields properties are checked at client side.
        /// </summary>
        /// <returns></returns>
        protected bool VerifyCreateUserFields()
        {
            var res = false;

            if (!(string.IsNullOrEmpty(Request.Form["first_name"].ToString()) && 
                string.IsNullOrEmpty(Request.Form["last_name"].ToString()) && 
                string.IsNullOrEmpty(Request.Form["username"].ToString()) && 
                string.IsNullOrEmpty(Request.Form["password"].ToString()) && 
                string.IsNullOrEmpty(Request.Form["passwordv"].ToString()) &&
                string.IsNullOrEmpty(Request.Form["email"].ToString()) && 
                string.IsNullOrEmpty(Request.Form["gender"].ToString()) && 
                string.IsNullOrEmpty(Request.Form["age"].ToString()) &&
                string.IsNullOrEmpty(Request.Form["fav_artist"].ToString()) && 
                string.IsNullOrEmpty(Request.Form["genre"].ToString())))
            {
                res = true;
            }
            return res;
        }
       
        protected void CreateNewUser(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (!(VerifyCreateUserFields()))
                {
                    // unlikely to reach this point, because the fields are validated on client side...
                    FieldsServerError.InnerHtml = "אנא מלא את כל השדות";
                    return;
                }

                string conString = Helper.conString;
                string sqlStr = $"SELECT * FROM Users WHERE userName Like'{Request.Form["username"]}'";

                SqlConnection con = new SqlConnection(conString);

                SqlCommand cmd = new SqlCommand(sqlStr, con);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataSet ds = new DataSet();


                adapter.Fill(ds, "users");

                if (ds.Tables[0].Rows.Count > 0)
                {
                    UserAlreadyExists.InnerHtml = "שם משתמש תפוס";
                    return;
                }
                
                DataRow dr = ds.Tables["users"].NewRow();
                dr["UserName"] = Request.Form["username"]; 
                dr["FirstName"] = Request.Form["first_name"]; 
                dr["LastName"] = Request.Form["last_name"]; 
                dr["Password"] = Request.Form["password"];
                dr["Email"] = Request.Form["email"];
                dr["Gender"] = Request.Form["gender"];
                dr["Age"] = Request.Form["age"];
                dr["favArtist"] = Request.Form["fav_artist"];
                dr["favGenre"] = Request.Form["genre"];
                dr["Admin"] = false;

                ds.Tables["users"].Rows.Add(dr);

                SqlCommandBuilder builder = new SqlCommandBuilder(adapter);
                adapter.Update(ds, "users");
            }
        }
    }
}