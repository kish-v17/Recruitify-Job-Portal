using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Recruitify.Employer
{
    public partial class Job_Post : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        ConHelper ch;
        string file;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCon();
            filldrop();

        }
        void GetCon()
        {
            ch = new ConHelper();
            con = ch.StartCon();
        }
        void Upload()
        {
            string path = "../images/user-img/job-profile/";
            string type = Path.GetExtension(FuJobImage.FileName);
            if (type == ".jpg" || type == ".JPG" || type == ".png" || type == ".PNG")
            {
                string nm = txtJobTitle.Text.Trim();
                file = path + nm + type;
                FuJobImage.SaveAs(Server.MapPath(file));
            }
        }

        void filldrop()
        {
            GetCon();
            da = new SqlDataAdapter("select C_Id,C_Name from Company_tbl", con);
            ds = new DataSet();
            da.Fill(ds);

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                ListItem ls = new ListItem(dr[1].ToString(), dr[0].ToString());
                ddlCompany.Items.Add(ls);
            }
        }

        protected void btnJobSave_Click(object sender, EventArgs e)
        {
            if (btnJobSave.Text == "Save")
            {
                GetCon();
                Upload();
                string query1 = "insert into Job_List_tbl(J_Posted_by_Id,J_Title,J_Post_Time,J_Desc,J_Company_Id,J_Type,J_Reqs,J_Benefits,J_Salary,J_Image,J_City,J_State,J_Country)values(@jid,@jtitle,@jptime,@jdesc,@jcid,@jtype,@jreqs,@jbenefit,@jsalary,@jimage,@jcity,@jstate,@jcountry)";
                cmd = new SqlCommand(query1, con);
                cmd.Parameters.AddWithValue("@jid", Session["Id"]);
                cmd.Parameters.AddWithValue("@jtitle",txtJobTitle.Text );
                cmd.Parameters.AddWithValue("@jptime", DateTime.Now);
                cmd.Parameters.AddWithValue("@jdesc", txtJobDesc.Text);
                cmd.Parameters.AddWithValue("@jcid", ddlCompany.SelectedValue);
                cmd.Parameters.AddWithValue("@jtype", ddlJobType.SelectedValue);
                cmd.Parameters.AddWithValue("@jreqs", txtJobReqs.Text);
                cmd.Parameters.AddWithValue("@jbenefit", txtJobBenefits.Text);
                cmd.Parameters.AddWithValue("@jsalary", txtJobSalary.Text);
                cmd.Parameters.AddWithValue("@jimage", file);
                cmd.Parameters.AddWithValue("@jcity", txtJobCity.Text);
                cmd.Parameters.AddWithValue("@jstate", txtJobState.Text);
                cmd.Parameters.AddWithValue("@jcountry", txtJobCountry.Text);
                
                cmd.ExecuteNonQuery();
            }
            else
            {

            }
        }
    }
}