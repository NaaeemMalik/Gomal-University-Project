﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SignalRChat.khan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <link type="text/css" rel="stylesheet" href="Css/ChatStyle.css" />
    <link rel="stylesheet" href="/Css/JQueryUI/themes/base/jquery.ui.all.css" />


    <!--Script references. -->

    <!--Reference the jQuery library. -->
    <script src="/Scripts/jquery-1.8.2.min.js"></script>

    <script src="/Scripts/ui/jquery.ui.core.js"></script>
    <script src="/Scripts/ui/jquery.ui.widget.js"></script>
    <script src="/Scripts/ui/jquery.ui.mouse.js"></script>
    <script src="/Scripts/ui/jquery.ui.draggable.js"></script>
    <script src="/Scripts/ui/jquery.ui.resizable.js"></script>



    <!--Reference the SignalR library. -->
    <script src="/Scripts/jquery.signalR-1.0.0.js"></script>

    <!--Reference the autogenerated SignalR hub script. -->
    <script src="/signalr/hubs"></script>

    <script type="text/javascript">

        
          
        $(function () {

            setScreen(false);

            // Declare a proxy to reference the hub. 
            var chatHub = $.connection.chatHub;

            registerClientMethods(chatHub);

            // Start Hub
            $.connection.hub.start().done(function () {

                registerEvents(chatHub)

            });

        });

        function setScreen(isLogin) {

                        if (!isLogin) {

                $("#divChat").hide();
                $("#divLogin").show();
            }
            else {

                $("#divChat").show();
                $("#divLogin").hide();
            }

        }

        function registerEvents(chatHub) {

                $("#btnStartChat").click(function () {     

                        var name = $('#txtNickName').val();
                        if (name.length > 0) {
                            chatHub.server.connect(name);
                        }
                        else {
                            alert("Please enter name");
                        }
                    });

            //send1
                $('#btnSendMsg').click(function () {

                    var msg = $("#txtMessage").val();
                    if (msg.length > 0) {

                        var userName = $('#hdUserName').val();
                        chatHub.server.sendMessageToAll(userName, msg);
                        $("#txtMessage").val('');
                    }
                });
            //load1
                $('#btnLoadMsg').click(function () {
                    var ddl = document.getElementById("SelectChat");
                    chatHub.server.sendMessageToAll("select " + ddl.value + " * from Tbl_Chatting order by DateTime desc");
                });

                $('#form1').unload(function () {
                    alert('form load event');
                });
                


            $("#txtNickName").keypress(function (e) {
                if (e.which == 13) {
                    $("#btnStartChat").click();
                }
            });

            $("#txtMessage").keypress(function (e) {
                if (e.which == 13) {
                    $('#btnSendMsg').click();
                }
            });


        }

        function registerClientMethods(chatHub) {

            // Calls when user successfully logged in
            chatHub.client.onConnected = function (id, userName, allUsers, messages) {

                setScreen(true);

                $('#hdId').val(id);
                $('#hdUserName').val(userName);
                $('#spanUser').html(userName);

                // Add All Users
                for (i = 0; i < allUsers.length; i++) {

                    AddUser(chatHub, allUsers[i].ConnectionId, allUsers[i].UserName);
                }

                // Add Existing Messages
                for (i = 0; i < messages.length; i++) {

                    AddMessage(messages[i].UserName, messages[i].Message);
                }
                
            }

            // On New User Connected
            chatHub.client.onNewUserConnected = function (id, name) {

                AddUser(chatHub, id, name);
            }


            // On User Disconnected
            chatHub.client.onUserDisconnected = function (id, userName) {

                $('#' + id).remove();

                var ctrId = 'private_' + id;
                $('#' + ctrId).remove();


                var disc = $('<div class="disconnect">"' + userName + '" logged off.</div>');

                $(disc).hide();
                $('#divusers').prepend(disc);
                $(disc).fadeIn(200).delay(2000).fadeOut(200);

            }

            //3
            chatHub.client.messageReceived = function (userName, message) {
                AddMessage(userName, message);
            }


            chatHub.client.sendPrivateMessage = function (windowId, fromUserName, message) {

                var ctrId = 'private_' + windowId;


                if ($('#' + ctrId).length == 0) {

                    createPrivateChatWindow(chatHub, windowId, ctrId, fromUserName);

                }

                $('#' + ctrId).find('#divMessage').append('<div class="message"><span class="userName">' + fromUserName + '</span>: ' + message + '</div>');

                // set scrollbar
                var height = $('#' + ctrId).find('#divMessage')[0].scrollHeight;
                $('#' + ctrId).find('#divMessage').scrollTop(height);

            }

        }

        function AddUser(chatHub, id, name) {

            var userId = $('#hdId').val();

            var code = "";

            if (userId == id) {

                code = $('<div class="loginUser">' + name + "</div>");

            }
            else {

                code = $('<a id="' + id + '" class="user" >' + name + '<a>');

                $(code).dblclick(function () {

                    var id = $(this).attr('id');

                    if (userId != id)
                        OpenPrivateChatWindow(chatHub, id, name);

                });
            }

            $("#divusers").append(code);

        }

        //4
        function AddMessage(userName, message) {
            $('#divChatWindow').append('<div class="message"><span class="userName">' + userName + '</span> : ' + message + '</div>');
            $('#divChatWindow').removeData();
            var height = $('#divChatWindow')[0].scrollHeight;
            $('#divChatWindow').scrollTop(height);
        }

        function OpenPrivateChatWindow(chatHub, id, userName) {

            var ctrId = 'private_' + id;

            if ($('#' + ctrId).length > 0) return;

            createPrivateChatWindow(chatHub, id, ctrId, userName);

        }

        function createPrivateChatWindow(chatHub, userId, ctrId, userName) {

            var div = '<div id="' + ctrId + '" class="ui-widget-content draggable" rel="0">' +
                       '<div class="header">' +
                          '<div  style="float:right;">' +
                              '<img id="imgDelete"  style="cursor:pointer;" src="/Images/delete.png"/>' +
                           '</div>' +

                           '<span class="selText" rel="0">' + userName + '</span>' +
                       '</div>' +
                       '<div id="divMessage" class="messageArea">' +

                       '</div>' +
                       '<div class="buttonBar">' +
                          '<input id="txtPrivateMessage" class="msgText" type="text"   />' +
                          '<input id="btnSendMessage" class="submitButton button" type="button" value="Send"   />' +
                       '</div>' +
                    '</div>';

            var $div = $(div);

            // DELETE BUTTON IMAGE
            $div.find('#imgDelete').click(function () {
                $('#' + ctrId).remove();
            });

            // Send Button event
            $div.find("#btnSendMessage").click(function () {

                $textBox = $div.find("#txtPrivateMessage");
                var msg = $textBox.val();
                if (msg.length > 0) {

                    chatHub.server.sendPrivateMessage(userId, msg);
                    $textBox.val('');
                }
            });

            // Text Box event
            $div.find("#txtPrivateMessage").keypress(function (e) {
                if (e.which == 13) {
                    $div.find("#btnSendMessage").click();
                }
            });

            AddDivToContainer($div);

        }

        function AddDivToContainer($div) {
            $('#divContainer').prepend($div);

            $div.draggable({

                handle: ".header",
                stop: function () {

                }
            });

            ////$div.resizable({
            ////    stop: function () {

            ////    }
            ////});

        }
        function toggle_visibility(id) {
            if (e.style.display == 'block')
                e.style.display = 'none';
            else
                e.style.display = 'block';
        }
    </script>
