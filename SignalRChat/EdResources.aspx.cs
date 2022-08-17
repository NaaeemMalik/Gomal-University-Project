using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace SignalRChat
{
    public partial class EdResources : System.Web.UI.Page
    {
        Helper helper = new Helper();

        private void ReadBook(string GridBookURL)
        {
            string FilePath = Server.MapPath("~/Books/" + GridBookURL);
            string ext;
            ext = GridBookURL.Substring(GridBookURL.LastIndexOf(".") + 1);
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(FilePath);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/" + ext;
                //Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        void SearchBook()
        {
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books where BookURL like '%" + txtsearch.Text + "%' and BookStatus='Approved'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        void load_gridview_All()
        {
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books where BookStatus='Approved' order by BookURL asc");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        void load_DetailView()
        {
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books where BookStatus='Approved' and BookID=" + Session["GridBookID"]);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
            Panel2.Visible = false;
            Panel3.Visible = true;
            Image1.ImageUrl = dt.Rows[0]["ImageURL"].ToString();
        }
        private void DownloadFile(GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Books/") + e.CommandArgument);
                Response.End();
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;   
            if (!IsPostBack)
            {
                load_gridview_All();
            }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            SearchBook();
        }

        protected void BtnShowAll_Click(object sender, EventArgs e)
        {
            load_gridview_All();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
            if (txtsearch.Text == "")
            {
                load_gridview_All();
            }
            else
            {
                SearchBook();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            DownloadFile(e);
            try
            {
                int index = Convert.ToInt32(e.CommandArgument);  // determine Gv index
                GridViewRow selectedRow = GridView1.Rows[index];  // get selected row
                Session["GridBookID"] = selectedRow.Cells[0].Text;
                if (e.CommandName == "MyDetail")
                {
                    load_DetailView();
                }
                if (e.CommandName == "MyReadBook")
                {
                    DataTable dt = new DataTable();
                    dt = helper.PlaneQuery("select * from Tbl_Books where BookStatus='Approved' and BookID=" + Session["GridBookID"]);
                    string BookURL = dt.Rows[0]["BookURL"].ToString();
                    ReadBook(BookURL);
                }
            }
            catch { }
        }
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
    }
}