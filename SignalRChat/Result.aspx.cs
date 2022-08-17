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
    public partial class Result : System.Web.UI.Page
    {
        Connect db = new Connect();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString.Count != 0 || rno.Text.Length == 0)
            { 
                rno.Text = Request.QueryString["rno"];
                ddlsem.SelectedIndex = 1;
                ddlprogram.SelectedIndex = 1;
                btnSearch_Click(sender, e);
            }
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            {
                if (rno.Text.Length==0)
                {
                    rno.Text = "1";
                }

                string query = @"select Subject1,Subject2,Subject3,Subject4,s1m,s2m,s3m,s4m,(s1m+s2m+s3m+s4m) as ObtainMarks,
case when (s1m+s2m+s3m+s4m)/400*100>=60 and (s1m+s2m+s3m+s4m)/400*100<70 then 2
when (s1m+s2m+s3m+s4m)/400*100>=70 and (s1m+s2m+s3m+s4m)/400*100<80 then 3
when (s1m+s2m+s3m+s4m)/400*100>=80 then 4
else 1 end as GPA  from TBL_Marks where semester=" + ddlsem.SelectedValue + " and stdRollNo=" + rno.Text;

                SqlCommand command = new SqlCommand(query, db.ActiveCon());
                //command.Parameters.AddWithValue("@zip", "india");
                // int result = command.ExecuteNonQuery();
                
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        s1.Text = (reader.GetValue(0)).ToString();
                        s2.Text = (reader.GetValue(1)).ToString();
                        s3.Text = (reader.GetValue(2)).ToString();
                        s4.Text = (reader.GetValue(3)).ToString();

                        m1.Text = (reader.GetValue(4)).ToString();
                        m2.Text = (reader.GetValue(5)).ToString();
                        m3.Text = (reader.GetValue(6)).ToString();
                        m4.Text = (reader.GetValue(7)).ToString();

                        lobtm.Text =(reader.GetValue(8)).ToString();
                        lper.Text = (reader.GetValue(9)).ToString(); 

                    }
                }

                //lblMsg.Text = res.ToString() + "\n" + res;

            }

        }
    }
}