using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SignalRChat
{
    public partial class HomePages : System.Web.UI.Page
    {
        Connect db = new Connect();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (AuthenticateUser(txtname.Text, txtpassword.Text))
            {
                Session["Name"] = txtname.Text;
                Response.Redirect("~/HomePage.aspx");
            }
            else
            {

                lblMsg.Text = "Invalid Username or Password !!";

            }

        }
        private bool AuthenticateUser(string username, string password)
        {

            SqlCommand cmd = new SqlCommand("SP_LoginUser", db.ActiveCon());
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = txtname.Text;
            cmd.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = txtpassword.Text;

            int ReturnCode = (int)cmd.ExecuteScalar();
            return ReturnCode == 1;
            return true;
        }
    }
}