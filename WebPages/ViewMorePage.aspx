<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.master" AutoEventWireup="true" CodeFile="ViewMorePage.aspx.cs" Inherits="WebPages_ViewMorePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class=" my-4 mx-4" style="font-family: 'Quicksand', sans-serif;">
        <div class="d-flex ">
                
            <div id="carouselExampleIndicators" class="carousel slide w-50" data-bs-ride="true" style="min-height:90vh" >

  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="5" aria-label="Slide 6"></button>

  </div>
                 
  <div class="carousel-inner" >
      <asp:Repeater ID="ImgRptr" runat="server">
          <ItemTemplate> 
     
               <div class="carousel-item <%#GetActiveImgClass(Container.ItemIndex)%> my-4 " >
                     <img src="../variablesImages/ProductImages/<%#Eval("ProductId") %>/<%# Eval("ImageName")%><%# Eval("ImageExtention") %>" class="card-img-top " alt="<%#Eval("ImageName") %>">
                   
    </div>
       </ItemTemplate>
      </asp:Repeater>
    
          
   
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
   </div>
           

           
            <asp:Repeater ID="ProductDetailsRptr" runat="server">
                    <ItemTemplate>
                    <div class="container my-2 mx-2 w-50 ">
                 <div class="card-body">
                                              <p class="card-title  text-primary"><%#Eval("BrandName") %></p>

    <h2 class="card-title display-6 my-2"><%#Eval("ProductName") %></h2>
                     

                     <p class="badge bg-danger">DEAL OF THE DAY</p>
                     
                    

                     <h4 class="display-6">₹ <%#Eval("ProductSellingPrice","{0:00,0}") %></h4>
  
                     <div class="d-flex">
                     <span >   price  :  </span>
                     <p style="text-decoration:line-through;color:red;font:italic"><em>₹ <%#Eval("ProductPrice","{0:00,0}") %></em></p>
                         <br />
                     </div>
                     <h4 class="p-2 badge bg-primary"><em>SAVE : ₹ <%#String.Format("{0}",Convert.ToInt64(Eval("ProductPrice"))-Convert.ToInt64(Eval("ProductSellingPrice")))%></em></h4>
                     <br />    
                     <p class="border border-dark rounded-4 p-2 text-dark text-center"><%#Eval("ProductHighlight1") %></p>
                         
                         <p class="border border-dark rounded-4 p-2 text-dark text-center"><%#Eval("ProductHighlight2") %></p>

                     </ul>
                     <hr />

                       <h5 class="badge text-bg-success">About Product</h5>
                     
                         <p class="card-text"><%#Eval("ProductDetails") %></p>
                     <h5 class="badge text-bg-dark"></h5>
                        <p class="card-text"><%#Eval("ProductDescription") %></p>
                    
                     <hr />
             

  </div>
                        </div>
                        
            
             <div class="container shadow my-2 mx-2 w-25 h-50 border border-pill rounded-4 text-center " >
                 <div class="card-body my-4">
    <h4 class="card-title"><%#Eval("ProductName") %></h4>
                     <hr />
                    
                     <p class="btn btn-warning">Price</p>
