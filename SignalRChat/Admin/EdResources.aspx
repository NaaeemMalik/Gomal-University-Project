<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeBehind="EdResources.aspx.cs" Inherits="SignalRChat.Admin.EdResources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #divLeft {
            width: 350px;
            height: 450px;
            float: left;
        }

        #div_body {
            margin-left:400px;
            margin-top:-150px;
        }

        #divRight {
            width: 250px;
            height: 450px;
            float: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="div_body">
        
<h4>Admin End Educational Resources</h4>

        <asp:Panel ID="Panel1" runat="server">
        <asp:TextBox ID="txtsearch" class="validate" placeholder="Enter Book Name" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSearch" CausesValidation="False" runat="server" CssClass=" left btn waves-effect waves-light primary-color" Text="Search" OnClick="btnSearch_Click" />
            &nbsp;&nbsp;
        <asp:Button ID="btnShowAll" CausesValidation="False" runat="server" CssClass=" left btn waves-effect waves-light primary-color" Text="Show All" OnClick="btnShowAll_Click" />
            <br />
            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="Select Book Please :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="uploadFile" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uploadFile" Font-Size="20pt" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Select Book Image :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="UploadImage" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UploadImage" Font-Size="20pt" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            &nbsp;
            <asp:Button ID="btnUpload" runat="server" CssClass=" left btn waves-effect waves-light primary-color" OnClick="btnUpload_Click" Text="Upload" Width="143px" />
            <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" GridLines="None" OnRowCommand="GridView1_RowCommand" Width="597px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="2" OnRowDeleting="GridView1_RowDeleting" OnRowDataBound="GridView1_RowDataBound" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="Book ID" />
                    <asp:ImageField HeaderText="Image" DataImageUrlField="ImageURL">
                        <ControlStyle Height="180px" Width="140px" />
                        <ItemStyle Height="174px" Width="134px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="BookURL" HeaderText="File Name" />
                    <asp:ButtonField HeaderText="Details" Text="View" CommandName="MyDetail" />
                    <asp:ButtonField HeaderText="Status" DataTextField="BookStatus" Text="Change" CommandName="isActive" />
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Action" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#009688" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#009688"  Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" Font-Size="30px" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>

        </asp:Panel>

        <asp:Panel ID="Panel2" runat="server" Height="513px">
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
                            <asp:BoundField DataField="BookSize" HeaderText="Size" />
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
        </asp:Panel>
    </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
</asp:Content>