</head>
<body style="background-image:url(Images/bg.jpg)">
    <form id="form1" runat="server">
        <div id="header">
            Group Chat Room
        </div>
        <br />
        <br />
        <br />

        <asp:Image ID="Image1" runat="server" Height="53px" ImageUrl="~/Images/manimg.png" Width="58px" />
            <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="False"></asp:Label>



        <div id="divContainer">
            <div id="divLogin" class="login">
                <div>
                    <asp:Label ID="Label2" runat="server" Text="Note : " Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    Your Chatting Group Name is :<br /><br />
                    <asp:TextBox ID="txtNickName" runat="server" Width="236px" ReadOnly="True"></asp:TextBox>
                </div>
                <div id="divButton">
                    <input id="btnStartChat" type="button" class="submitButton" value="     ok      " />
                </div>
            </div>
            <div id="divChat" class="chatRoom">
                <div class="title">
                    Welcome to Chat Room [<span id='spanUser'></span>]
                <a href="Login.aspx" style="float: right">LogOut</a>

                </div>
                <div class="content">
                    <div id="divChatWindow" class="chatWindow">
                        <asp:Label ID="Label1" runat="server" Text="Select Chatting : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <select id="SelectChat" onchange="SelectChatting(this.id)" style="width: 172px; margin-top: 5px; height: 17px;">
                            <option value=" top 10 ">Top 10</option>
                            <option value=" top 20 ">Top 20</option>
                            <option value=" top 30 ">Top 30</option>
                            <option value=" top 40 ">Top 40</option>
                            <option value=" top 50 ">Top 50</option>
                            <option value="">All</option>
                        </select>
                    <input id="btnLoadMsg" type="button" value="Load" style="width: 52px; height: 18px; text-align:center" />

                        <%--Chatting body here--%>

                    </div>
                    <div id="divusers" class="users">
                    </div>
                </div>
                <div class="messageBar">
                    <input class="textbox" type="text" id="txtMessage" />
                    <input id="btnSendMsg" type="button" value="Send" class="submitButton" />
                </div>
            </div>

            <input id="hdId" type="hidden" />
            <input id="hdUserName" type="hidden" />
        </div>
    </form>
</body>
</html>