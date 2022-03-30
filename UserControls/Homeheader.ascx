<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Homeheader.ascx.cs" Inherits="eJABALI.UserControls.Homeheader" %>
<header>
    <script>
        function sendToCategory(obj) {
            window.location.href = '/Categries.aspx?catid=' + obj.options[obj.selectedIndex].value + '&catname=' + obj.options[obj.selectedIndex].innerText;
        }
    </script>
    <div class="container">
        <div class="left-wrap">
            <div class="logo-wrap">
                <a href="../Home.aspx">
                    <img src="images/logo-header.jpg" alt="logo" />
                </a>
            </div>
            <div class="search-wrap">
                <div runat="server" id="div_searchCat"></div>
                <a href="#" class="btn-search-icon">
                    <i class="fa fa-search"></i>
                </a>
            </div>
        </div>
        <div class="right-wrap">
            <div class="navbar">
                <div class="navbar-inner">
                    <div class="nav-collapse">
                        <ul class="nav">
                            <li class="dropdown">
                                <a data-toggle="dropdown" runat="server" class="dropdown-toggle btn-header" clientidmode="Static" href="#" id="loginBtn">
                                    <i class="fas fa-sign-in-alt"></i>
                                    <span class="btn-header-text">Login</span>
                                </a>
                                <a runat="server" id="anc_profile" class="dropdown-toggle btn-header" clientidmode="Static" visible="false">
                                    <i class="fas fa-sign-in-alt"></i>
                                    <span class="btn-header-text" clientidmode="Static" runat="server" id="spn_profile">Profile_Name</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li runat="server" clientidmode="Static" id="spn_signup">
                                        <a href="#" class="dropdown-item" data-toggle="modal" data-target="#signupModal">
                                            <span class="float-left">New Customer?</span>
                                            <span class="float-right blue">Sign Up</span>
                                            <span class="clearfix"></span>
                                        </a>
                                    </li>
                                    <li runat="server" clientidmode="Static" id="spn_signout" visible="false">
                                        <a href="/Logout.aspx" class="dropdown-item">
                                            <span class="float-right blue" clientidmode="Static" runat="server">Sign Out</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-user-circle"></i>My Profile
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-plus"></i>Ejabali Plus Zone
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-question-circle"></i>Orders
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-ad"></i>Wishlist
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-download"></i>Rewards
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-download"></i>Gift Cards
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a data-toggle="dropdown" class="dropdown-toggle btn-header seperator" href="#">
                                    <span class="btn-header-text mr-10">More </span>
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-bell"></i>Notification Preferences  
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-briefcase"></i>Sell on Ejabali
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-question-circle"></i>24x7 Customer Care
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-ad"></i>Advertise
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="dropdown-item">
                                            <i class="fa fa-download"></i>Download App
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="/CartView.aspx" class="btn-header seperator">
                                    <i class="fa fa-shopping-cart"></i>
                                    <span class="btn-header-text">Cart</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</header>
<!-- header end -->
