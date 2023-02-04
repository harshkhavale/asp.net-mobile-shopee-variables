<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.master" AutoEventWireup="true" CodeFile="SignUpPage.aspx.cs" Inherits="WebPages_SignUpPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=" d-flex m-auto justify-content-center" style="font-family: 'Quicksand', sans-serif;background-image:url('../variablesImages/variablesBg1.png');background-repeat:no-repeat;background-size:contain;background-position:center" >
         <br /><div id="maincontent" class="container col-3 bg-light shadow-lg mt-4" runat="server" style="">
                 
                    <div class="d-flex mx-4 justify-content-around">
                 <div class="col-sm mt-4 d-flex">
      <asp:Label ID="Label1" runat="server" Text="UserName"  class="form-label col-3"
          Visible="True"></asp:Label>
             
     
&nbsp;<div class="col-8 mx-4">
          <asp:TextBox ID="username" class="form-control " runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ControlToValidate="username" ErrorMessage="Check UserName" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>
                </div>

              <div class="mx-4 d-flex justify-content-around">
                 <div class="col-sm d-flex">
      <asp:Label ID="Label2" runat="server" Text="Password"  class="form-label col-3"
          Visible="True"></asp:Label>
           
     
&nbsp;<div class="col-6 mx-4">
          <asp:TextBox ID="password" TextMode="Password" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="password" ErrorMessage="Check Password" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>

                </div>
                           

                  
                           <div class="d-flex mx-4 justify-content-around">
                 <div class="col-sm d-flex">
      <asp:Label ID="Label3" runat="server" Text="Confirm Password"  class="form-label col-3"
          Visible="True"></asp:Label>
             
      
&nbsp;<div class="col-6 mx-4">
          <asp:TextBox ID="confirmpassword" TextMode="Password" class="form-control " runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ControlToValidate="confirmpassword" ErrorMessage="Password and Confirm-Password are not same" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>

                </div>



                 <div class="mx-4 d-flex justify-content-around">
                 <div class="col-sm d-flex">
      <asp:Label ID="Label6" runat="server" Text="Mobile No."  class="form-label col-3"
          Visible="True"></asp:Label>
             
      
&nbsp;<div class="col-8 mx-4">
          <asp:TextBox ID="mobileno" class="form-control " runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
              ControlToValidate="mobileno" ErrorMessage="Check MobileNUmber" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>
                </div>

              
              <div class=" mx-4 d-flex justify-content-around">
                 <div class="col-sm d-flex">
      <asp:Label ID="Label4" runat="server" Text="FullName"  class="form-label col-3"
          Visible="True"></asp:Label>
             
      
&nbsp;<div class="col-8 mx-4">
          <asp:TextBox ID="fullname" class="form-control " runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ControlToValidate="fullname" ErrorMessage="Check fullname" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>

                </div>
                        


              <div class="mx-2">
             
              
            
             




                  </div>







                  <asp:Button ID="SubmitBtn" class="btn btn-primary my-4 mx-4" runat="server" Text="Create Account" OnClick="SubmitBtn_Click" />
               <br />
             <asp:HyperLink ID="HaveAccount" CssClass="mx-4" runat="server" 
                      NavigateUrl="~/SignInPage.aspx">Allready Have an Acoount</asp:HyperLink>
                            <br />
                        <br />
                        <br />
              <br />
                       
                          



                  </div>
        </div>     
</asp:Content>

