using System;
using System.Collections.Generic;
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
            // 1. verify username and password are initialized (used CheckUsername and CheckPassword).
            // 2. verify username password against database
            // 3. create session with users parameters
            // 4. if users is not veriftied, show error message
            // 4.1 create a default guest session
        }
    }
}