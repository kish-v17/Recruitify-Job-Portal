using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Recruitify.Admin
{
    public partial class Job_Listing : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        ConHelper ch;
        protected void Page_Load(object sender, EventArgs e)
        {
            fillList();
        }
        void getCon()
        {
            ch = new ConHelper();
            con = ch.StartCon();
        }

        void fillList()
        {
            getCon();
            da = new SqlDataAdapter("select * from Job_List_tbl J INNER JOIN Company_tbl C on J.J_Company_Id=C.C_Id INNER JOIN User_tbl U on J.J_Posted_by_Id=U.U_Id", con);
            ds = new DataSet();
            da.Fill(ds);
            jobList.DataSource = ds;
            jobList.DataBind();
        }

    }
}