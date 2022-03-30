<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyNow_KT.aspx.cs" Inherits="eJABALI.BuyNow" %>

<%@ Register Src="~/UserControls/Header.ascx" TagPrefix="uc" TagName="Header"%> 
<%@ Register Src="~/UserControls/Footerinner.ascx" TagPrefix="uc" TagName="Footer"%> 
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
    <form id="frmbuynow" runat="server">
<!-- header start -->
<uc:Header ID="Header" runat="server" />
<!-- header end -->

<!-- buy now start -->
    <section class="mt-80">
        <div class="container">
            <div class="row">
                <div class="col-md-9 form-group">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="float-left">
                                        <span class="badge badge-cyan">1</span>
                                        <h1 class="uppercase-header">Login <i class="fa fa-check"></i></h1>
                                        <p class="phone-text">+91-9876543210</p>
                                    </div>
                                    <div class="float-right">
                                        <asp:Button ID="btnlogin" runat="server" class="btn btn-success" Text="Change" />
                                        <%--<input type="button" class="btn btn-success" value="Change" />--%>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="float-left">
                                        <span class="badge badge-cyan">2</span>
                                        <h1 class="uppercase-header">Delivery Address <i class="fa fa-check"></i></h1>
                                        <p class="address-box"><span class="strong">Mr. Ajay Kishor</span><span class="address-text">House No. 156, Sagar Ratna Building, 5th Floor, Lajpat Nagar, New Delhi-<span class="strong">110065</span></p>
                                    </div>
                                    <div class="float-right">
                                        <asp:Button ID="btnaddress" runat="server" class="btn btn-success" Text="Change" />
                                        <%--<input type="button" class="btn btn-success" value="Change" />--%>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="order-summary-wrapper">
                                        <span class="badge badge-white">3</span>
                                        <h1 class="uppercase-header white">Order Summary</h1>
                                    </div>
                                </div>
                            </div>
                            <div class="item-info-wrap">
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="item-wrap">
                                            <img src="./images/category-1.jpeg" runat="server" id="prodimg" alt="item">
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="detail-info">
                                            <h1 class="item-name"><span id="spnprodname" runat="server"></span></h1>
                                            <p class="item-type"><span id="Spancolor" runat="server"></span></p>
                                            <p class="item-seller">Seller : <span id="Spanseller" runat="server"></span></p>
                                        </div>
                                        <div class="price-info">
                                            <div class="price-upper">
                                                <h1 class="price-net">₹<span id="Spannetprice" runat="server"></span></h1>
                                                <p class="price-actual">₹<span id="Spanactualprice" runat="server"></span></p>
                                                <span class="green mr-10"><span id="Spandiscount" runat="server"></span>% Off</span>
                                                <p class="green mt-5">1 coupon & 3 offer applied<i class="fa fa-info"></i></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="delivery-info">
                                            <label>
                                                <input type="checkbox" name="delivery"/>
                                                <span class="delivery-by ml-15">Delivery by Tomorrow, Mon | <span class="green">Free</span><span class="price-less">₹40</span></span>
                                            </label>
                                            <label>
                                                <input type="checkbox" name="delivery"/>
                                                <span class="delivery-by ml-15">Delivery by 11 AM, Tomorrow | <span class="green">Free</span><span class="price-less">₹70</span></span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <div class="value-button" id="decrease" onclick="decreaseValue()" value="Decrease Value">-</div>
                                <input type="number" id="number" value="0" disabled="disabled" />
                                <div class="value-button" id="increase" onclick="increaseValue()" value="Increase Value">+</div>
                                <a href="#;" class="btn-link ml-30">Remove</a>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <label class="mb-0">
                                    <input type="checkbox" name="gst"/>
                                    Use GST Invoice
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="float-left">
                                        <p class="mb-0">Order confirmation email will be sent to <span class="strong">ajay.kishor@gmail.com</span></p>
                                    </div>
                                    <div class="float-right">
                                        <asp:Button ID="btncontinue" runat="server" class="btn btn-success" Text="CONTINUE" OnClick="btncontinue_Click" />
                                        <asp:HiddenField ID="hdnvendorid" runat="server" />
                                        <asp:HiddenField ID="hdnprodid" runat="server" />
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="float-left">
                                        <span class="badge badge-cyan">4</span>
                                        <h1 class="uppercase-header">Payment Option</h1>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 form-group">
                    <div class="card">
                        <div class="card-header">
                            <h1>Price Details</h1>
                        </div>
                        <div class="card-body">
                            <table class="price-details">
                                <tbody>
                                    <tr>
                                        <td>Price (1 item)</td>
                                        <td>₹<span id="Spannetprice2" runat="server"></span></td>
                                    </tr>
                                    <tr>
                                        <td>Discount</td>
                                        <td><span class="badge badge-success">-₹<span id="Spandiscountamt" runat="server"></span></span></td>
                                    </tr>
                                    <tr>
                                        <td>Delivery Charges</td>
                                        <td><span class="badge badge-success" id="spandelcharge" runat="server"></span></td>
                                    </tr>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <td>Total Amount</td>
                                        <td>₹<span id="Spantotamt" runat="server"></span></td>
                                    </tr>
                                </tfoot>
                            </table>
                            <p class="save-info">You will save ₹<span id="Spantotsaving" runat="server"></span> on this order</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- buy now end -->



<uc:Footer ID="footer" runat="server" />
</form>
</body>
</html>
