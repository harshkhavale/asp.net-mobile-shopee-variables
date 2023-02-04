<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.master" AutoEventWireup="true" CodeFile="UserCartPage.aspx.cs" Inherits="WebPages_UserCartPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-10 container" style="font-family: 'Quicksand', sans-serif;">
         <h5 style="font-size:large;font-family: 'Quicksand', sans-serif;" id="usrcartlbl" runat="server" class="my-4 badge bg-success ">SHOPPING CART</h5>

             <asp:Repeater ID="CartItmRptr" OnItemCommand="CartItmRptr_ItemCommand" runat="server">
                 <ItemTemplate>
                                                     <a href="ViewMorePage.aspx?PID=<%#Eval("ProductId")%>" style="text-decoration:none;color:black;display:contents">

                             <div class="row d-flex border rounded-4  flex-md-row mb-4 shadow h-25 w-75 " style="display:flex">

                                 <div class="col-auto d-none d-lg-block mx-3 my-3">
          <img class="bd-placeholder-img" style="width:20vw" src="../variablesImages/ProductImages/<%#Eval("ProductId") %>/<%# Eval("ImageName")%><%# Eval("ImageExtention") %>" alt="<%#Eval("ImageName") %>"/>          

        </div>
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary"><%#Eval("BrandName") %></strong>
          <h3 class="my-2"><%#Eval("ProductName") %></h3>
            
          <p class="my-2 text-danger" style="text-decoration:line-through;color:red">₹ <%#Eval("ProductPrice") %></p>
            
                      <h2 class="mb-0 " > ₹ <%#Eval("ProductSellingPrice","{0:000,0}") %></h2>

          <br />
            <div class="d-flex justify-content-evenly">


             <a href="PaymentPage.aspx?PID=<%#Eval("ProductId")%>&BuyAll=false" class="btn btn-lg btn-primary">Buy Now</a>
             <asp:Button ID="RemoveItemBtn" runat="server" CssClass="btn btn-danger" OnClick="RemoveItem_Click" CommandArgument='<%# Eval("ProductId") %>' Text="Delete" UseSubmitBehavior="False" />
                  
                </div>
        </div>
       
      </div>
                                                         </a>

                     
                 </ItemTemplate>
             </asp:Repeater>
             <h4 id="cartstatus" runat="server" class="text-danger"> </h4>
             
             </div>
                        


    <div class="col-3 h-50 position-fixed top-50 end-0 translate-middle-y sticky-top" id="summerybox" runat="server" style="font-family: 'Quicksand', sans-serif;z-index:5000">
        <div class="card mb-4 rounded-3 shadow-sm border-warning h-75">
          <div class="card-header py-3 text-bg-warning border-warning">
            <h4 class="my-0 fw-normal">SubTotal<br />(<span runat="server" id="ProductNumLbl">(0)</span> PRODUCTS)</h4>
          </div>
          <div class="card-body h-50">
                                       <h4 class="link-success">Cart Total</h4>
              <p id="pid" runat="server"></p>
            <h1 class="card-title display-3 pricing-card-title"><small class=" fw-light">    
                <h1 class="card-title pricing-card-title display-3 text-primary" id="TotalSellingPricelbl" runat="server">PRICE<small class="text-muted display-6 fw-light">/mo</small></h1>
</small></h1>
                            <h4  style="text-decoration:line-through;color:red" id="TotalPricelbl" runat="server">mrp</h4>
          <asp:Button ID="BuyAllBtn" runat="server" class="w-100 btn btn-lg text-light btn-warning" OnClick="BuyAllBtn_Click" Text="BUY ALL" UseSubmitBehavior="False" />
          </div>
        </div>
      </div>

    <p id="status" runat="server" class="text-danger"></p>

</asp:Content>

