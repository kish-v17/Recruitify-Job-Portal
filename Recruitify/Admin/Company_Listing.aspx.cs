using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace Recruitify.Admin
{
    public partial class Company_Listing : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from Company_tbl C INNER JOIN User_tbl U on C.C_Posted_By_Id=U.U_Id", con);
            ds = new DataSet();
            da.Fill(ds);
            companyList.DataSource = ds;
            companyList.DataBind();
        }
    }
}