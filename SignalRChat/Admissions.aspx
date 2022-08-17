<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeBehind="Admissions.aspx.cs" Inherits="SignalRChat.Admissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="reveal-body">
        <div class="emp-space-3">
        </div>
        <div class="container">
            <div class="row">
                <div class="col s12 m3" id="Depart">
                    <ul class="tabs transparent-back">
                        <li class="tab col s12"><a class="active" href="#personal"><i class="fa fa-university"></i>Personal Info</a></li>
                        <li class="tab col s12"> <div id="foo" runat="server"><a href="#academic"><i class="fa fa-user"></i>Academic</a></div>
                        </li>

                    </ul>

                </div>
                <div class="col s12 m9">
                    <div id="personal" class="col s12">
                        <asp:Label ID="lblMsgAdmsn" runat="server" Text=""></asp:Label>
                        <div class="col s12 m12" id="ftoor" runat="server">
                            <div class="card horizontal margin-top-0">
                                <div class="card-stacked">
                                    <div class="card-content">
                                        <span class="card-title">Personal Information</span>
                                        <div class="row">
                                            <div class="input-field col m6">
                                                <asp:TextBox ID="txtfname" runat="server" CssClass="valid"></asp:TextBox>
                                                <label for="first_name">
                                                    First Name</label>
                                            </div>
                                            <div class="input-field col m6">
                                                <asp:TextBox ID="txtlname" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Last Name</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col m12">
                                                <asp:TextBox ID="txtcnic" CssClass="validate " runat="server"></asp:TextBox>

                                                <label for="first_name">
                                                    CNIC</label>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="input-field col m6">
                                                <asp:TextBox ID="txtnationality" CssClass="validate" runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Nationality</label>
                                            </div>
                                            <div class="col m6">
                                                <asp:DropDownList ID="ddlDomicile" CssClass="dropdown-button btn" runat="server">
                                                    <asp:ListItem> Punjab </asp:ListItem>
                                                    <asp:ListItem> Sindh </asp:ListItem>
                                                    <asp:ListItem> KPK </asp:ListItem>
                                                    <asp:ListItem> Blochistan </asp:ListItem>
                                                    <asp:ListItem> Fata </asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col m6">
                                                <asp:TextBox ID="txtcontact" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Contact</label>
                                            </div>
                                            <div class="input-field col m6">
                                                <asp:TextBox ID="txtreligion" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Religion</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col m12">
                                                <asp:TextBox ID="txtEmail" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Email</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col m12">
                                                <asp:TextBox ID="txtAddress" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Address</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col m12" runat="server">
                                                <asp:HyperLink ID="HyperLink1" runat="server">

                                                    <a >
                                                        <asp:Button ID="btnPersonal" CssClass="btn waves-effect waves-light"
                                                            runat="server" Text="Submit" OnClick="btnPersonal_Click" />
                                                    </a>
                                                </asp:HyperLink>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="academic" class="col s12">
                        <div class="col s12 m12" id="fool" runat="server">
                            <div class="card horizontal margin-top-0">
                                <div class="card-stacked">
                                    <div class="card-content">
                                        <span class="card-title">Academic Information</span>
                                        <div class="row">
                                            <div class="input-field col m4">
                                                <asp:TextBox ID="txtHYear" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    HSSC Year</label>
                                            </div>
                                            <div class="input-field col m4">
                                                <asp:TextBox ID="txtHMarks" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    HSSC Marks</label>
                                            </div>
                                            <div class="input-field col m4">
                                                <asp:TextBox ID="txtHBoard" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Board
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col m4">
                                                <asp:TextBox ID="txtInterYear" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Intermediate Year</label>
                                            </div>
                                            <div class="input-field col m4">
                                                <asp:TextBox ID="txtInterMarks" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Intermediate Marks</label>
                                            </div>
                                            <div class="input-field col m4">
                                                <asp:TextBox ID="txtInterBoard" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Board
                                                </label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col m4">
                                                <asp:TextBox ID="txtBachYear" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Bechlors Year</label>
                                            </div>
                                            <div class="input-field col m4">
                                                <asp:TextBox ID="txtBachMarks" CssClass="validate " runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Bechlors Marks</label>
                                            </div>
                                            <div class="input-field col m4">
                                                <asp:TextBox ID="txtBachBoard" CssClass="validate" runat="server"></asp:TextBox>
                                                <label for="first_name">
                                                    Board
                                                </label>
                                            </div>
                                        </div>

                                        <div class="row">

                                            <div class="col m6">
                                                <asp:DropDownList ID="ddlProgType" CssClass="dropdown-button btn" runat="server">
                                                    <asp:ListItem> Select Program Duration </asp:ListItem>
                                                    <asp:ListItem>2 Year</asp:ListItem>
                                                    <asp:ListItem>4 Year</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                            <div class="col m6">
                                                <asp:DropDownList ID="DropDownList1" CssClass="dropdown-button btn"
                                                    runat="server" DataSourceID="ddlProgNameDS" DataTextField="prog_name"
                                                    DataValueField="prog_id">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="ddlProgNameDS" runat="server"
                                                    ConnectionString="<%$ ConnectionStrings:aspString %>"
                                                    SelectCommand="SELECT * FROM [tbl_program]"></asp:SqlDataSource>

                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col m12">
                                                <a href="#academic">
                                                    <asp:Button ID="btnAcademic" CssClass="btn waves-effect waves-light"
                                                        runat="server" Text="Submit" OnClick="btnAcademic_Click" />
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
    <div class="emp-space-3">
    </div>
    <div class="emp-space-3">
    </div>
</asp:Content>
