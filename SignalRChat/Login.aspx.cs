using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SignalRChat
{
    public partial class Login : System.Web.UI.Page
    {
        Helper helper = new Helper();

        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["Name"] = "";
            //Session["Password"] = "";
            //lblMsg.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                DataTable dt = new DataTable();
                //dt = helper.PlaneQuery("select * from tbl_login where username='" + txtEmail.Text + "' and password='" + txtPassword.Text);
                dt = helper.PlaneQuery("select * from tbl_login where username='" + txtEmail.Text + "' and password='" + txtPassword.Text + "' and role='user'");
                if (dt.Rows.Count > 0)
                {
                    String str = txtEmail.Text;
                    int index = str.IndexOf('@');
                    if (index > 0)
                    {
                        Session["Password"] = txtPassword.Text;
                        Session["Name"] = str.Substring(0, index);
                        Response.Redirect("index.aspx");
                        lblMsg.Text = "";
                    }

                }
                else
                {
                    lblMsg.Text = "Invalid Email or Password";
                }
            }
            catch
            {

            }
        }
    }
}