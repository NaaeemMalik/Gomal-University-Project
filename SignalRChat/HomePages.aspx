<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.master" AutoEventWireup="true" CodeBehind="HomePages.aspx.cs" Inherits="SignalRChat.HomePages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="reveal-body">
        <!-- slider begin -->
        <div class="slider">
            <ul class="slides">
                <li>
                    <img src="images/mainGate.jpg" alt="img" />
                    <div class="caption center-align">
                        <h5 class="light grey-text text-lighten-3">b
                            Our Know How</h5>
                        <h3 class="white-text">
                            You're here to get Ultimate education</h3>
                        <a href="Contact.aspx" id="btnAnimate" class="btn waves-effect primary-color white-text animation">
                            Contact Us</a>
                    </div>
                </li>
                <li>
                    <img src="images/admin.jpg" alt="img" />
                    <div class="caption left-align">
                        <h5 class="light grey-text text-lighten-3">
                            We are social</h5>
                        <h3>
                            Professional and Academic contacts</h3>
                        <a href="Contact.aspx" class="btn waves-effect primary-color white-text">Contact Us</a>
                    </div>
                </li>
                <li>
                    <img src="images/room.jpg" alt="img" />
                    <div class="caption right-align">
                        <h5 class="light grey-text text-lighten-3">
                            Our Aim</h5>
                        <h3>
                            Suitable training programme</h3>
                        <a href="#" class="btn waves-effect primary-color white-text">Read More</a>
                    </div>
                </li>
                <li>
                    <img src="images/icit.jpg" alt="img" />
                    <div class="caption center-align">
                        <h5 class="light grey-text text-lighten-3">
                            Here we are ..</h5>
                        <h3>
                            Join us in marking Transgender Day of Remembrance</h3>
                        <a href="#" class="btn waves-effect primary-color white-text">Join Us</a>
                    </div>
                </li>
            </ul>
        </div>
        <!-- slider end -->
        <!-- body start -->
        <div class="container">
            <div class="row section">
                <h4 class="center">
                    <strong>GUSHD</strong> Gomal University</h4>
                <div class="primary-color-line-1 line-center">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row section">
                <!-- posts section start -->
                <div class="col s12 m6 l6">
                    <a href="Admissions.aspx">
                        <div class="card hoverable sticky-action">
                            <div class="card-image waves-effect waves-block waves-light">
                                <img class="activator" src="images/t1.jpg" alt="" />
                            </div>
                            <div class="card-content">
                                <span class="card-title activator center grey-text text-darken-4">Online Admission</span>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col s12 m6 l6">
                    <a href="Result.aspx">
                        <div class="card hoverable sticky-action">
                            <div class="card-image waves-effect waves-block waves-light">
                                <img class="activator" src="images/t2.jpg" alt="" />
                            </div>
                            <div class="card-content">
                                <span class="card-title activator grey-text text-darken-4">Online Result</span>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- posts section end -->
            </div>
        </div>
        <div class="container">
            <div class="row section">
                <!-- posts section start -->
                <div class="col s12 m6 l6">
                    <a href="EdResources.aspx">
                        <div class="card hoverable sticky-action">
                            <div class="card-image waves-effect waves-block waves-light">
                                <img class="activator" src="images/t3.jpg" alt="" />
                            </div>
                            <div class="card-content">
                                <span class="card-title activator grey-text text-darken-4">Educational Resources</span>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col s12 m6 l6">
                    <a href="Login.aspx">
                        <div class="card hoverable sticky-action">
                            <div class="card-image waves-effect waves-block waves-light">
                                <img class="activator" src="images/ts.jpg" alt="" />
                            </div>
                            <div class="card-content">
                                <span class="card-title activator grey-text text-darken-4">Chat Room</span>
                            </div>
                        </div>
                    </a>
                </div>
                <!-- posts section end -->
            </div>
        </div>
     <%--   <div class="row primary-color section">
            <div class="row">
                <div class="col s12 m12 l12 center">
                    <div class="emp-space-3">
                    </div>
                    <h4 class="white-text">
                        User Registeration</h4>
                    <button data-target="login" id="signup" class="btn waves-effect white grey-text darken-text-2 animation modal-trigger center-block">
                        Click Here to Register Now! <i class="fa fa-user"></i>
                    </button>
                    <div class="emp-space-4">
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- our animals -->
        <div class="container">
            <div class="row section">
                <h4 class="center">
                    <strong>News & Alerts</strong></h4>
                <div class="primary-color-line-1 line-center">
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <ul class="tabs">
                        <li class="tab col s3"><a class="active" href="#uos_">Laptop Distribution</a></li>
                        <li class="tab col s3"><a href="#uos_1">Recent News</a></li>
                        <li class="tab col s3"><a href="#uos_3">Notifications</a></li>
                    </ul>
                    <div class="emp-space-1">
                    </div>
                    <!-- uos_ -->
                    <div id="uos_" class="row">
                        <div class="col s12 m4 l4">
                            <div class="card hoverable sticky-action">
                                <div class="card-image waves-effect waves-block waves-light">
                                    <img class="activator" src="images/lap1.jpg" alt="" />
                                </div>
                                <div class="card-content">
                                    <span class="card-title grey-text text-darken-1 text-uppercase">Scheme 2014 </span>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l4">
                            <div class="card hoverable sticky-action">
                                <div class="card-image waves-effect waves-block waves-light">
                                    <img class="activator" src="images/lap2.jpg" alt="" />
                                </div>
                                <div class="card-content">
                                    <span class="card-title grey-text text-darken-1 text-uppercase">Scheme 2015 </span>
                                </div>
                            </div>
                        </div>
                        <div class="col s12 m4 l4">
                            <div class="card hoverable sticky-action">
                                <div class="card-image waves-effect waves-block waves-light">
                                    <img class="activator" src="images/lap3.jpg" alt="" />
                                </div>
                                <div class="card-content">
                                    <span class="card-title grey-text text-darken-1 text-uppercase">Scheme 2016 </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- uos_ -->
                    <!-- uos_1 -->
                    <div id="uos_1" class="row">
                        <div class="col s12">
                            New Admissions starts from December
                        </div>
                    </div>
                    <!-- uos_1 -->
                    <!-- uos_3 -->
                    <div id="uos_3" class="row">
                        <div class="col s12">
                           New Admissions starts from December
                        </div>
                    </div>
                    <!-- uos_1 -->
                </div>
            </div>
        </div>
        <!-- our animals -->
        <div class="container">
            <div class="row">
                <div class="col s12 m6 l6">
                    <div class="modal" id="login">
                        <div class="modal-content">
                            <div class="row">
                                <div class="col s12">
                                    <form action="login.html">
                                    <div class="input-field col s12 tooltipped" data-position="bottom" data-delay="50"
                                        data-tooltip="Please enter your Username">
                                        <i class="fa fa-user-o prefix" aria-hidden="true"></i>
                                        <asp:TextBox ID="txtname" CssClass="validate" runat="server"></asp:TextBox>
                                        <label for="txtname">
                                            Enter Username</label>
                                    </div>
                                    <div class="input-field col s12 tooltipped" data-position="bottom" data-delay="50"
                                        data-tooltip="Please enter your Password">
                                        <i class="fa fa-key prefix" aria-hidden="true"></i>
                                        <asp:TextBox ID="txtpassword" CssClass="validate" TextMode="Password" Font-Size="15" runat="server"></asp:TextBox>
                                        <label for="icon-prefix">
                                            Enter Password</label>
                                    </div>
                                    <br />
                                    <asp:Label ID="lblMsg" runat="server" CssClass="red-text" Font-Bold="True"></asp:Label>
                                    <br />
                                    <asp:Button ID="btnLogin" 
                                        CssClass="btn waves-effect waves-light primary-color fa fa-user" runat="server" 
                                        Text="Login" onclick="btnLogin_Click" />
                                   
                                   
                                    <asp:Button ID="btnRegistration" CssClass=" right btn waves-effect waves-light primary-color fa fa-user" runat="server" Text="New Registration" />
                              
                                   
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- body end -->
        <div class="container">
            <div class="row">
                <div class="col s12 m12 l6">
                    <h3>
                        Student Diaries</h3>
                    <div class="primary-color-line-1">
                    </div>
                    <p>
                        Fellow students share their study experience and tips</p>
                </div>
                <div class="col s12 m12 l6">
                    <a href="StudentDiarys.aspx">
                        <img src="images/sd1.jpg" alt="" class="responsive-img" />
                    </a>
                </div>
            </div>
        </div>
        <div class="emp-space-3">
        </div>
    </div>
</asp:Content>