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
            if (!(string.IsNullOrEmpty(txtLogEml.Text) && string.IsNullOrEmpty(txtLogPass.Text)))
            {
                eml = ConfigurationManager.AppSettings["Email"];
                pass = ConfigurationManager.AppSettings["Password"];
                if (txtLogEml.Text == eml && txtLogPass.Text == pass)
                {
                    Session["Id"] = "admin@admin.com";
                    Session["Name"] = "Admin";
                    Session["Image"] = "../images/user-img/user-profile/Admin.png";
                    Response.Redirect("Admin/User_Listing.aspx");
                }
                else
                {
                    SqlDataAdapter da = new SqlDataAdapter("select U_First_Name,U_Id,U_Type_Id,U_Image from User_tbl where U_Email='" + txtLogEml.Text + "' and U_Password='" + txtLogPass.Text + "'", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    
                        Session["Id"] = ds.Tables[0].Rows[0][1].ToString();
                        Session["Name"] = ds.Tables[0].Rows[0][0].ToString();
                        Session["Image"] = "../" + ds.Tables[0].Rows[0][3].ToString();
                    if (ds.Tables[0].Rows[0][2].ToString().Equals("2"))
                    {
                        Response.Redirect("Employer/Index.aspx");
                    }
                    else
                    {
                        Response.Redirect("Jobseeker/Index.aspx");
                    }
                }
            }
        }
    }
}