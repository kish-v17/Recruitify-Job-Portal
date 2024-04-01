using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Recruitify.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
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

            if (!IsPostBack)
            {
                // Sample data - replace this with your actual data retrieval
                List<DateTime> dateTimes = new List<DateTime>
                {
                    DateTime.Now.AddMinutes(-10),
                    DateTime.Now.AddHours(-3),
                    DateTime.Now.AddDays(-1),
                    DateTime.Now.AddDays(-7),
                    DateTime.Now.AddYears(-1)
                };
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