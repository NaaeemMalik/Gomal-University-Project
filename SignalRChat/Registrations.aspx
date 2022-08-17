<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeBehind="Registrations.aspx.cs" Inherits="SignalRChat.Registrations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <center>
            <img class="responsive-img" src="images/reg2.png" alt="Alternate Text" style="width: 100%;" />
        </center>
    </div>
    <div class="container">
        <div class="row">
            <div class="col s12 m6 l6">
                <div class="row">
                    <div class="col s12">
                        <div class="input-field col s12 tooltipped" data-position="bottom" data-delay="50"
                            data-tooltip="Please enter your Username">
                            <i class="fa fa-user-o prefix" aria-hidden="true"></i>
                            <asp:TextBox ID="txtname" CssClass="validate" runat="server"></asp:TextBox>
                            <label for="txtname">
                                Enter Username</label>
                            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Name is Required"
                                ControlToValidate="txtname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        
                        <div class="input-field col s12 tooltipped" data-position="bottom" data-delay="50"
                            data-tooltip="Please enter your Roll No">
                            <i class="fa fa-user-o prefix" aria-hidden="true"></i>
                            <asp:TextBox ID="trno" CssClass="validate" runat="server"></asp:TextBox>
                            <label for="txtname">
                                Enter Roll Number</label>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RollNo is Required"
                                ControlToValidate="txtname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
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
                        <div class="input-field col s12 tooltipped" data-position="bottom" data-delay="50"
                            data-tooltip="Please enter your Password">
                            <i class="fa fa-key prefix" aria-hidden="true"></i>
                            <asp:TextBox ID="txtConfrmPassword" CssClass="validate" TextMode="Password" Font-Size="15" runat="server"></asp:TextBox>
                            <label for="icon-prefix">
                                Confirm Password</label>
                            <asp:RequiredFieldValidator ID="rfvConPass" runat="server" ErrorMessage="Confirm Password"
                                ControlToValidate="txtConfrmPassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmprfvConfrimPassword" runat="server" ForeColor="Red" ErrorMessage="CompareValidator" Text="Password Not Match" ControlToCompare="txtPassword" ControlToValidate="txtConfrmPassword"></asp:CompareValidator>
                        </div>
                        <asp:Button ID="btnRegistration" CssClass=" right btn waves-effect waves-light primary-color fa fa-user"
                            runat="server" Text="Sign Up" OnClick="btnRegistration_Click" />
                        <asp:Label ID="lblMsg" runat="server" CssClass="red-text"
                            Font-Bold="True"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="emp-space-3">
    </div>
    <div class="emp-space-3">
    </div>
</asp:Content>
