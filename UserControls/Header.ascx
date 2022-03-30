<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="eJABALI.UserControls.Header" %>
<!-- header start -->
<header>
    <div class="container">
        <div class="left-wrap">
            <div class="logo-wrap">
                <a href="../Home.aspx">
                    <img src="images/logo-header.jpg" alt="logo" />
                </a>
            </div>
            <div class="search-wrap">
                <%--<input type="text" class="form-control" placeholder="Search for all product"/>--%>
                <select class="form-control chosen-select">
                    <option selected="selected" value="0">Search for all product</option>
                    <option value="1">Option-1</option>
                    <option value="2">Option-2</option>c
                    <option value="3">Option-3</option>
                    <option value="4">Option-4</option>
                    <option value="5">Option-5</option>
                    <option value="6">Option-6</option>
                    <option value="7">Option-7</option>
                    <option value="8">Option-8</option>
                </select>  
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
                                        <a href="#" class="dropdown-item">
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
                                <a href="#" class="btn-header seperator">
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
    </div>
</header>
<!-- header end -->

<!-- category start -->
<section class="mt-64">
    <div class="card custom-column">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar">
                        <div class="navbar-inner">
                            <div class="container-fluid">
                                <div class="nav-collapse">
                                    <%--<ul class="nav">
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle right-arrow" href="#">
                          Electronics <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu first-stage">
                          <li>
                            <div class="first-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="./sub-category.html">MI</a></li>
                                <li><a href="./sub-category.html">Realme</a></li>
                                <li><a href="./sub-category.html">Samsung</a></li>
                                <li><a href="./sub-category.html">Infinix</a></li>
                                <li><a href="./sub-category.html">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="second-column">
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="./sub-category.html">Mobile Cases</a></li>
                                <li><a href="./sub-category.html">Power Bank</a></li>
                                <li><a href="./sub-category.html">Screenguards</a></li>
                                <li><a href="./sub-category.html">Mobile Cable</a></li>
                                <li><a href="./sub-category.html">Mobile Charger</a></li>
                              </ul>
                              <span class="column-head">Smart Wearable Tech <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="./sub-category.html">Smart Watches</a></li>
                                <li><a href="./sub-category.html">Smart Glasses(VR)</a></li>
                                <li><a href="./sub-category.html">Smart Bands</a></li>
                              </ul>
                            </div>
                            <div class="third-column">
                              <span class="column-head">Healthcare Appliances <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="./sub-category.html">BP Monitor</a></li>
                                <li><a href="./sub-category.html">Weighting Scale</a></li>
                              </ul>
                            </div>
                            <div class="fourth-column">
                              <span class="column-head">Laptops <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="./sub-category.html">Gaming Laptop</a></li>
                              </ul>
                              <span class="column-head">Desktop PCs <i class="fa fa-caret-right"></i></span>
                              <span class="column-head">Computer Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="./sub-category.html">External Hard Disk</a></li>
                                <li><a href="./sub-category.html">Pendrive</a></li>
                              </ul>
                            </div>
                            <div class="fifth-column">
                              <span class="column-head">Television <i class="fa fa-caret-right"></i></span>
                              <span class="column-head">Speakers <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="./sub-category.html">Home Audio Speakers</a></li>
                                <li><a href="./sub-category.html">Home Theatres</a></li>
                              </ul>
                            </div>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          TV & Appliances<i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu first-stage">
                          <li>
                            <div class="first-column">
                              <span class="column-head">Television <i class="fa fa-caret-right"></i></span>
                              <span class="column-head">New Launches <i class="fa fa-caret-right"></i></span>
                            </div>
                            <div class="second-column">
                              
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                            </div>
                            <div class="third-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fourth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fifth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          Men <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu first-stage">
                          <li>
                            <div class="first-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="second-column">
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                            </div>
                            <div class="third-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fourth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fifth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          Women <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu first-stage">
                          <li>
                            <div class="first-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="second-column">
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                            </div>
                            <div class="third-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fourth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fifth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          Baby & Kids <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu first-stage">
                          <li>
                            <div class="first-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="second-column">
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                            </div>
                            <div class="third-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fourth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fifth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          Home & Furniture <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu first-stage">
                          <li>
                            <div class="first-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="second-column">
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                            </div>
                            <div class="third-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fourth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fifth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                          Sports, Books & More <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu first-stage">
                          <li>
                            <div class="first-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="second-column">
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                              <span class="column-head">Mobiles Accessories <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">Mobile Cases</a></li>
                                <li><a href="#">Power Bank</a></li>
                                <li><a href="#">Screenguards</a></li>
                                <li><a href="#">Mobile Cable</a></li>
                                <li><a href="#">Mobile Charger</a></li>
                              </ul>
                            </div>
                            <div class="third-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fourth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                            <div class="fifth-column">
                              <span class="column-head">Mobiles <i class="fa fa-caret-right"></i></span>
                              <ul>
                                <li><a href="#">MI</a></li>
                                <li><a href="#">Realme</a></li>
                                <li><a href="#">Samsung</a></li>
                                <li><a href="#">Infinix</a></li>
                                <li><a href="#">OPPO</a></li>
                              </ul>
                            </div>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#">Flight</i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#">Offer Zone</a>
                      </li>
                    </ul>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- category end -->
