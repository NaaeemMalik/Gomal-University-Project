<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Programs.aspx.cs" Inherits="SignalRChat.Admin.Programs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_BODY" runat="server">
<h4>Admin End Programs</h4>
    
		<%----------------------- this is program id ----------------------------%>
          <div class="row section" id="program">
              <asp:GridView ID="grvProgram" runat="server" AutoGenerateColumns="False" 
                  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                  CellPadding="4" CellSpacing="2" DataKeyNames="prog_id" 
                  DataSourceID="ProgramDataSource" showFooter="true" ForeColor="Black">
                  <Columns>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:TemplateField HeaderText="Program ID" InsertVisible="False" SortExpression="prog_id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("prog_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lbinsertProg" OnClick="lbinsertProg_Click"  ValidationGroup="EnterProgram" runat="server">Enter Program</asp:LinkButton>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("prog_id") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="100px" />
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="Prog Type" SortExpression="prog_type">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlProgType" CssClass="dropdown-button btn" runat="server" SelectedValue='<%# Bind("prog_type") %>'>
                            <asp:ListItem>2 Year</asp:ListItem>
                            <asp:ListItem>4 Year</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <FooterTemplate>
                         <asp:DropDownList ID="ddlFtrProgType" CssClass="dropdown-button btn" runat="server"  SelectedValue='<%# Bind("prog_type") %>'>
                            <asp:ListItem>2 Year</asp:ListItem>
                            <asp:ListItem>4 Year</asp:ListItem>
                        </asp:DropDownList>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblname" runat="server" Text='<%# Bind("prog_type") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="150px" />
                </asp:TemplateField>
                    
                     <asp:TemplateField HeaderText="Prog Name" SortExpression="prog_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtemail" runat="server" Text='<%# Bind("prog_name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="Program Name is Required !"
                            ControlToValidate="txtemail" Text="*" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtFtrProgName2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvProgName" runat="server" ErrorMessage="Program Name is Required !"
                            ControlToValidate="txtFtrProgName2" Text="*" ValidationGroup="EnterProgram" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("prog_name") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="200px" />
                </asp:TemplateField>
                     <asp:TemplateField HeaderText="Department" SortExpression="email">
                    <EditItemTemplate>
                      
                       
                    
                      
                        <asp:DropDownList ID="ddlProgDepart" CssClass="dropdown-button btn" 
                            runat="server" DataSourceID="ddl_Prog_Depart_DS" DataTextField="dep_name" 
                            DataValueField="dep_id" SelectedValue='<%# Bind("dept_id") %>' >
                        </asp:DropDownList>
                      
                       
                    
                      
                        <asp:SqlDataSource ID="ddl_Prog_Depart_DS" runat="server" 
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
                        <asp:DropDownList ID="DropDownList3" CssClass="dropdown-button btn" 
                            runat="server" DataSourceID="ddl_Dept_prog_ftrDS" DataTextField="dep_name" 
                            DataValueField="dep_id" SelectedValue='<%# Bind("dept_id") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="ddl_Dept_prog_ftrDS" runat="server" 
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
               <asp:ValidationSummary ValidationGroup="EnterProgram" ID="ValidationSummary5" ForeColor="Red" runat="server" />
        <asp:ValidationSummary  ID="ValidationSummary6" ForeColor="Red" runat="server" />
        <br />
		       
		      <asp:SqlDataSource ID="ProgramDataSource" runat="server" 
                  ConnectionString="<%$ ConnectionStrings:aspString %>" 
                  DeleteCommand="DELETE FROM [tbl_program] WHERE [prog_id] = @prog_id" 
                  InsertCommand="INSERT INTO [tbl_program] ([prog_type], [prog_name], [dept_id], [prog_elig], [prog_dur]) VALUES (@prog_type, @prog_name, @dept_id, @prog_elig, @prog_dur)" 
                  SelectCommand="SELECT tbl_program.prog_id, tbl_program.prog_type, tbl_program.prog_name, tbl_program.dept_id, tbl_program.prog_elig, tbl_program.prog_dur, tbl_department.dep_name FROM tbl_program INNER JOIN tbl_department ON tbl_program.dept_id = tbl_department.dep_id" 
                  
                  UpdateCommand="UPDATE [tbl_program] SET [prog_type] = @prog_type, [prog_name] = @prog_name, [dept_id] = @dept_id, [prog_elig] = @prog_elig, [prog_dur] = @prog_dur WHERE [prog_id] = @prog_id">
                  <DeleteParameters>
                      <asp:Parameter Name="prog_id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="prog_type" Type="String" />
                      <asp:Parameter Name="prog_name" Type="String" />
                      <asp:Parameter Name="dept_id" Type="Int32" />
                      <asp:Parameter Name="prog_elig" Type="String" />
                      <asp:Parameter Name="prog_dur" Type="String" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="prog_type" Type="String" />
                      <asp:Parameter Name="prog_name" Type="String" />
                      <asp:Parameter Name="dept_id" Type="Int32" />
                      <asp:Parameter Name="prog_elig" Type="String" />
                      <asp:Parameter Name="prog_dur" Type="String" />
                      <asp:Parameter Name="prog_id" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
		 </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
