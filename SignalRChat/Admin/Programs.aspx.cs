using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRChat.Admin
{
    public partial class Programs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LinkButton lbinertProgram = new LinkButton();
            lbinertProgram.Click += new EventHandler(lbinsertProg_Click);
        }
        protected void lbinsertProg_Click(object sender, EventArgs e)
        {
            ProgramDataSource.InsertParameters["prog_type"].DefaultValue =
        ((DropDownList)grvProgram.FooterRow.FindControl("ddlFtrProgType")).SelectedItem.ToString();

            ProgramDataSource.InsertParameters["prog_name"].DefaultValue =
                ((TextBox)grvProgram.FooterRow.FindControl("txtFtrProgName2")).Text;

            ProgramDataSource.InsertParameters["dept_id"].DefaultValue =
            ((DropDownList)grvProgram.FooterRow.FindControl("DropDownList3")).SelectedValue;

            ProgramDataSource.Insert();
        }
    }
}