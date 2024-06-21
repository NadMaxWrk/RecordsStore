using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProjectUpdated.ASPPages
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)Session["Admin"] == false && (bool)Session["LoggedIn"] == false)
            {
                artists.Visible = true;
                HomePage.Visible = true;
                genres.Visible = false;
                ShowUsers.Visible = false;
                forms.Visible = true;
            }
            else
            {
                if ((bool)Session["Admin"] == false && (bool)Session["LoggedIn"] == true)
                {
                    artists.Visible = true;
                    HomePage.Visible = true;
                    genres.Visible = true;
                    ShowUsers.Visible = false;
                    forms.Visible = true;
                }
                else
                {
                    artists.Visible = true;
                    HomePage.Visible = true;
                    genres.Visible = true;
                    ShowUsers.Visible = true;
                    forms.Visible = true;
                }
            }
        }

        public void Btn_Abandon (object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("HomePage.aspx");
        }

    }
}