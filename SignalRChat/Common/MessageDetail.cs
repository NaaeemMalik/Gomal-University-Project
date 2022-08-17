using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SignalRChat.Common
{
    public class MessageDetail
    {
        Helper helper = new Helper();
        string UserName, DateTime, Message;

        public string get_UserName
        {
            get { return UserName; }
            set { UserName = value; }
        }
        public string get_Message
        {
            get { return Message; }
            set { Message = value; }
        }
        public string get_DateTime
        {
            get { return DateTime; }
            set { DateTime = value; }
        }

        public void insert()
        {
            SqlParameter[] prm = new SqlParameter[3];
            prm[0] = new SqlParameter("@Message", Message);
            prm[1] = new SqlParameter("@UserName", UserName);
            prm[2] = new SqlParameter("@DateTime", DateTime);
            helper.Insert("SP_Chat_Insert", prm);
        }
        public DataTable PlaneQuery(string query)
        {
            return helper.PlaneQuery(query);
        }
    }
}