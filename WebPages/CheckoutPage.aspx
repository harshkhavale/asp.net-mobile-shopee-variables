<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.master" AutoEventWireup="true" CodeFile="CheckoutPage.aspx.cs" Inherits="WebPages_CheckoutPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <form action="Charge.aspx" method="post" name="razorpayForm">
            <input id="razorpay_payment_id" type="hidden" name="razorpay_payment_id" />
            <input id="razorpay_order_id" type="hidden" name="razorpay_order_id" />
            <input id="razorpay_signature" type="hidden" name="razorpay_signature" />
        </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="container my-4" style="font-family: 'Quicksand', sans-serif;">
                          <h5 style="font-size:large;font-family: 'Quicksand', sans-serif;" class="badge bg-success my-4 ">PRODUCT SUMMARY</h5>





          <div class="row">
            <div class="col-8 row" id="content" runat="server">

             <asp:Repeater ID="productrptr" runat="server">
                 <ItemTemplate>

                             <div class=" d-flex border rounded  flex-md-row mb-4 shadow-sm h-md-250 " style="display:flex">
                                                                <h3 class="btn btn-sm bg-warning">PRODUCT DETAILS</h3>

                                 <div class="col-5 d-none d-lg-block mx-3 my-3">

          <img class="bd-placeholder-img" style="width:20vw" src="../variablesImages/ProductImages/<%#Eval("ProductId") %>/<%# Eval("ImageName")%><%# Eval("ImageExtention") %>" alt="<%#Eval("ImageName") %>"/>          

        </div>
        <div class="col-4 my-4 text-start ">
            <p class="mb-0 mt-4">BrandName</p>
          <h3 class=" mb-3 text-primary"><%#Eval("BrandName") %></h3>
                        <p  class="mb-0">Product-Name</p>

          <h3 class="mb-3"><%#Eval("ProductName") %></h3>
                                    <p  class="mb-0">Product-Price</p>

          <h3 class="mb-3 " > ₹ <%#Eval("ProductSellingPrice") %></h3>

        </div>
          
      </div>
                     
                 </ItemTemplate>
             </asp:Repeater>
             
                  <asp:Label ID="productname" Visible="false" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="sellingprice" Visible="false" runat="server" Text="Label"></asp:Label>

             </div>
<div class="col-4 border rounded position-fixed end-0 top-25 flex-md-row mb-4 shadow-sm h-md-250 ">

    <div class="">   <h3 class="btn btn-sm bg-warning ">Customer DETAILS</h3>

                    <p class="mb-0 ">UserId</p>

                                  <h4 id="UserIdLbl" runat="server" class="mb-1"></h4>
                            <p class="mb-0 ">Customer Name</p>

                                  <h4 id="CustNameLbl" runat="server" class="mb-1 text-primary"></h4>
                            <p class="mb-0 ">Address</p>


                                  <h4 id="CustAddressLbl" runat="server" class="mb-1"></h4>
                            <p class="mb-0 ">PinCode</p>


                                  <h4 id="CustPincodeLbl" runat="server" class="mb-1"></h4>
                            <p class="mb-0 ">Mobile Number</p>


                                  <h4 id="CustMonoLbl" runat="server" class="mb-1"></h4>
         <p class="mb-0 ">Email</p>


                                  <h4 id="Email" runat="server" class="mb-3"></h4>
        </div>
    </div>
              </div>







          </div>
                

      
    <div class="container d-flex justify-content-center" >

        <button class="btn btn-primary" style="font-family: 'Quicksand', sans-serif;" id="rzp-button1">Process Payment</button>
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        <script>
            var orderId = "<%=orderId%>"
            var options = {
                "name": "<%=Request.QueryString["ProductName"].ToString()%>",
                "description": "Tron Legacy",
                "order_id": orderId,
                "image": "https://s29.postimg.org/r6dj1g85z/daft_punk.jpg",
                "prefill": {
                    "name": "Daft Punk",
                    "email": "customer@merchant.com",
                    "contact": "+919999999999",
                },
                "notes": {
                    "address": "Hello World",
                    "merchant_order_id": "12312321",
                },
                "theme": {
                    "color": "#F37254"
                }
            }
            // Boolean whether to show image inside a white frame. (default: true)
            options.theme.image_padding = false;
            options.handler = function (response) {
                document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
                document.getElementById('razorpay_order_id').value = orderId;
                document.getElementById('razorpay_signature').value = response.razorpay_signature;
                document.razorpayForm.submit();
            };
            options.modal = {
                ondismiss: function () {
                    console.log("This code runs when the popup is closed");
                },
                // Boolean indicating whether pressing escape key 
                // should close the checkout form. (default: true)
                escape: true,
                // Boolean indicating whether clicking translucent blank
                // space outside checkout form should close the form. (default: false)
                backdropclose: false
            };
            var rzp = new Razorpay(options);
            document.getElementById('rzp-button1').onclick = function (e) {
                rzp.open();
                e.preventDefault();
            }
        </script>

    </div>

</asp:Content>

