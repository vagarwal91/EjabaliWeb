<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Categries.aspx.cs" Inherits="eJABALI.Categries" %>
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
<form id="frmcat" runat="server">

    <uc:Header ID="Header" runat="server" />
    

<!-- item header start -->
    
<section>
  <div class="item-header">
    <h1><asp:Label ID="lblcatname" runat="server"></asp:Label></h1>
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
      

           
        <asp:PlaceHolder ID="placeholdercat" runat="server">
                        
        </asp:PlaceHolder>
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
      <div class="item"><img src="images/fullimage1.jpg" alt="banner" /></div>
      <div class="item"><img src="images/fullimage2.jpg" alt="banner" /></div>
      <div class="item"><img src="images/fullimage3.jpg" alt="banner" /></div> 
    </div>
  </div>
</section>
<!-- banner end -->

<uc:Footer ID="footer" runat="server" />
</form>
</body>
</html>
