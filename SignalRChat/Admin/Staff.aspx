<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Staff.aspx.cs" Inherits="SignalRChat.Admin.Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_BODY" runat="server">
<h4>Admin End Staff</h4>
    
        <%----------------------- this is staff id ----------------------------%>
	    	<div id="Staff" class="col m12 padding-0">
                
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" DataKeyNames="staff_id" DataSourceID="StaffDataSource" 
                    Width="759px" ShowFooter="True" CellSpacing="2" ForeColor="Black">
                    <Columns>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:TemplateField HeaderText="Staff ID" InsertVisible="False" SortExpression="staff_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("staff_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lbinsertStaff" OnClick="lbinsertStaff_Click" ValidationGroup="EnterStaff" runat="server">Enter Staff</asp:LinkButton>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("staff_id") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="100px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Staff Name" SortExpression="staff_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtname" runat="server" Text='<%# Bind("staff_name") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="Name is Required"
                            ControlToValidate="txtname" Text="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtStaffName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvftrname" runat="server" ErrorMessage="Name is Required"
                            ControlToValidate="txtStaffName" ValidationGroup="EnterStaff" Text="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%# Bind("staff_name") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="150px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Designation" SortExpression="designation">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" CssClass="dropdown-button btn" runat="server"  SelectedValue='<%# Bind("designation") %>'>
                            <asp:ListItem>HOD</asp:ListItem>
                            <asp:ListItem>Chairman</asp:ListItem>
                            <asp:ListItem>Dean</asp:ListItem>
                            <asp:ListItem>Lecutrer</asp:ListItem>
                            <asp:ListItem>Clerk</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="DropDownList4" CssClass="dropdown-button btn" runat="server">
                        <asp:ListItem>HOD</asp:ListItem>
                            <asp:ListItem>Chairman</asp:ListItem>
                            <asp:ListItem>Dean</asp:ListItem>
                            <asp:ListItem>Lecutrer</asp:ListItem>
                            <asp:ListItem>Clerk</asp:ListItem>
                        </asp:DropDownList>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("designation") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="120px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="email">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtemail" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="Email is Required"
                            ControlToValidate="txtemail" Text="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtStaffEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvftremail" runat="server" ErrorMessage="Email is Required"
                            ControlToValidate="txtStaffEmail" Text="*" ValidationGroup="EnterStaff" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="200px" />
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="Department" SortExpression="email">
                    <EditItemTemplate>
                      
                        <asp:DropDownList ID="DropDownList5" runat="server" 
                            CssClass="dropdown-button btn" DataSourceID="ddl_Depart_DS" 
                            DataTextField="dep_name" DataValueField="dep_id" 
                            SelectedValue='<%# Bind("dep_id") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="ddl_Depart_DS" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:aspString %>" 
                            SelectCommand="SELECT * FROM [tbl_department]" 
                            DeleteCommand="DELETE FROM [tbl_department] WHERE [dep_id] = @dep_id" 
                            InsertCommand="INSERT INTO [tbl_department] ([dep_name], [dep_intro]) VALUES (@dep_name, @dep_intro)" 
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
                      
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList ID="DropDownList1" CssClass="dropdown-button btn" 
                            runat="server" DataSourceID="ddl_Department_DS" DataTextField="dep_name" 
                            DataValueField="dep_id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="ddl_Department_DS" runat="server" 
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
                    </FooterTemplate>
                    <ItemTemplate>
                       
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("dep_name") %>'></asp:Label>
                       
                    </ItemTemplate>
                    <HeaderStyle Width="200px" />
                </asp:TemplateField>
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
                <asp:ValidationSummary ValidationGroup="EnterStaff" ID="ValidationSummary3" ForeColor="Red" runat="server" />
        <asp:ValidationSummary  ID="ValidationSummary4" ForeColor="Red" runat="server" />
        <br />
		        <asp:SqlDataSource ID="StaffDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:aspString %>" 
                    DeleteCommand="DELETE FROM [tbl_Staff] WHERE [staff_id] = @staff_id" 
                    InsertCommand="INSERT INTO [tbl_Staff] ([dep_id], [email], [designation], [staff_name]) VALUES (@dep_id, @email, @designation, @staff_name)" 
                    SelectCommand="SELECT tbl_Staff.dep_id, tbl_Staff.email, tbl_Staff.designation, tbl_Staff.staff_name, tbl_Staff.staff_id, tbl_department.dep_name FROM tbl_Staff INNER JOIN tbl_department ON tbl_Staff.dep_id = tbl_department.dep_id" 
                    
                    UpdateCommand="UPDATE [tbl_Staff] SET [dep_id] = @dep_id, [email] = @email, [designation] = @designation, [staff_name] = @staff_name WHERE [staff_id] = @staff_id">
                    <DeleteParameters>
                        <asp:Parameter Name="staff_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="dep_id" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="designation" Type="String" />
                        <asp:Parameter Name="staff_name" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="dep_id" Type="Int32" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="designation" Type="String" />
                        <asp:Parameter Name="staff_name" Type="String" />
                        <asp:Parameter Name="staff_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
		</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
