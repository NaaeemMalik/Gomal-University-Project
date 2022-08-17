using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRChat
{
    public partial class khan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    txtNickName.Text = Session["Name"].ToString();
                    lblname.Text = Session["Name"].ToString();
                }
            }
            catch(NullReferenceException)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void form1_Load(object sender, EventArgs e)
        {

        }
    }
}