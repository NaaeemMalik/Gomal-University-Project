<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeBehind="StudentDiarys.aspx.cs" Inherits="SignalRChat.StudentDiarys" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="input-field col s12">
                <asp:TextBox ID="txtcomment" CssClass="materialize-textarea" runat="server" TextMode="MultiLine"></asp:TextBox>
                <label for="textarea1">
                    Write your comments here ....!
                </label>
            </div>
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn waves-effect waves-light fa fa-edit left"
                Text="Post" OnClick="btnSubmit_Click" />
            <asp:Label ID="lblMsg" runat="server" CssClass="red-text" Font-Bold="True"></asp:Label>
        </div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource12">
            <ItemTemplate>
                <div class="col m6 s6">
                    <h4 class="blue-text">
                        <asp:Label ID="lblname" runat="server" Text='<%#Eval("name") %>'></asp:Label><br />
                    </h4>
                    <asp:Label ID="lblcomment" runat="server" Text='<%# Eval("comment") %>'></asp:Label>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server"
            ConnectionString="<%$ ConnectionStrings:aspString %>"
            SelectCommand="SELECT * FROM [tbl_diary] ORDER BY [id] DESC"></asp:SqlDataSource>
    </div>
    <div class="emp-space-3">
    </div>
    <div class="emp-space-3">
    </div>
</asp:Content>
