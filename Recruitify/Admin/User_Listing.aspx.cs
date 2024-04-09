using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Recruitify.Admin
{
    public partial class User_Listing : System.Web.UI.Page
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
            da = new SqlDataAdapter("select * from User_tbl U INNER JOIN User_Type_tbl UT on U.U_Type_Id=UT.UT_Id", con);
            ds = new DataSet();
            da.Fill(ds);
            userList.DataSource = ds;
            userList.DataBind();
        }


    }
}