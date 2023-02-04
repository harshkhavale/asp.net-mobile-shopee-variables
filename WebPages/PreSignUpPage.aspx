<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.master" AutoEventWireup="true" CodeFile="PreSignUpPage.aspx.cs" Inherits="WebPages_PreSignUpPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=" d-flex m-auto justify-content-center" style="font-family: 'Quicksand', sans-serif;background-image:url('../variablesImages/variablesBg1.png');background-repeat:no-repeat;background-size:contain;background-position:center"  >
          <div class="my-4 h-75 mb-4">
        <div class=" d-flex justify-content-center">
        <div class="container my-4" style="font-family: 'Quicksand', sans-serif">

         
        <div class="text-center p-4" >

        <div class="card-body">
          <h5 class="card-title text-primary ">VARIABLES !</h5>
            <p class="text-muted my-2">NOTE : Check your GMAIL's 2 step verification in done.</p>
            <br />
              <asp:Label ID="otpstat" runat="server" Text=""  class="form-label text-wrap text-success my-2 "
                          Visible="True"></asp:Label>
        </div>
      </div>
            

    </div>


        
              </div>    
        <div class="col-12 my-4 container justify-content-center shadow-lg">
                 <div id="precontent" class="text-center my-4" runat="server">
                     <br />

                       <asp:Label ID="Label5" runat="server" Text="Email"  class="form-label text-center my-4 col-3"
                  Visible="True"></asp:Label>
                 <div class="d-flex align-items-center justify-content-center col-sm p-4 ">

                
             
      
                &nbsp;<div class="col-8 mx-4">
                          <asp:TextBox ID="email" class="form-control "  runat="server" 
                              Visible="True"></asp:TextBox>
                            
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                              ControlToValidate="email" ErrorMessage="Check Email" 
                              ForeColor="#FF3300"></asp:RequiredFieldValidator>
                            
                    

                      </div>
   
                      </div>
                     <div class="d-flex justify-content-center">
                    <button class="btn btn-md d-flex justify-content-center  btn-light ms-4">
                        <img src="../variablesImages/icons/password.png" style="height:5vh" />
                    <asp:Button ID="SendOtpBtn" CssClass="btn"  runat="server" Text="Send OTP" UseSubmitBehavior="false" OnClick="SendOtpBtn_Click" CausesValidation="False" />
                     </button>
                            </div>        
                      </div>



                <div id="postcontent" class="text-center my-2" runat="server">
                    <asp:Label ID="Label7" runat="server" Text="Enter OTP"  class="form-label my-2 col-3 "
          Visible="True"></asp:Label>
                    <br />
                 <div class="col-sm d-flex my-2 align-items-center justify-content-center col-sm p-4">
                   
                     
     
             
      
&nbsp;<div class="col-4 mx-4">
     
    
          <asp:TextBox ID="OTP" class="form-control " runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
              ControlToValidate="OTP" ErrorMessage="Check OTP" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>

             
     
   
       
      </div>
 
     
  </div>
                    <div class="d-flex justify-content-center">
                    <button class="btn btn-sm d-flex text-center justify-content-center   btn-primary ms-4">
                     <asp:Button ID="SubmitOtpbtn" class="btn text-light btn-sm" runat="server" Text="submit" UseSubmitBehavior="false" OnClick="SubmitOtpbtn_Click" CausesValidation="False" />
                        </button>
                        </div>
              <asp:Label ID="otpstatus" runat="server" Text=""  class="form-label text-danger"
          Visible="True"></asp:Label>
 
                </div>
              
    <br />
        <br />
             <asp:HyperLink ID="HaveAccount2" CssClass="mx-4" runat="server" 
                      NavigateUrl="~/WebPages/SignInPage.aspx">Alredy have an Acoount?</asp:HyperLink>
             <br />
             <br />
        </div>

        </div>
     
        </div>


</asp:Content>

