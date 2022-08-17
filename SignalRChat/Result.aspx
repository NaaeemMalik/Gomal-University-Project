<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="SignalRChat.Result" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container" id="result">
        <div class="row">
        </div>
        <div class="row">
            <div class="col m12 s12">

                <asp:DropDownList ID="ddlprogram" CssClass="dropdown-button btn" runat="server">
                    <asp:ListItem Selected="True">Select Program</asp:ListItem>
                    <asp:ListItem Value="22"> MCS </asp:ListItem>
                    <asp:ListItem Value="23"> BSCS </asp:ListItem>
                    <asp:ListItem Value="24"> BSSE </asp:ListItem>
                    <asp:ListItem Value="25"> M.phil </asp:ListItem>
                </asp:DropDownList>
            </div>

        </div>
        <div class="row">
        </div>
        <div class="row">
        </div>
        <div class="row">
            <div class="input-field col m5 s6">
                <asp:TextBox ID="rno" CssClass="validate " runat="server"></asp:TextBox>
                <label for="rno">Enter Roll No</label>
                
            </div>
            <div class="col m4 s6">
                <asp:DropDownList ID="ddlsem" CssClass="dropdown-button btn" runat="server">
                    <asp:ListItem Selected="True">Select Semester</asp:ListItem>
                    <asp:ListItem >1</asp:ListItem>
                    <asp:ListItem >2</asp:ListItem>
                    <asp:ListItem >3</asp:ListItem>
                    <asp:ListItem >4</asp:ListItem>
                    <asp:ListItem >5</asp:ListItem>
                    <asp:ListItem >6</asp:ListItem>
                    <asp:ListItem >7</asp:ListItem>
                    <asp:ListItem >8</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col m3 s3">
                <asp:Button ID="btnSearch" CssClass="waves-effect waves-light btn"
                    runat="server" Text="Search" OnClick="btnSearch_Click" />
                <asp:Label ID="lblMsg" runat="server" CssClass="red-text"
                    Font-Bold="True"></asp:Label>
            </div>
        </div>
        <div class="row">
            <h4 class="pink-text">Results </h4>
        </div>
        <div class="row">
            <table class="bordered striped	">
                <thead>
                    <tr>

                        <th data-field="name" class="blue-text">Subject
                        </th>
                        <th data-field="price" class="blue-text">Obtain Marks
                        </th>
                        <th data-field="price" class="blue-text">Total Marks
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>

                        <td><asp:label ID="s1" runat="server"></asp:label>
                        </td>
                        <td><asp:label ID="m1" runat="server"></asp:label>
                        </td>
                        <td>100
                        </td>
                    </tr>
                    <tr>

                        <td><asp:label ID="s2" runat="server"></asp:label>
                        </td>
                        <td><asp:label ID="m2" runat="server"></asp:label>
                        </td>
                        <td>100
                        </td>
                    </tr>
                    <tr>

                        <td><asp:label ID="s3" runat="server"></asp:label>
                        </td>
                        <td><asp:label ID="m3" runat="server"></asp:label>
                        </td>
                        <td>100
                        </td>
                    </tr>
                    <tr>

                        <td><asp:label ID="s4" runat="server"></asp:label>
                        </td>
                        <td><asp:label ID="m4" runat="server"></asp:label>
                        </td>
                        <td>100
                        </td>
                    </tr>
                                </tbody>
            </table>
            
            <table  class="bordered striped	">
                <tbody>    
                    <tr>

                        <th><asp:label ID="Label1" runat="server">Total Obtained Marks</asp:label>
                        </th>
                        <th><asp:label ID="Label3" runat="server">Total CGPA</asp:label>
                            </th>
                    </tr>
                    
                    <tr>

                        <td><asp:label ID="lobtm" CssClass="blue-text" runat="server"></asp:label> </td>

                        <td><asp:label ID="lper" CssClass="blue-text" runat="server"> </asp:label>
                        </td>
                    </tr>
                </tbody>
            </table>
            
            
        </div>

    </div>
    <div class="emp-space-3">
    </div>
    <div class="emp-space-3">
    </div>
</asp:Content>

