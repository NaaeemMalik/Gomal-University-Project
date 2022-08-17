using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

//********************************************************

public class Helper
{
    static string connection = ConfigurationManager.ConnectionStrings["FYPConnectionString"].ToString();
    SqlConnection con = new SqlConnection(connection);


    //_____________________________________________________________ INSERT SECTION_______________________________________________________

    public void Insert(string query, SqlParameter[] prmtr)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.Parameters.AddRange(prmtr);
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    //_____________________________________________________________ SELECT SECTION_______________________________________________________

    public DataTable PlaneQuery(string query)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = query;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    //_____________________________________________________________ UPDATE SECTION_______________________________________________________

    public DataTable Update(string query, SqlParameter[] prmtr)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.Parameters.AddRange(prmtr);
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    //_____________________________________________________________ DELETE SECTION_______________________________________________________

    public DataTable Delete(string query, SqlParameter[] prmtr)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.Parameters.AddRange(prmtr);
        cmd.CommandText = query;
        cmd.CommandType = CommandType.StoredProcedure;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
}