<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeBehind="EdResources.aspx.cs" Inherits="SignalRChat.EdResources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #divLeft {
            width: 350px;
            height: 450px;
            float: left;
        }

        #divRight {
            width: 250px;
            height: 450px;
            float: left;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">

        <center>
            <img class="responsive-img" src="images/b2.jpg" alt="Alternate Text" style="width: 100%; height: 250px" />
        </center>
    </div>
    <div class="container">
        <div class="row">
            <div class="col m3" id="Depart">
                <ul class="tabs">
                    <li class="tab col m12 white-text active"><a class="white-text" href="#Books">Soft Books</a></li>
                    <%--<li class="tab col m12 white-text"><a class="" href="#uos_3"></a></li>--%>
                </ul>
            </div>
            <div id="Books" class="col m9">
                <div class="input-field col m6">
                    <asp:Panel ID="Panel1" runat="server" Width="500px">
                        <asp:TextBox ID="txtsearch" class="validate" placeholder="Enter Book Name" runat="server"></asp:TextBox>
                        <asp:Button ID="BtnSearch" CssClass=" left btn waves-effect waves-light primary-color" runat="server" Text="Search" OnClick="BtnSearch_Click" />
                        <asp:Button ID="BtnShowAll" CssClass=" left btn waves-effect waves-light primary-color" runat="server" Text="Show All" OnClick="BtnShowAll_Click" />
                    </asp:Panel>
                    <%--my gridview here--%>
                    <br />
                    <br />
                    <br />

                    <asp:Panel ID="Panel2" runat="server">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" target="_blank" OnRowCommand="GridView1_RowCommand" PageSize="2" Width="654px">
                            <Columns>
                                <asp:BoundField DataField="BookID" HeaderText="Book ID" />
                                <asp:ImageField HeaderText="Image" DataImageUrlField="ImageURL">
                                    <ControlStyle Height="180px" Width="140px" />
                                    <ItemStyle Height="174px" Width="134px" />
                                </asp:ImageField>
                                <asp:TemplateField HeaderText="Download File">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("BookURL") %>' CommandName="Download" Text='<%# Eval("BookURL") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:ButtonField CommandName="MyReadBook" HeaderText="Read Me" Text="Read" />
                                <asp:ButtonField CommandName="MyDetail" HeaderText="Details" Text="View" />
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                            <PagerSettings Mode="NextPrevious" />
                            <PagerStyle BackColor="#C6C3C6" Font-Bold="True" Font-Overline="False" Font-Size="30px" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#594B9C" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#33276A" />
                        </asp:GridView>
                    </asp:Panel>
                    <div style=" width: 800px; height: 100px;">
                        <asp:Panel ID="Panel3" runat="server" Height="513px">
                            <div>
                                <div id="divLeft">
                                    <asp:Image ID="Image1" runat="server" Height="450px" Width="340px" />
                                    <br />
                                </div>
                                <div id="divRight">
                                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="244px" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="Gainsboro" />
                                        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                        <Fields>
                                            <asp:BoundField DataField="BookID" HeaderText="Book ID" />
                                            <asp:BoundField DataField="BookURL" HeaderText="Book Name" />
                                            <asp:BoundField DataField="BookType" HeaderText="Book Type" />
                                            <asp:BoundField DataField="BookSize" HeaderText="Size (Bytes)" />
                                        </Fields>
                                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    </asp:DetailsView>
                                    <br />
                                    <br />
                                    <asp:LinkButton ID="btnBack" runat="server" OnClick="btnBack_Click">  &lt;  Back</asp:LinkButton>
                                </div>
                            </div>
                    </div>
                    <br />
                    <br />
                    </asp:Panel>
                </div>
            </div>
        </div>

    </div>
    <div class="emp-space-3">
    </div>
    <div class="emp-space-3">
    </div>
    <div class="emp-space-3">
    </div>

</asp:Content>
