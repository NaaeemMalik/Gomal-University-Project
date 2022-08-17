using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SignalRChat
{
    public partial class StudentDiarys : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["FYPConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(constr);

            //string name = Session["Name"].ToString();
            string name = "Rajjoo";
            string query = "insert into tbl_diary (name, comment)values( '" + name + "' , '" + txtcomment.Text + "')";

            SqlCommand cmd = new SqlCommand(query, con);

            con.Open();
            cmd.ExecuteNonQuery();
            txtcomment.Text = "";
            Response.Redirect("~/StudentDiarys.aspx");
            con.Close();
            txtcomment.Text = "";
        }
    }
}