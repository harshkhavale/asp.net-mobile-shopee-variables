<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.master" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="WebPages_UserHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class=" mt-4 mb-4 w-100 sticky-top" style="font-family: 'Quicksand', sans-serif;z-index:2">
        <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
   
    <div class="carousel-inner " style="max-height:58vh;font-family: 'Quicksand', sans-serif;">
     
      <div class="carousel-item active" >
          <img src="../variablesImages/advetisements/variablesadd.png" class="w-100" />
          
         
       
      </div>
      <div class="carousel-item" >
          <img src="../variablesImages/advetisements/appleAdd4.png" class="w-100" />
      
      </div>
         <div class="carousel-item" >
          <img src="../variablesImages/advetisements/appleAdd1.png" class="w-100" />
       
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
      </div>
       <div class="my-2 px-4 bg-light rounded-4 shadow-lg sticky-top" style="font-family: 'Quicksand', sans-serif;z-index:3">
                                                       <p  class="badge bg-success display-6  p-2 ">NEW ARRIVAL'S</p>
<br />
                            <h5 class="badge bg-warning mb-0 ">NEW</h5>
        <div class="row d-flex justify-content-center" >
            <asp:Repeater ID="productrptr" runat="server">
                <ItemTemplate>
                    
                     <div class="card mx-3 cardimg my-2 mb-4 crd shadow p-3 mb-5 bg-body rounded" style="width: 19rem">
                         <a href="ViewMorePage.aspx?PID=<%#Eval("ProductId")%>" style="text-decoration:none;color:black" >
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
          <h3  > ₹ <%#Eval("ProductSellingPrice","{0:000,0}") %></h3>
    <h4 class="badge bg-primary">Save ₹  <%#String.Format("{0}",Convert.ToInt64(Eval("ProductPrice"))-Convert.ToInt64(Eval("ProductSellingPrice")))%></h4>
          </div>
  </div>
                              </a>
  
                             
</div>
                    <br />
                    <br />
                       

                </ItemTemplate>
            </asp:Repeater>
                
           
        </div>
    </div>


    <div class="sticky-top"  style="font-family: 'Quicksand', sans-serif;z-index:4">
   <div class="bg-light  h-100 w-100 row d-flex p-0 m-0 sticky-top" style="z-index:5" >
        <div class="col-6 p-0" >
           <div class=" d-flex justify-content-center carousel-item m-0">
               <div class="col-6" style="overflow:hidden" >
               <img src="../variablesImages/advetisements/boatwatchadd.jpg" class="w-100 addimg scaleAnimClass" />
                   </div>
                <div class="container col-6 d-flex justify-content-center" style="margin-top:10vh">
          <div class=" text-end  text-center">
        <h1 class="">boAt Wave Call Smart Watch</h1>
            <h4 class="">let it be !</h4>

              <br />
                   <a href="#" class="text-center mx-4 link-primary">Buy Now </a>
                   <a href="#" class="text-center mx-4 link-primary"> ViewMore</a>

          </div>
        </div>
               </div>
          
       </div>
      


        <div class="col-6 p-0" style="background-color:black" >
           <div class=" d-flex justify-content-center carousel-item m-0">
            <div class="col-6" style="overflow:hidden"> 
                <img src="../variablesImages/advetisements/boatbudsadd.jpg" class="w-100 addimg scaleAnimClass" /></div>
                <div class="col-6 container d-flex justify-content-center" style="margin-top:10vh">
          <div class=" text-end  text-light text-center">
             <h1 class="">boAt Airdopes 141 </h1>
            <h4 class="">Music in blood</h4>

              <br />
                   <a href="#" class="text-center mx-4 link-primary">Buy Now </a>
                   <a href="#" class="text-center mx-4 link-primary"> ViewMore</a>

          </div>
        </div>
               </div>
          
       </div>
      
   </div>
        </div>
    
    

         <div class=" d-flex  h-100 w-100 bg-light sticky-top m-auto justify-content-center p-0"  style="font-family: 'Quicksand', sans-serif;z-index:7">
            <div class="col-8 d-flex justify-content-center" style="background-color:black;overflow:hidden">
             <img src="../variablesImages/advetisements/iphone14proadd.jpg" class="scaleAnimClass2 h-75" />
                </div>
                <div class="container mb-4 col-4 d-flex justify-content-center align-items-center  " >
          <div class=" text-end bg-light text-dark align-items-center text-center">
            <h1 class="display-1">iphone 14 Pro Max</h1>
            <h4 class="">Go Beyond</h4>

              <br />
                    <a href="#" class="text-center h4 mx-4 link-primary">Buy Now </a>
                   <a href="#" class="text-center h4 mx-4 link-primary"> ViewMore</a>

          </div>
        </div>
               </div>

    

         <div class="p-0  h-100 bg-light w-100 d-flex justify-content-center m-auto sticky-top "  style="font-family: 'Quicksand', sans-serif;margin-top:0;padding-top:0;z-index:8">
             <div class="container col-4 d-flex align-items-center justify-content-center">
          <div class="  text-dark bg-light text-center">
            <h1 class="display-1">ipad Pro</h1>
            <h4 class="">Creativity on your PALMS</h4>

              <br />
                    <a href="#" class="text-center h4  mx-4 link-primary">Buy Now </a>
                   <a href="#" class="text-center h4 mx-4 link-primary"> ViewMore</a>

          </div>
        </div>
             
            <div class="col-8 d-flex justify-content-center align-items-center" style="background-color:black;overflow:hidden">
                 <img src="../variablesImages/advetisements/appletabletadd.jpg" class="h-50 alphaAnimClass" /> 

             </div>
                
               </div>       

</asp:Content>

