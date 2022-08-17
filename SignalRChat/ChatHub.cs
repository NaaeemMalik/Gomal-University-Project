using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using SignalRChat.Common;
using System.Data;

namespace SignalRChat
{
    public class ChatHub : Hub
    {

        MessageDetail msg = new MessageDetail();
        #region Data Members

        static List<UserDetail> ConnectedUsers = new List<UserDetail>();
        static List<MessageDetail> CurrentMessage = new List<MessageDetail>();

        #endregion

        #region Methods

        public void Connect(string userName)
        {
            var id = Context.ConnectionId;


            if (ConnectedUsers.Count(x => x.ConnectionId == id) == 0)
            {
                ConnectedUsers.Add(new UserDetail { ConnectionId = id, UserName = userName });

                // send to caller
                Clients.Caller.onConnected(id, userName, ConnectedUsers, CurrentMessage);

                // send to all except caller client
                Clients.AllExcept(id).onNewUserConnected(id, userName);

            }

        }

        //load2
        public void SendMessageToAll(string my_Query)
        {
            DataTable dt = new DataTable();
            dt = msg.PlaneQuery(my_Query);
            if (dt.Rows.Count > 0)
            {
                for (int i = dt.Rows.Count - 1; i >= 0; i--)
                {
                    string userName = dt.Rows[i]["UserName"].ToString();
                    string message = dt.Rows[i]["Message"].ToString();
                    Clients.Caller.messageReceived(userName, message);
                }
            }
        }
        //send2
        public void SendMessageToAll(string userName, string message)
        {
            // store last 100 messages in cache
            AddMessaginSQL(userName, message);

            // Broad cast message
            Clients.All.messageReceived(userName, message);
        }

        public void SendPrivateMessage(string toUserId, string message)
        {

            string fromUserId = Context.ConnectionId;

            var toUser = ConnectedUsers.FirstOrDefault(x => x.ConnectionId == toUserId) ;
            var fromUser = ConnectedUsers.FirstOrDefault(x => x.ConnectionId == fromUserId);

            if (toUser != null && fromUser!=null)
            {
                // send to 
                Clients.Client(toUserId).sendPrivateMessage(fromUserId, fromUser.UserName, message); 

                // send to caller user
                Clients.Caller.sendPrivateMessage(toUserId, fromUser.UserName, message); 
            }

        }

        public override System.Threading.Tasks.Task OnDisconnected()
        {
            var item = ConnectedUsers.FirstOrDefault(x => x.ConnectionId == Context.ConnectionId);
            if (item != null)
            {
                ConnectedUsers.Remove(item);
                var id = Context.ConnectionId;
                Clients.All.onUserDisconnected(id, item.UserName);

            }

            return base.OnDisconnected();
        }

     
        #endregion

        #region private Messages

        //send3
        private void AddMessaginSQL(string userName, string message)
        {
            msg.get_UserName = userName;
            msg.get_Message = message;
            msg.get_DateTime = DateTime.Now.ToLongTimeString() + " - " + DateTime.Now.ToLongDateString();
            msg.insert();
        }
        #endregion
    }
}