using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Recruitify.Employer
{
    public partial class Company_Add : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string file;
        ConHelper ch;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void GetCon()
        {
            ch = new ConHelper();
            con = ch.StartCon();
        }
        void Upload()
        {
            string path = "../images/user-img/company-profile/";
            string nm;
            string type = Path.GetExtension(FuComLogo.FileName);
            if (type == ".jpg" || type == ".JPG" || type == ".png" || type == ".PNG")
            {
                nm = txtCname.Text.Trim();
                file = path + nm + type;
                FuComLogo.SaveAs(Server.MapPath(file));
            }
        }

        protected void btnCsubmit_Click(object sender, EventArgs e)
        {
            GetCon();
            Upload();

            string query1 = "insert into Company_tbl(C_Posted_by_Id,C_Name,C_Desc,C_Business_Stream,C_Establish_Year,C_Website,C_City,C_State,C_Country,C_Phone,C_Email,C_Logo)values(@C_Posted_by_Id,@C_Name,@C_Desc,@C_Business_Stream,@C_Establish_Year,@C_Website,@C_City,@C_State,@C_Country,@C_Phone,@C_Email,@C_Logo)";
            cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@C_Posted_by_Id", Session["Id"]);
            cmd.Parameters.AddWithValue("@C_Name", txtCname.Text);
            cmd.Parameters.AddWithValue("@C_Desc", txtCdesc.Text);
            cmd.Parameters.AddWithValue("@C_Business_Stream", txtCstream.Text);
            cmd.Parameters.AddWithValue("@C_Establish_Year", txtCEYear.Text);
            cmd.Parameters.AddWithValue("@C_Website", txtCweb.Text);
            cmd.Parameters.AddWithValue("@C_City", txtCcity.Text);
            cmd.Parameters.AddWithValue("@C_State", txtCstate.Text);
            cmd.Parameters.AddWithValue("@C_Country", txtCcountry.Text);
            cmd.Parameters.AddWithValue("@C_Phone", txtCmbl.Text);
            cmd.Parameters.AddWithValue("@C_Email", txtCeml.Text);
            cmd.Parameters.AddWithValue("@C_Logo", file);

            cmd.ExecuteNonQuery();
            Response.Redirect("Your_Uploads.aspx");
        }
    }
}