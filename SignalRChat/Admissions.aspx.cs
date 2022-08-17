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
    public partial class Admissions : System.Web.UI.Page
    {
        Connect con = new Connect();

        protected void Page_Load(object sender, EventArgs e)
        {
            foo.Visible = false;
            fool.Visible = false;
            HyperLink1.NavigateUrl = "#academics";


        }

        string fname, lname, cnic, contact, email, domicile, nationality, religion, address;
        string hyr, hmrks, hbrd, inyr, inmrks, inbrd, bayr, bamrks, babrd, progtype;
        int progid;

        protected void btnPersonal_Click(object sender, EventArgs e)
        {
            foo.Visible = true;
            fool.Visible = true;

            fname = txtfname.Text;
            lname = txtlname.Text;
            cnic = txtcnic.Text;
            contact = txtcontact.Text;
            email = txtEmail.Text;
            domicile = ddlDomicile.SelectedItem.ToString();
            nationality = txtnationality.Text;
            religion = txtreligion.Text;
            address = txtAddress.Text;

        }
        protected void btnAcademic_Click(object sender, EventArgs e)
        {
            fname = txtfname.Text;
            lname = txtlname.Text;
            cnic = txtcnic.Text;
            contact = txtcontact.Text;
            email = txtEmail.Text;
            domicile = ddlDomicile.SelectedItem.ToString();
            nationality = txtnationality.Text;
            religion = txtreligion.Text;
            address = txtAddress.Text;

            hyr = txtHYear.Text;
            hmrks = txtHMarks.Text;
            hbrd = txtHBoard.Text;
            inyr = txtInterYear.Text;
            inmrks = txtInterMarks.Text;
            inbrd = txtInterBoard.Text;
            bayr = txtBachYear.Text;
            bamrks = txtBachMarks.Text;
            babrd = txtBachBoard.Text;
            progtype = ddlProgType.SelectedItem.ToString();
            progid = Int32.Parse(DropDownList1.SelectedValue);


            string query = @"insert into student_admission_tbl (std_fname, std_lname, std_cnic, std_contact, std_email, std_domicile, std_nationality, std_religion, std_address, std_hssc_year, std_hssc_marks, std_hssc_board ,std_inter_year, std_inter_marks, std_inter_board, std_bach_year, std_bach_marks, std_bach_board, prog_type, std_program_id)
            values('" + fname + "', '" + lname + "', '" + cnic + "', '" + contact + "', '" + email + "', '" + domicile + "', '" + nationality + "', '" + religion + "', '" + address + "', '" + hyr + "', '" + hmrks + "', '" + hbrd + "', '" + inyr + "', '" + inmrks + "', '" + inbrd + "', '" + bayr + "', '" + bamrks + "', '" + babrd + "','" + progtype + "', '" + progid + "')";

            SqlCommand cmd = new SqlCommand(query, con.ActiveCon());
            cmd.ExecuteNonQuery();
            
            lblMsgAdmsn.Text = "Admission Request Completed !!";
        }
    }
}