<h4 class="display-5">₹ <%#Eval("ProductSellingPrice","{0:00,0}") %></h4>    
                     
                     


    <hr />

  </div>
                 <p class="btn btn-success text-light rounded-4">Options</p>
                 <ul class="list-group list-group-flush">

    <li class="list-group-item text-primary"><p>Free Delivery <%#((int)Eval("FreeDelivery")==1)?"Available":"Not Available" %></p></li>
    <li class="list-group-item text-primary"><p>30 Days Return <%#((int)Eval("30DaysReturn")==1)?"Available":"Not Available" %></p></li>
    <li class="list-group-item text-primary"><p>Cash On Delivery <%#((int)Eval("CashOnDelivery")==1)?"Available":"Not Available" %></p></li>
     </ul>
                 <br />
               
                  
                    <div class="border border-5 p-3 rounded-pill">
                      <img src="../variablesImages/icons/userwishlist.png" style="height:6vh"/>
          <asp:Button ID="AddToCartBtn" class="btn border border-0" CausesValidation="false" runat="server" Text="Add to Cart" OnClick="AddToCartBtn_Click1" ValidateRequestMode="Inherit" ViewStateMode="Inherit" UseSubmitBehavior="False" />

      </div>
                  <div class="border border-5 p-3 rounded-pill">
                      <img src="../variablesImages/icons/trolley.png" style="height:6vh"/>
          <asp:Button ID="BuyNowBtn" class="btn border border-0" CausesValidation="false" OnClick="BuyNowBtn_Click" runat="server" Text="Buy Now" UseSubmitBehavior="False" />
     

      </div>
                
            </div>
                       
                         </ItemTemplate>
                </asp:Repeater>

        </div>
            <div class="container" style="font-size:large;font-family: 'Quicksand', sans-serif;">
    <h5 style="font-size:large;font-family: 'Quicksand', sans-serif;" class="badge bg-success text-light my-2 ">REVIEW'S</h5>
        <div class="container">
            <asp:Repeater ID="ReviewRptr" runat="server">
                <ItemTemplate>
                     <div class="d-flex justify-content-center container border border-5 rounded-5  my-3 ">
                         <div class="col-2 m-0 p-0" >
                         <h6 class="card-text col-10 badge bg-primary text-light pt-2 start-0 mx-4">By <%#Eval("UserName") %></h6>
                         <h6 class="card-text col-10 bg-danger text-light badge pt-2 end-0 mx-4">On <%#Eval("DateTime") %></h6>
                         </div>
                         <div class="col-9 ms-4 mt-3">
                         <p class="card-text mx-4 text-muted" ><%#Eval("Review") %></p>

                         </div>
                     </div>
                </ItemTemplate>
            </asp:Repeater>
            <p class="card-text my-4" id="reviewlbl" runat="server"></p>

        </div>







    </div>
             <div class="container shadow-lg">
                              <div class="d-flex col-sm p-4 ">

      <asp:Label ID="Label1" runat="server" Text="Add Review"  class="form-label col-1"
          Visible="True"></asp:Label>
             
      
&nbsp;<div class="col-6 mx-4">
          <asp:TextBox ID="ReviewTextBox" class="form-control" TextMode="MultiLine" runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="ReviewTextBox" ErrorMessage="Check Review" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>

         <asp:Button ID="SubmitReview" class="btn btn-sm btn-warning my-4 mx-4" runat="server" Text="Submit Review" UseSubmitBehavior="false" OnClick="SubmitReview_Click1" />
   
    
    <asp:Label ID="Reviewstatus" runat="server" Text=""  class="form-label text-success "
          Visible="True"></asp:Label>

      </div>


                      
   
  </div>
    </div>


            </div>
            <div class="row d-flex justify-content-center"  style="font-family: 'Quicksand', sans-serif;" >
                <p class="text-center p-4 text-light sticky-top bg-secondary" style="z-index:4000;background:linear-gradient(to right,#6157EF,dodgerblue,#EE49FD,#6157EF,dodgerblue,#EE49FD)">suggestions</p>
            <asp:Repeater ID="productrptr" runat="server">
                <ItemTemplate>
                    
                     <div class="card mx-3 my-2 mb-4 cardimg shadow p-3 mb-5 bg-body rounded" style="width: 15rem">
                         <a href="ViewMore.aspx?PID=<%#Eval("ProductId")%>" style="text-decoration:none;color:black" >
  <img src="../variablesImages/ProductImages/<%#Eval("ProductId") %>/<%# Eval("ImageName")%><%# Eval("ImageExtention") %>" class="card-img-top h-50" alt="<%#Eval("ImageName") %>">
  <div class="card-body ">
      <div class="position-relative start-0 " >
      <p class="card-text b-0 text-primary"><%#Eval("BrandName") %></p>
    <h5 class="card-title"><%#Eval("ProductName") %></h5>
      
    <p><em><del class="text-danger">₹ <%#Eval("ProductPrice","{0:000,0}") %></del></em></p>
          <br />
          </div>
      <br />
      <div class="position-absolute bottom-0 start-0 mx-4">
          <h5  > ₹ <%#Eval("ProductSellingPrice","{0:000,0}") %></h5>
    <p class="badge bg-primary">Save ₹  <%#Eval("DiscAmount","{0:00,0}") %></p>
          </div>
  </div>
                              </a>
  
                             
</div>
                    <br />
                    <br />
                       

                </ItemTemplate>
            </asp:Repeater>
                
           
        </div>


</asp:Content>

