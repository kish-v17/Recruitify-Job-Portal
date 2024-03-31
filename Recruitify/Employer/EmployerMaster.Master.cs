using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Recruitify.Employer
{
    public partial class EmployerMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Id"] != null)
            {
                ibprofile.Visible = true;
                ibprofile.ImageUrl = Session["Image"].ToString();
                lbRegorProfile.Text = "Hello, " + Session["Name"].ToString();
                lbLoginorLogout.Text = "Logout";
            }
            else
            {
                lbRegorProfile.Text = "Register";
                lbLoginorLogout.Text = "Login";
            }
        }

        protected void lbRegorProfile_Click(object sender, EventArgs e)
        {
            if (lbRegorProfile.Text == "Register")
            {
                Response.Redirect("Register.aspx");
            }
            else
            {
                Response.Redirect("Profile.aspx");
            }
        }
        protected void lbLoginorLogout_Click(object sender, EventArgs e)
        {
            if (lbLoginorLogout.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("../Login.aspx");
            }
        }
    }
}