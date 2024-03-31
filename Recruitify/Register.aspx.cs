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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        ConHelper ch;
        string file;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void getcon()
        {
            ch = new ConHelper();
            con = ch.StartCon(); 
        }
        void upload()
        {
            string path = "images/user-img/user-profile/";
            string nm;
            string type = Path.GetExtension(FuRegImage.FileName);
            if (type == ".jpg" || type == ".JPG" || type == ".png" || type == ".PNG")
            {
                nm = txtRegFnm.Text.Trim();
                file =path + nm + type;
                FuRegImage.SaveAs(Server.MapPath(file));
            }
        }

  
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            getcon();
            upload();
            
            cmd = new SqlCommand("insert into User_tbl(U_Type_Id,U_First_Name,U_Last_Name,U_Email,U_DOB,U_Gender,U_Mobile,U_City,U_State,U_Country,U_Image,U_Password,U_Reg_Date) values('" + rblRegAs.SelectedValue + "','" + txtRegFnm.Text + "','" + txtRegLnm.Text + "','" + txtRegEml.Text + "','" + txtRegDob.Text + "','" + rblRegGen.SelectedValue + "','" + txtRegMbl.Text + "','" + txtRegCity.Text + "','" + txtRegState.Text + "','" + txtRegCountry.Text + "','" + file + "','" + txtRegPass.Text + "','" + DateTime.Now + "')", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
        }
    }
}