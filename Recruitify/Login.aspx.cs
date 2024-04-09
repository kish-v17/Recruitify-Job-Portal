using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
namespace Recruitify
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        ConHelper ch;
        string eml, pass = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void GetCon()
        {
            ch = new ConHelper();
            con = ch.StartCon();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            GetCon();
            if (!string.IsNullOrEmpty(txtLogEml.Text) && !string.IsNullOrEmpty(txtLogPass.Text))
            {
                eml = ConfigurationManager.AppSettings["Email"];
                pass = ConfigurationManager.AppSettings["Password"];

                if (txtLogEml.Text == eml && txtLogPass.Text == pass)
                {
                    // Admin login
                    Session["Id"] = "admin@admin.com";
                    Session["Name"] = "Admin";
                    Session["Image"] = "../images/user-img/user-profile/Admin.png";
                    Response.Redirect("Admin/Index.aspx");
                }
                else
                {
                    SqlDataAdapter da = new SqlDataAdapter("SELECT U_First_Name, U_Id, U_Type_Id, U_Image FROM User_tbl WHERE U_Email = @Email AND U_Password = @Password", con);
                    da.SelectCommand.Parameters.AddWithValue("@Email", txtLogEml.Text);
                    da.SelectCommand.Parameters.AddWithValue("@Password", txtLogPass.Text);

                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                    {
                        Session["Id"] = ds.Tables[0].Rows[0]["U_Id"].ToString();
                        Session["Name"] = ds.Tables[0].Rows[0]["U_First_Name"].ToString();
                        Session["Image"] = "../" + ds.Tables[0].Rows[0]["U_Image"].ToString();

                        if (ds.Tables[0].Rows[0]["U_Type_Id"].ToString() == "2")
                        {
                            Response.Redirect("Employer/Index.aspx");
                        }
                        else
                        {
                            Response.Redirect("Jobseeker/Index.aspx");
                        }
                    }
                    else
                    {
                        // Password is incorrect
                        string script = "alert('Incorrect email or password.');";
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
                    }
                }
            }
            else
            {
                // Fields are empty
                string script = "alert('Please enter both email and password.');";
                ClientScript.RegisterStartupScript(this.GetType(), "alert", script, true);
            }

        }
    }
}