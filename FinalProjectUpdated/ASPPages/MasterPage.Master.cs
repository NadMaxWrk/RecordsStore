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

            if (!IsPostBack)
            {
                if (Session["LoggedIn"] != null && (bool)Session["LoggedIn"])
                {
                    userName.InnerText = $"שלום, {Session["UserName"]}";
                    Abandon.Visible = true; // Show the "exit" button
                }
                else
                {
                    userName.InnerText = ""; // Hide the greeting if not logged in
                    Abandon.Visible = false; // Hide the "exit" button if not logged in
                }
            }
        }

        protected string GetGreetingMessage()
        {
            if (Session["LoggedIn"] != null && (bool)Session["LoggedIn"])
            {
                return $"שלום, {Session["UserName"]}";
            }
            return ""; // Empty string if not logged in
        }

        public void Btn_Abandon (object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("HomePage.aspx");
        }

    }
}