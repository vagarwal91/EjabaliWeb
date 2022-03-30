<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="eJABALI.orderhistory" %>

<%@ Register Src="~/UserControls/Header.ascx" TagPrefix="uc" TagName="Header" %>
<%@ Register Src="~/UserControls/Footerinner.ascx" TagPrefix="uc" TagName="Footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Commerce</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/all.css">
    <link href="css/chosen.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/style.css">

    <!-- js -->
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/all.min.js"></script>
    <script src="js/chosen.jquery.min.js"></script>
    <script src="js/custom.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <uc:Header ID="Header" runat="server" />


        <!-- item header start -->

        <section>
            <div class="history-box">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 form-group">
                            <input type="text" class="form-control" placeholder="Search your history here" />
                        </div>
                        <div class="col-md-4 form-group">
                            <a href="javascript:void(0);" class="btn btn-primary">
                                <i class="fa fa-search mr-10"></i>Search History
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <div class="card pl-3 pr-3">
                                <div class="row">
                                    <div class="col-md-12 form-group">
                                        <p class="badge badge-warning">Mr Kumar shared this history with you.</p>
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <div class="item-wrap">
                                            <img src="images/category-1.jpeg" id="prodimg" alt="item">
                                        </div>
                                    </div>
                                    <div class="col-md-4 form-group">
                                        <div class="detail-info">
                                            <h1 class="item-name"><span>Roadster</span></h1>
                                            <p class="item-type">Color : <span>Blue</span></p>
                                            <p class="item-size">Size : <span>Regular</span></p>
                                            <p class="item-seller">Seller : <span>test</span></p>
                                        </div>
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <div class="item-price">
                                            <p class="badge badge-primary">₹ 2,599</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 form-group">
                                        <div class="delivery-info">
                                            <h1 class="delivered-text"><span class="circle-icon"></span>Delivered on Mar 21, 2021</h1>
                                            <p class="badge badge-success">Your item has been delivered</p>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 form-group">
                            <div class="card pl-3 pr-3">
                                <div class="row">
                                    <div class="col-md-12 form-group">
                                        <p class="badge badge-warning">Mr Kumar shared this history with you.</p>
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <div class="item-wrap">
                                            <img src="images/category-1.jpeg" id="prodimg" alt="item">
                                        </div>
                                    </div>
                                    <div class="col-md-4 form-group">
                                        <div class="detail-info">
                                            <h1 class="item-name"><span>Roadster</span></h1>
                                            <p class="item-type">Color : <span>Blue</span></p>
                                            <p class="item-size">Size : <span>Regular</span></p>
                                            <p class="item-seller">Seller : <span>test</span></p>
                                        </div>
                                    </div>
                                    <div class="col-md-2 form-group">
                                        <div class="item-price">
                                            <p class="badge badge-primary">₹ 2,599</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4 form-group">
                                        <div class="delivery-info">
                                            <h1 class="delivered-text"><span class="circle-icon"></span>Delivered on Mar 21, 2021</h1>
                                            <p class="badge badge-success">Your item has been delivered</p>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- item header end -->

        <!-- item brand start -->
        <section>
            <div class="card m-l-r-10">
                <div class="container-fluid">
                    <div class="banner-box">
                        <div id="owl-item-brand" class="owl-carousel owl-theme">
                            <!-- item banner start -->



                            <asp:PlaceHolder ID="placeholderdod" runat="server"></asp:PlaceHolder>
                        </div>
                    </div>


                    <!-- banner start -->
                </div>
            </div>
        </section>
        <!-- item brand end -->

        <!-- banner start -->
        <section>
            <div class="banner-box">
                <div id="owl-banner" class="owl-carousel owl-theme">
                    <div class="item">
                        <img src="images/fullimage1.jpg" alt="banner" /></div>
                    <div class="item">
                        <img src="images/fullimage2.jpg" alt="banner" /></div>
                    <div class="item">
                        <img src="images/fullimage3.jpg" alt="banner" /></div>
                </div>
            </div>
        </section>
        <!-- banner end -->

        <uc:Footer ID="Footer" runat="server" />
    </form>
</body>
</html>
