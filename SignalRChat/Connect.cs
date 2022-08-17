using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace SignalRChat
{
    public class Connect
    {
        public SqlConnection ActiveCon()
        {
            string connection = ConfigurationManager.ConnectionStrings["FYPConnectionString"].ToString();
            SqlConnection con = new SqlConnection(connection);
            if (con.State == System.Data.ConnectionState.Closed)
            {
                con.Open();
            }
            return con;
        }
    }
}