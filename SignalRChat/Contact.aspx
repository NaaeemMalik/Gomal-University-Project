<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true"
    CodeFile="Contact.aspx.cs" Inherits="SignalRChat.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container reveal-body">
        <div class="row">
            <div class="col m6 s12">
                <div class="input-field">
                    <asp:TextBox ID="TextBox1" Cssclass="validate" runat="server"></asp:TextBox>
                   
                    <label for="first_name">
                        Subject</label>
                </div>
                <div class="input-field">
                    <asp:TextBox ID="TextBox2"  Cssclass="validate" runat="server"></asp:TextBox>
                   
                    <label for="first_name">
                        Email</label>
                </div>
                <div class="input-field">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Cssclass="materialize-textarea" rows="4" cols=" "></asp:TextBox>
                    <label for="first_name">
                        Message</label>
                </div>
                <asp:Label ID="lblMsg" CssClass="color blue" runat="server" Text=""></asp:Label>
                <asp:Button ID="btnSend" runat="server" 
                    Cssclass="btn" 
                    Text="Send Message" onclick="btnSend_Click" />
            </div>
        </div>
        <div class="emp-space-3">
        </div>
        <div class="emp-space-3">
        </div>
    </div>
</asp:Content>
