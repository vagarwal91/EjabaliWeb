<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subcategories.aspx.cs" Inherits="eJABALI.Subcategories" %>
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
    <form id="frmsubcat" runat="server">
<!-- header start -->
<uc:Header ID="Header" runat="server" />
<!-- header end -->



<!-- sub category start -->
<section>
  <div class="sub-category-section">
    <div class="card">
      <div class="row">
        <div class="col-md-12 form-group">
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <asp:HiddenField ID="catid" runat="server" />
              <li class="breadcrumb-item"><a href="Home.aspx">Home</a></li>
              <li class="breadcrumb-item"><a runat="server" id="anchorcat"><asp:Label ID="lblcatname" runat="server"></asp:Label></a></li>
              <li class="breadcrumb-item active" aria-current="page"><asp:Label ID="lblsubcatname" runat="server"></asp:Label></li>
            </ol>
          </nav>
          <p>Latest from <asp:Label ID="lblcatnameinner" runat="server"></asp:Label> : <a href="#;"><asp:Label ID="lblcatnameanchor" runat="server"></asp:Label> </a></p>
          <div class="sub-category-main-info">
            <h1 class="info-head"><asp:Label ID="lblsubcatnameinner" runat="server"></asp:Label></h1>
            <%--<span class="badge badge-warning">(Showing 1 – 24 products of 292 products)</span>--%>
              <span class="badge badge-warning">(Showing <asp:Label ID="lblprodcount" runat="server" Text="0"></asp:Label> products)</span>
          </div>
          <div class="info-sort">
            <main id="main">
              <nav class="nav">
                <span>Sort By : </span>
                <a href="#" class="nav-item active" data-rel="project">Popularity</a>
                <a href="#" class="nav-item" data-rel="option-1">Price - Low to High</a>
                <a href="#" class="nav-item" data-rel="option-2">Price - High to Low</a>
                <a href="#" class="nav-item" data-rel="option-3">Newest First</a>
              </nav>
            </main>

          </div>
        </div>
      </div>
        <asp:DataList ID="DLSubcatproducts" runat="server" RepeatDirection="Vertical" OnItemDataBound="DLSubcatproducts_ItemDataBound" OnItemCommand="DLSubcatproducts_ItemCommand">
            <ItemTemplate>          
      <div class="row">
        <div class="col-md-12 form-group">
          <div class="sub-category-item-box">
            <a href="#;" target="_blank" rel="noopener noreferrer">
              <div class="row">
                <div class="col-md-3">
                  <div class="item-img">
                    <img src="./images/mi-redmi.jpeg" class="img-responsive" runat="server" id="productimg" alt=""/>
                    <label class="form-inline">
                      <input type="checkbox" name="compare"/> Add to Compare
                    </label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="sub-category-item-detail">
                    <span class="like-icon">
                      <i class="fa fa-heart"></i>
                    </span>
                    <h1><%# Eval("Prod_Name") %>
                        <asp:HiddenField ID="hdnprodid" runat="server" Value='<%# Eval("prod_id") %>' />
                        <asp:HiddenField ID="hdnvendorid" runat="server" Value='<%# Eval("VENDOR_ID") %>'/>
                        <asp:HiddenField ID="hdnsku" runat="server" Value='<%# Eval("sku") %>' />
                    </h1>
                    <div class="item-rating">
                      <span class="badge badge-success">4.2 <i class="fa fa-star"></i></span>
                      <span>
                        <span>21,230 Ratings </span>
                        <span> &amp; </span>
                        <span> 1,233 Reviews</span>
                      </span>
                    </div>
                    <div class="item-specification">
                      <ul>
                        <li><asp:Label ID="lblspecification" runat="server"></asp:Label></li>
                        <%--<li>16.59 cm (6.53 inch) HD+ Display</li>
                        <li>13MP + 8MP | 5MP Front Camera</li>
                        <li>5000 mAh Battery</li>
                        <li>MediaTek Helio G35 Processor</li>
                        <li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>--%>
                      </ul>
                    </div>
                      <div class="button-box">
                          <asp:Button ID="btnaadtocart" CommandName="Addcart" CommandArgument='<%# Eval("prod_id") %>' runat="server" CssClass="btn btn-primary btn-sm" Text="Add to Cart" />
                          <asp:Button ID="btnbuynow" CommandName="Buynow" CommandArgument='<%# Eval("prod_id") %>' runat="server" CssClass="btn btn-success btn-sm" Text="Buy Now"/>
                      </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="selling-price"><%# Eval("Special_Offer_Price") %></div>
                  <div class="actual-price"><%# Eval("Price") %></div>
                </div>
                <div class="clearfix"></div>
              </div>
            </a>
          </div>
        </div>
      </div>
                </ItemTemplate>
        </asp:DataList>
      <%--<div class="row">
        <div class="col-md-12 form-group">
          <div class="sub-category-item-box">
            <a href="#;" target="_blank" rel="noopener noreferrer">
              <div class="row">
                <div class="col-md-3">
                  <div class="item-img">
                    <img src="./images/mi-redmi.jpeg" class="img-responsive" alt="Redmi 9 (Sky Blue, 128 GB)"/>
                    <label class="form-inline">
                      <input type="checkbox" name="compare"/> Add to Compare
                    </label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="sub-category-item-detail">
                    <span class="like-icon">
                      <i class="fa fa-heart"></i>
                    </span>
                    <h1>Redmi 9 (Sky Blue, 128 GB)</h1>
                    <div class="item-rating">
                      <span class="badge badge-success">4.2 <i class="fa fa-star"></i></span>
                      <span>
                        <span>21,230 Ratings </span>
                        <span> &amp; </span>
                        <span> 1,233 Reviews</span>
                      </span>
                    </div>
                    <div class="item-specification">
                      <ul>
                        <li>4 GB RAM | 128 GB ROM</li>
                        <li>16.59 cm (6.53 inch) HD+ Display</li>
                        <li>13MP + 8MP | 5MP Front Camera</li>
                        <li>5000 mAh Battery</li>
                        <li>MediaTek Helio G35 Processor</li>
                        <li>1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="selling-price">₹11,989</div>
                  <div class="actual-price">₹11,990</div>
                </div>
                <div class="clearfix"></div>
              </div>
            </a>
          </div>
        </div>
      </div>--%>
    </div>
  </div>
</section>
<!-- sub category end -->

<uc:Footer ID="footer" runat="server" />
</form>
</body>
</html>
