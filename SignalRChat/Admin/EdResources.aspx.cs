using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;

namespace SignalRChat.Admin
{
    public partial class EdResources : System.Web.UI.Page
    {
        UploadBook ub = new UploadBook();
        Helper helper = new Helper();
        string ID_Generated;


        void delete(int GridBookID, string GridBookURL, string GridImageURL)
        {
            ub.get_BookID = GridBookID;
            ub.delete();

            //below code is used to delete/remove books and concerned image from server side

            string fileName = Server.MapPath("~/Books/" + GridBookURL);
            if (System.IO.File.Exists(fileName))
            {
                System.IO.File.Delete(fileName);            //remove book
            }
            fileName = Server.MapPath(GridImageURL);
            if (System.IO.File.Exists(fileName))
            {
                System.IO.File.Delete(fileName);            //remove image
            }
        }
        private string GetBookExtension()
        {
            string fname, ext = "";
            if (UploadImage.HasFile)
            {
                fname = uploadFile.PostedFile.FileName;
                ext = fname.Substring(fname.LastIndexOf("."));
                ext = ext.ToLower();
            }
            return ext;
        }
        private string GetFileTypeByExtension(string extension)
        {
            switch (extension.ToLower())
            {
                case ".doc":
                case ".docm":
                case ".docx":
                case ".dot":
                case ".dotx":
                case ".dotm":
                    return ("Microsoft Word Document");
                case ".xls":
                case ".xlsx":
                case ".xlsm":
                case ".xlsb":
                    return ("Microsoft Excel Document");
                case ".txt":
                    return ("Text Document");
                case ".pdf":
                    return ("Pdf Document");
                case ".zip":
                    return ("WinZip Document");
                case ".pps":
                case ".ppt":
                case ".pptx":
                case ".ppsx":
                    return ("PowerPoint Document");
                case ".accdb":
                case ".pub":
                    return ("Microsoft Office Document");
                default:
                    return ("Unknown");
            }
        }
        void ApproveBlocked()
        {
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books where BookID=" + Session["GridBookID"]);
            ub.get_BookID = Convert.ToInt32(dt.Rows[0]["BookID"]);
            ub.get_BookSize = dt.Rows[0]["BookSize"].ToString();
            ub.get_BookType = dt.Rows[0]["BookType"].ToString();
            ub.get_BookURL = dt.Rows[0]["BookURL"].ToString();
            ub.get_ImageURL = dt.Rows[0]["ImageURL"].ToString();
            string status = dt.Rows[0]["BookStatus"].ToString();
            if (status == "Approved")
            {
                ub.get_BookStatus = "Blocked";
            }
            else
            {
                ub.get_BookStatus = "Approved";
            }
            ub.update();
        }
        private void Upload_MyFiles()
        {
            if (uploadFile.HasFile)
            {
                uploadFile.PostedFile.SaveAs(Server.MapPath("~/Books/") + uploadFile.FileName);
            }
            string fname, serpath, fid, newname, New_Image, ext = "";
            if (UploadImage.HasFile)
            {
                fname = UploadImage.PostedFile.FileName;
                ext = fname.Substring(fname.LastIndexOf("."));
                ext = ext.ToLower();
                if (ext == ".jpg" || ext == ".jpeg" || ext == ".png")
                {
                    fid = Guid.NewGuid().ToString();
                    ID_Generated = fid + ext;
                    newname = "ConstantImage" + ext;
                    serpath = Path.Combine(Server.MapPath("BooksImage"), newname);
                    New_Image = Path.Combine(Server.MapPath("BooksImage"), ID_Generated);
                    UploadImage.SaveAs(New_Image);
                    UploadImage.SaveAs(serpath);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Sorry only Images are Allowed');", true);
                }
            }
        }
        void insert(string ImageType)
        {
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books where BookURL='" + uploadFile.FileName + "'");
            if (dt.Rows.Count > 0)
            {
                lblerror.Text = "This Book Already Exists";
                lblerror.ForeColor = Color.Red;
            }
            else
            {
                ub.get_BookURL = uploadFile.FileName;
                ub.get_ImageURL = "~/Admin/BooksImage/" + ID_Generated;
                ub.get_BookType = ImageType;
                ub.get_BookStatus = "Approved";
                Decimal fileSize = uploadFile.FileContent.Length;
                Decimal b = fileSize / 1024;
                ub.get_BookSize = b + " kb";
                ub.insert();
                lblerror.Text = "Successfully Saved";
                lblerror.ForeColor = Color.Green;
            }
        }
        void SearchBook()
        {
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books where BookURL like '%" + txtsearch.Text + "%'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        void load_gridview()
        {
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books where BookURL='" + uploadFile.FileName + "'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        void load_gridview_All()
        {
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books order by BookURL asc");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        void clear()
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            lblerror.Text = "";
            btnUpload.Text = "Upload";
        }
        void load_DetailView()
        {
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books where BookID=" + Session["GridBookID"]);
            DetailsView1.DataSource = dt;
            DetailsView1.DataBind();
            Panel1.Visible = false;
            Panel2.Visible = true;
            Image1.ImageUrl = dt.Rows[0]["ImageURL"].ToString();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                load_gridview_All();
            }
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SearchBook();
        }
        protected void btnShowAll_Click(object sender, EventArgs e)
        {
            load_gridview_All();
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            Upload_MyFiles();
            string BookExt = GetBookExtension();
            string BookType = GetFileTypeByExtension(BookExt);
            if (BookExt == ".pdf")
            {
                if (BookType == "Unknown")
                {
                    insert(BookExt);
                }
                else
                {
                    insert(BookType);
                }
            }
            else
            {
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Only PDF files are allowed...!');", true);
                lblerror.Text = "Only PDF files are allowed...!";
                lblerror.ForeColor = Color.Red;
                return;
            }
            clear();
            load_gridview_All();
            lblerror.Text = "Data Successfully Uploaded";
            lblerror.ForeColor = Color.Green;
        }


        //___________________________________________________       GRIDVIEW EVENTS       __________________________________________________________

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)      //Approved or Blocked
        {
            try
            {
                int index = Convert.ToInt32(e.CommandArgument);  // determine Gv index
                GridViewRow selectedRow = GridView1.Rows[index];  // get selected row
                Session["GridBookID"] = selectedRow.Cells[0].Text;
                if (e.CommandName == "isActive")
                {
                    ApproveBlocked();
                    load_gridview_All();
                    clear();
                }
                if (e.CommandName == "MyDetail")
                {
                    load_DetailView();
                }
            }
            catch { }
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)                    //Delete(Event)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //For Confirmation of Deleting_Record
                string item = e.Row.Cells[2].Text;
                foreach (LinkButton button in e.Row.Cells[5].Controls.OfType<LinkButton>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you realy want to Delete Book --> " + item + " ?')){ return false; };";
                    }
                }
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind(); GridView1.PageIndex = e.NewPageIndex;
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
        protected void btnBack_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)                  //Delete(Now Deleting)
        {
            int GridBookID = Convert.ToInt32(GridView1.Rows[e.RowIndex].Cells[0].Text);
            DataTable dt = new DataTable();
            dt = helper.PlaneQuery("select * from Tbl_Books where BookID=" + GridBookID);
            string GridImageURL = dt.Rows[0]["ImageURL"].ToString();
            string GridBookURL = GridView1.Rows[e.RowIndex].Cells[2].Text;
            delete(GridBookID, GridBookURL, GridImageURL);
            load_gridview_All();

        }
    }
}