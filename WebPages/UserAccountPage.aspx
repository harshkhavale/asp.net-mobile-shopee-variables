<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/User.master" AutoEventWireup="true" CodeFile="UserAccountPage.aspx.cs" Inherits="WebPages_UserAccountPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container row " style="font-family: 'Quicksand', sans-serif;">
        <div class="col-5 my-4">
       <div class="d-flex justify-content-center">
            <img src="../variablesImages/icons/robot.png" style="height:25vh" />
            </div>
            <div class="d-flex my-4 justify-content-center">
         
    <asp:Label ID="FullNameLbl" runat="server" Text=""  class="display-6 text-center form-label mx-2"
          Visible="True"></asp:Label>
&nbsp;
      </div>
            <div class="my-4">
                 <div id="list-example" class="list-group">
      <p class="list-group-item  text-center" >  
          <asp:Button ID="UserInfo" runat="server" OnClick="UserInfo_Click" CssClass="btn btn-light rounded-1 text-primary mx-4 text-center"   Text="User-Info" UseSubmitBehavior="False" CausesValidation="false"/>
</p>
      <p class="list-group-item  text-center" >     
          <asp:Button ID="ChangePassword" runat="server" OnClick="ChangePassword_Click" CssClass="btn btn-light rounded-1 text-primary mx-4"   Text="Change Password" UseSubmitBehavior="False" CausesValidation="false"/>
</p>
      <p class="list-group-item  text-center" >        
          <asp:Button ID="Orders" runat="server" OnClick="Orders_Click" CssClass="btn btn-light rounded-1 text-primary mx-4"   Text="Your Orders" UseSubmitBehavior="False" CausesValidation="false"/>
</p>
    </div>
            </div>
          
        </div>

         <div class="col-7 d-flex mt-4 justify-content-center container">
             <div class="mt-4">
            <h5 style="font-size:large;font-family: 'Quicksand', sans-serif;" id="usrcartlbl" runat="server" class=" my-4 badge bg-warning ">USER</h5>
                        
                 
                 <div id="userinfobox" class="border border-5 p-4 rounded-4 shadow" runat="server">


           

                <div class="col-sm d-flex my-2">
      <asp:Label ID="Label1" runat="server" Text="User Name"  class="form-label mx-2"
          Visible="True"></asp:Label>
             <br />
      
&nbsp;<div class="col-4">
           <asp:Label ID="UserNameLbl" runat="server" Text=""  class="form-label mx-2"
          Visible="True"></asp:Label>
      </div>
   
  </div>

                <div class="col-sm d-flex my-2">
      <asp:Label ID="Label3" runat="server" Text="Email"  class="form-label mx-2"
          Visible="True"></asp:Label>
             <br />
      
&nbsp;<div class="col-4">
           <asp:Label ID="EmailLbl" runat="server" Text=""  class="form-label mx-2"
          Visible="True"></asp:Label>
      </div>
   
  </div>
                  <div class="col-sm d-flex my-2">
      <asp:Label ID="Label7" runat="server" Text="Mobile No."  class="form-label mx-2"
          Visible="True"></asp:Label>
             <br />
      
&nbsp;<div class="col-4">
           <asp:Label ID="MobileNo" runat="server" Text=""  class="form-label mx-2"
          Visible="True"></asp:Label>
      </div>
   
  </div>
            <div class="col-sm d-flex">     
      <asp:Label ID="PassLbl" runat="server" Text="" class="form-label"
          Visible="False"></asp:Label>
             </div>
      
&nbsp;
  
             
        </div >

            <div id="changepasswordbox" class="border border-5 p-4 rounded-4 shadow" runat="server">
            <div class="col-sm d-flex my-2">
      <asp:Label ID="Label4" runat="server" Text="Current Password"  class="form-label col-2"
          Visible="True"></asp:Label>
             
      
&nbsp;<div class="col-8">
          <asp:TextBox ID="oldpassword"  TextMode="Password"  class="form-control mx-3" runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ControlToValidate="oldpassword" ErrorMessage="password cant be empty" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>
            <div class="col-sm d-flex my-2">
      <asp:Label ID="Label5" runat="server" Text="New Password"  class="form-label col-2"
          Visible="True"></asp:Label>
             
      
&nbsp;<div class="col-8">
          <asp:TextBox ID="newpassword" TextMode="Password" class="form-control mx-3" runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
              ControlToValidate="newpassword" ErrorMessage="password cant be empty" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>
                 <div class="col-sm d-flex my-2">
      <asp:Label ID="Label6" runat="server" Text="Confirm Password"  class="form-label col-2"
          Visible="True"></asp:Label>
             
      
&nbsp;<div class="col-8">
          <asp:TextBox ID="confirmpassword" TextMode="Password" class="form-control mx-3" runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
              ControlToValidate="confirmpassword" ErrorMessage="password cant be empty" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>
           <asp:Button ID="ChangePasswordBtn" OnClick="ChangePasswordBtn_Click" UseSubmitBehavior="False" class="btn btn-md btn-primary my-4" runat="server" Text="change password" 
                        />
                <asp:Label ID="msg" runat="server" CssClass="text-danger" Text=""></asp:Label>
              </div>
      
                 <div id="purchasebox" class="border border-5 p-4 rounded-4 shadow" runat="server">
                           <h5 style="font-size:large;font-family: 'Quicksand', sans-serif;"  id="H1" runat="server" class="my-4 badge text-dark bg-warning mx-4">ORDERED PRODUCT'S</h5>

                       <div class="col-10 container " id="Purchased" runat="server" style="font-family: 'Quicksand', sans-serif;">

             <asp:Repeater ID="PurchaseRptr" OnItemCommand="PurchaseRptr_ItemCommand" runat="server">
                 <ItemTemplate>

                             <div class="row d-flex border rounded mb-4 shadow-sm " style="display:flex">

                                 <div class="col-auto d-none d-lg-block mx-3 my-3">
          <img class="bd-placeholder-img" style="width:18vw" src="../variablesImages/ProductImages/<%#Eval("ProductId") %>/<%# Eval("ImageName")%><%# Eval("ImageExtention") %>" alt="<%#Eval("ImageName") %>"/>          
   <div class="d-flex justify-content-center">
                <asp:Button ID="CancelOrderBtn" runat="server" OnClick="CancelOrderBtn_Click" CssClass="btn btn-danger btn-sm rounded-1 mx-4"  CommandArgument='<%# Eval("ProductId") %>' Text="cancel order" UseSubmitBehavior="False" CausesValidation="false"/>
                </div>
        </div>
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary"><%#Eval("BrandName") %></strong>
          <p class="mb-0"><%#Eval("ProductName") %></p>
          <p class="mb-1 text-muted text-danger" style="text-decoration:line-through;color:red">₹ <%#Eval("ProductPrice") %></p>
                      <h3 class="mb-0 " > ₹ <%#Eval("ProductSellingPrice") %></h3>
            <br />
            <p>TO</p>
            <p class="d-inline-block mb-2 text-primary"><%#Eval("CustomerName") %></h5>
          <p class="mb-0"><%#Eval("CustomerAddress") %>  ,  <%#Eval("CustomerPinCode") %></p>
                      <h5 class="mb-0 " > Payment Mode : <%#Eval("PaymentMode") %></h5>

         
            <br />
         
        </div>
       
      </div>
                                                         

                     
                 </ItemTemplate>
             </asp:Repeater>
                              <asp:Label ID="msg2" runat="server" CssClass="text-danger" Text=""></asp:Label>

             
             </div>
                     </div>

         </div>

     </div>
        
    </div>
</asp:Content>

