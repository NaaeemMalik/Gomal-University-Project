<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="SignalRChat.Admin.Departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_BODY" runat="server">
<h4>Admin End Departments</h4>
    
         <%----------------------- this Department id ----------------------------%>
		    <div class="row section" id="Departments">
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="25" 
            ShowFooter="True" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" Width="750px" 
                    DataKeyNames="dep_id" DataSourceID="DepartDataSource" CellSpacing="2" 
                    ForeColor="Black">
               <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

               <%-- This is first column --%>

                <asp:TemplateField HeaderText="Dep ID" InsertVisible="False" 
                    SortExpression="dep_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("dep_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("dep_id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lblinsert" OnClick="lblinsert_Click" ValidationGroup="Enter"  runat="server">Enter Depart</asp:LinkButton>
                                
                    </FooterTemplate>
                </asp:TemplateField>

                               <%-- This is 2nd  column --%>

                <asp:TemplateField HeaderText="Dep Name" SortExpression="dep_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("dep_name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTextbox1" runat="server" ErrorMessage="Name is Required" ControlToValidate="TextBox1" Text="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("dep_name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" ValidationGroup="Enter" runat="server" ErrorMessage="Name is Required" ControlToValidate="txtName" Text="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>

                               <%-- This is 3rd column --%>

                <asp:TemplateField HeaderText="Dep Introduction" SortExpression="dep_intro">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("dep_intro") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTextbox2" runat="server" ErrorMessage="Intro is Required" ControlToValidate="TextBox2" Text="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("dep_intro") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtIntro" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvIntro" ValidationGroup="Enter" runat="server" ErrorMessage="Intro is Required" ControlToValidate="txtIntro" Text="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    
                </asp:TemplateField>

                               <%-- End--------------- --%>

            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="#009688" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
                <asp:SqlDataSource ID="DepartDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:aspString %>" 
                    DeleteCommand="DELETE FROM [tbl_department] WHERE [dep_id] = @dep_id" 
                    InsertCommand="INSERT INTO [tbl_department] ([dep_name], [dep_intro]) VALUES (@dep_name, @dep_intro)" 
                    SelectCommand="SELECT * FROM [tbl_department]" 
                    UpdateCommand="UPDATE [tbl_department] SET [dep_name] = @dep_name, [dep_intro] = @dep_intro WHERE [dep_id] = @dep_id">
                    <DeleteParameters>
                        <asp:Parameter Name="dep_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="dep_name" Type="String" />
                        <asp:Parameter Name="dep_intro" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="dep_name" Type="String" />
                        <asp:Parameter Name="dep_intro" Type="String" />
                        <asp:Parameter Name="dep_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
        <asp:ValidationSummary ValidationGroup="EnterDepart" ID="ValidationSummary1" ForeColor="Red" runat="server" />
        <asp:ValidationSummary  ID="ValidationSummary2" ForeColor="Red" runat="server" />
        <br />
	        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
