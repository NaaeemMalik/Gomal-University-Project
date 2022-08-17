using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace SignalRChat
{
    public partial class Registrations : System.Web.UI.Page
    {
        Connect db = new Connect();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlCommand cmd = new SqlCommand("SP_RegisterUser", db.ActiveCon());
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@Name", SqlDbType.VarChar, 50).Value = txtname.Text;
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = txtEmail.Text;
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 50).Value = txtPassword.Text;

                int ReturnCode = (int)cmd.ExecuteScalar();
                if (ReturnCode == -1)
                {
                    lblMsg.Text = "Username is already in use, Please Choos another username";
                }
                else
                {
                    Response.Redirect("~/result.aspx?rno="+trno.Text);
                }
            }
        }
    }
}