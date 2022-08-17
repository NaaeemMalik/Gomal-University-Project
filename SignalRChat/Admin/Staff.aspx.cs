using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRChat.Admin
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LinkButton lbinsertStaff = new LinkButton();
            lbinsertStaff.Click += new EventHandler(lbinsertStaff_Click);
        }
        protected void lbinsertStaff_Click(object sender, EventArgs e)
        {
            StaffDataSource.InsertParameters["staff_name"].DefaultValue =
            ((TextBox)GridView2.FooterRow.FindControl("txtStaffName")).Text;

            StaffDataSource.InsertParameters["designation"].DefaultValue =
                ((DropDownList)GridView2.FooterRow.FindControl("DropDownList4")).SelectedItem.ToString();

            StaffDataSource.InsertParameters["email"].DefaultValue =
                ((TextBox)GridView2.FooterRow.FindControl("txtStaffEmail")).Text;

            StaffDataSource.InsertParameters["dep_id"].DefaultValue =
                ((DropDownList)GridView2.FooterRow.FindControl("DropDownList1")).SelectedValue;

            StaffDataSource.Insert();
        }
    }
}