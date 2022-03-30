<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="eJABALI.Home" %>
<%@ Register Src="~/UserControls/Homeheader.ascx" TagPrefix="uc" TagName="Header"%> 
<%@ Register Src="~/UserControls/Footer.ascx" TagPrefix="uc" TagName="Footer"%> 
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

<!-- category start -->
<section class="mt-64">
  <div class="card custom-column">
    <div class="container-fluid">
      <div class="row"> 
          <div id="owl-div-category" class="owl-carousel owl-theme owl-loaded owl-drag">
                            <div class="owl-stage-outer">
                                <div class="owl-stage">
              <asp:PlaceHolder ID ="Categoryplaceholder" runat="server">
              </asp:PlaceHolder>     
                                    </div>
                                </div>
              </div>
      </div>
      <div class="row">      
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
</section>
<!-- category end -->

<!-- banner start -->
         <section>
  <div class="banner-box">
    <div class="owl-carousel owl-theme owl-banner">
         <asp:PlaceHolder ID ="PlaceHolderbanner1" runat="server">
              </asp:PlaceHolder>  

         
          </div>
  </div>
</section>
     
   
<!-- banner end -->

<!-- sub category start -->
<section>
  <div class="card m-l-r-10">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <h1 class="card-heading">
            <span class="left v-middle">Deal of the Day 
              <span class="timer-wrap">
                <span class="badge badge-success"><i class="fa fa-clock"></i> 11 : 00 :00 </span> <span class="text">Left</span>
              </span>
            </span>
            <a href="DealofDay.aspx" class="btn btn-success btn-sm right">View All</a>
            <span class="clearfix"></span>
          </h1>
        </div>
      </div>
      <!-- banner start -->
      
        <div id="owl-sub-category" class="owl-carousel owl-theme owl-loaded owl-drag">
                        <div class="owl-stage-outer">
                            <div class="owl-stage">
            
                 <asp:PlaceHolder ID ="PlaceHolderdealofday" runat="server">
              </asp:PlaceHolder> 
                  
             
              </div>
          </div>
      </div>
        
      
      <!-- banner start -->
    </div>
  </div>
</section>
<!-- sub category end -->

<!-- banner start -->
<section>
  <div class="banner-box">
    <div class="owl-carousel owl-theme owl-banner">
         
     <asp:PlaceHolder ID ="PlaceHolderbanner2" runat="server">
              </asp:PlaceHolder> 
    </div>
  </div>
</section>
<!-- banner end -->

<!-- sub category start -->
       <%-- <section>--%>
  <%--<div class="card m-l-r-10">
   <div class="container-fluid">--%>
      

        <asp:PlaceHolder ID="placeholdesubcat" runat="server">

        </asp:PlaceHolder>

      
      
   <%--     </div>
  </div>--%>
<%--</section>--%>
<!-- sub category end -->

        <uc:Footer ID="footer" runat="server" />
    </form>
</body>
</html>
