<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="SignalRChat.Department" MasterPageFile="~/HomeMaster.master" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="reveal-body">
        <div class="emp-space-3">
        </div>
        <div class="container">
            <div class="row">
                <div id="Depart" class="col s12 m3">
                    <ul class="tabs transparent-back">
                        <li class="tab col s12"><a class="active" href="#intro"><i class="fa fa-university"></i>Introduction</a></li>
                        <li class="tab col s12"><a href="#staff"><i class="fa fa-user"></i>Staff</a></li>
                        <li class="tab col s12"><a href="#academics"><i class="fa fa-graduation-cap"></i>Academics</a></li>
                    </ul>
                </div>
                <div class="col s12 m9">
                    <div id="intro" class="col s12">
                        <div class="col s12 m12">
                            <div class="card horizontal margin-top-0">
                                <div class="card-image">
                                    <img src="Images/f1.jpg" alt="" />
                                    <h5 class="blue-text center-align">
                                        <strong>Dr.Jamal Abdul Nasir</strong>
                                    </h5>
                                </div>
                                <div class="card-stacked">
                                    <div class="card-content">
                                        <h4>Department of ICIT</h4>
                                        <p>
                                            With advanced technological infrastructure and promising educational environment,
                                            the department of Computer Science & IT is providing its students quality education.
                                            The facilities provided to students include well-equipped Computer Labs with quality
                                            internet facility, multimedia enabled class room, fully air-conditioned lab and
                                            library with access to digital library for advance research journals/articles. Extra-curriculum
                                            activity is another feature of the department where the goal is to equip the students
                                            with different skills such as programming, gaming, creativity, management. The department
                                            has been desirous to produce outstanding experts who will earn remarkable repute.
                                            At the University level this department is now running BS 4-year program in the
                                            subject of BSCS, BSIT and Master Level 2-year program MSc.IT. The department has
                                            qualified and experienced teachers who are devotedly inculcating in the students,
                                            the zeal, spirit and determination which is necessary to compete with the new scientific
                                            challenges in every walk of life.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="staff" class="col s12">
                        <table class="bordered striped	">
                            <thead>
                                <tr>
                                    <th data-field="id" class="blue-text">
                                        <h4>Name
                                        </h4>
                                    </th>
                                    <th data-field="name" class="blue-text">
                                        <h4>Designation</h4>
                                    </th>
                                    <th data-field="price" class="blue-text">
                                        <h4>Email</h4>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Samreen Qayum
                                    </td>
                                    <td>Senior Programer
                                    </td>
                                    <td>sammi@gmail.com
                                    </td>
                                </tr>
                                <tr>
                                    <td>Khuram Shehroz
                                    </td>
                                    <td>Web Designer
                                    </td>
                                    <td>khuram@yahoo.com
                                    </td>
                                </tr>
                                <tr>
                                    <td>Asif Khan
                                    </td>
                                    <td>Manager
                                    </td>
                                    <td>asifkhan@gmail.com
                                    </td>
                                </tr>
                                <tr>
                                    <td>Samreen Qayum
                                    </td>
                                    <td>Senior Programer
                                    </td>
                                    <td>sammi@gmail.com
                                    </td>
                                </tr>
                                <tr>
                                    <td>Khuram Shehroz
                                    </td>
                                    <td>Web Designer
                                    </td>
                                    <td>khuram@yahoo.com
                                    </td>
                                </tr>
                                <tr>
                                    <td>Asif Khan
                                    </td>
                                    <td>Manager
                                    </td>
                                    <td>asifkhan@gmail.com
                                    </td>
                                </tr>
                                <tr>
                                    <td>Samreen Qayum
                                    </td>
                                    <td>Senior Programer
                                    </td>
                                    <td>sammi@gmail.com
                                    </td>
                                </tr>
                                <tr>
                                    <td>Khuram Shehroz
                                    </td>
                                    <td>Web Designer
                                    </td>
                                    <td>khuram@yahoo.com
                                    </td>
                                </tr>
                                <tr>
                                    <td>Asif Khan
                                    </td>
                                    <td>Manager
                                    </td>
                                    <td>asifkhan@gmail.com
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="academics" class="col s12">
                        <!-- This is my academics practice -->
                        <div id="Div1" class="col m12">

                            <asp:Label ID="Label1" runat="server" Text="Click on any Degree to See Semesters info"></asp:Label>


                            <asp:HyperLink ID="HyperLink1" runat="server">
                            <div class="row">
                                <div class="col col6 s12 black-text">
                                   <h2>
                                        BS Computer Science
                                    </h2>
                                </div>
                                <div class="col col6 orange-text">
                                    <h5>
                                        Program Duration : 4 Years
                                    </h5>
                                </div>
                            </div>
                            
                            </asp:HyperLink>
                            <asp:Panel ID="MyDiv" CssClass="hide" NavigateUrl="?display=show#academics" runat="server">
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester I</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester II</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester III</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered center">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester IV</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester V</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester VI</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester VII</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered center">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester VIII</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>

                            </asp:Panel>
                            
                            <br />

                            <asp:HyperLink ID="HyperLink2" runat="server">
                            <div class="row">
                                <div class="col col6 s12 black-text">
                                   <h2>
                                        MS Computer Science
                                    </h2>
                                </div>
                                <div class="col col6 orange-text">
                                    <h5>
                                        Program Duration : 2 Years
                                    </h5>
                                </div>
                            </div>
                            
                            </asp:HyperLink>
                                                        
                            <asp:Panel ID="Panel1" CssClass="hide" runat="server">
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester I</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester II</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester III</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered center">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester IV</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester V</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester VI</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester VII</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered center">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester VIII</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>

                            </asp:Panel>

                            <br />

                            <asp:HyperLink ID="HyperLink3" runat="server">
                            <div class="row">
                                <div class="col col6 s12 black-text">
                                   <h2>
                                        Mphil Computer Science
                                    </h2>
                                </div>
                                <div class="col col6 orange-text">
                                    <h5>
                                        Program Duration : 2 Years
                                    </h5>
                                </div>
                            </div>
                            
                            </asp:HyperLink>
                                                        
                            <asp:Panel ID="Panel2" CssClass="hide" runat="server">
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester I</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester II</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester III</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered center">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester IV</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester V</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester VI</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester VII</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered center">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col blue-text">
                                    <h2>
                                        Semester VIII</h2>
                                </div>
                                <div class="col black-text">
                                    <table class="bordered">
                                        <thead>
                                            <tr>
                                                <th data-field="id">
                                                    Course Code
                                                </th>
                                                <th data-field="name">
                                                    Course Name
                                                </th>
                                                <th data-field="price">
                                                    Credit Hours
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    70483
                                                </td>
                                                <td>
                                                    Programming
                                                </td>
                                                <td>
                                                    24
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70486
                                                </td>
                                                <td>
                                                    Linear Algebra
                                                </td>
                                                <td>
                                                    16
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    70559
                                                </td>
                                                <td>
                                                    Algorithm
                                                </td>
                                                <td>
                                                    32
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                </div>

                            </asp:Panel>


                        </div>
                        <!-- end of academics -->
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
    <!-- reveal ends -->
</asp:Content>
