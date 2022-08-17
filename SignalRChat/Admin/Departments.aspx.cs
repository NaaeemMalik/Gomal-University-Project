using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRChat.Admin
{
    public partial class Departments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LinkButton lblinsert = new LinkButton();
            lblinsert.Click += new EventHandler(lblinsert_Click);

        }
        protected void lblinsert_Click(object sender, EventArgs e)
        {
            DepartDataSource.InsertParameters["dep_name"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;

            DepartDataSource.InsertParameters["dep_intro"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("txtIntro")).Text;

            DepartDataSource.Insert();
        }
    }
}