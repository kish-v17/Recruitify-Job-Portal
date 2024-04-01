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
            
            string query1= "insert into User_tbl(U_Type_Id,U_First_Name,U_Last_Name,U_Email,U_DOB,U_Gender,U_Mobile,U_City,U_State,U_Country,U_Image,U_Password,U_Reg_Date) values(@utid,@ufnm,@ulnm,@uemail,@udob,@ugen,@umbl,@ucity,@ustate,@ucountry,@uimage,@upass,@uregdate)"; 
            
            cmd = new SqlCommand(query1, con);
            cmd.Parameters.AddWithValue("@utid", rblRegAs.SelectedValue);
            cmd.Parameters.AddWithValue("@ufnm", txtRegFnm.Text);
            cmd.Parameters.AddWithValue("@ulnm", txtRegLnm.Text);
            cmd.Parameters.AddWithValue("@uemail", txtRegEml.Text);
            cmd.Parameters.AddWithValue("@udob", txtRegDob.Text);
            cmd.Parameters.AddWithValue("@ugen", rblRegGen.SelectedValue);
            cmd.Parameters.AddWithValue("@umbl", txtRegMbl.Text);
            cmd.Parameters.AddWithValue("@ucity", txtRegCity.Text);
            cmd.Parameters.AddWithValue("@ustate", txtRegState.Text);
            cmd.Parameters.AddWithValue("@ucountry", txtRegCountry.Text);
            cmd.Parameters.AddWithValue("@uimage", file);
            cmd.Parameters.AddWithValue("@upass", txtRegPass.Text);
            cmd.Parameters.AddWithValue("@uregdate", DateTime.Now);

            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
        }
    }
}