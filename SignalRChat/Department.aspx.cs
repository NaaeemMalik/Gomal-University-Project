using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SignalRChat
{
    public partial class Department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Request.QueryString["display"] == "hide")
            {
                MyDiv.CssClass = "show";
                HyperLink1.NavigateUrl = "department.aspx?display=show#academics";
            }
            else if (Request.QueryString["display"] != "show")
            {
                MyDiv.CssClass = "hide";
                HyperLink1.NavigateUrl = "department.aspx?display=hide#academics";
            }


            if (Request.QueryString["displaybs"] == "hidebsbio")
            {
                Panel1.CssClass = "show";
                HyperLink2.NavigateUrl = "department.aspx?displaybs=showbsbio#academics";
            }
            else if (Request.QueryString["displaybs"] != "hidebsbio")
            {
                Panel1.CssClass = "hide";
                HyperLink2.NavigateUrl = "department.aspx?displaybs=hidebsbio#academics";
            }



            if (Request.QueryString["displaymp"] == "hidemp")
            {
                Panel2.CssClass = "show";
                HyperLink3.NavigateUrl = "department.aspx?displaymp=showmp#academics";
            }
            else if (Request.QueryString["displaymp"] != "hidemp")
            {
                Panel2.CssClass = "hide";
                HyperLink3.NavigateUrl = "department.aspx?displaymp=hidemp#academics";
            }



        }
  
    }
}