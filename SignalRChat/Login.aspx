<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SignalRChat.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:auto; margin-top:30px; padding:60px; border:1px solid; width:60%; ">
        <div class="input-field col s12 tooltipped" data-position="bottom" data-delay="50"
                            data-tooltip="Please enter your Email">
                            <i class="fa fa-edit prefix" aria-hidden="true"></i>
                            <asp:TextBox ID="txtEmail" CssClass="validate" runat="server"></asp:TextBox>
                            <label for="email">
                                Enter Email</label>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is Required"
                            ControlToValidate="txtEmail" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="input-field col s12 tooltipped" data-position="bottom" data-delay="50"
                            data-tooltip="Please enter your Password">
                            <i class="fa fa-key prefix" aria-hidden="true"></i>
                            <asp:TextBox ID="txtPassword" CssClass="validate" TextMode="Password" Font-Size="15" runat="server"></asp:TextBox>
                            <label for="icon-prefix">
                                Enter Password</label>
                                <asp:RequiredFieldValidator ID="rfvPass" runat="server" ErrorMessage="Password is Required"
                            ControlToValidate="txtPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
        <asp:Button ID="btnLogin" CssClass=" left btn waves-effect waves-light primary-color fa fa-user"
                            runat="server" Text="Sign In" onclick="btnLogin_Click" />
                        <asp:Label ID="lblMsg" runat="server" CssClass="red-text" 
                            Font-Bold="True"></asp:Label>
    </div>
</asp:Content>
