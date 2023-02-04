<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Default.master" AutoEventWireup="true" CodeFile="SignInPage.aspx.cs" Inherits="WebPages_SignInPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class=" d-flex m-auto justify-content-center" style="font-family: 'Quicksand', sans-serif;background-image:url('../variablesImages/variablesBg1.png');background-repeat:no-repeat;background-size:contain;background-position:center" >

     <div class="container px-4 col-3 bg-light shadow-lg my-4" style="font-family: 'Quicksand', sans-serif;">
             
<br />
               <asp:Label ID="Notify" CssClass="text-danger text-center my-4" runat="server" >

              </asp:Label>
                    <div class="d-flex justify-content-around my-4">

            <div class="col-sm">
      <asp:Label ID="Label2" runat="server" Text="UserName"  class="form-label"
          Visible="True"></asp:Label>
             <br />
      
&nbsp;<div class="col-12">
          <asp:TextBox ID="username" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ControlToValidate="username" ErrorMessage="Check UserName" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>
                        </div>
                              <div class="d-flex justify-content-around my-4">

           <div class="col-sm">
      <asp:Label ID="Label1" runat="server"  Text="Password"  class="form-label"
          Visible="True"></asp:Label>
             <br />
      
&nbsp;<div class="col-12">
          <asp:TextBox ID="password" TextMode="Password" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>

&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ControlToValidate="password" ErrorMessage="Check Password" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
   
  </div>
                                  </div>
             
             
              <div class="mb-3 form-check my-2">
                &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" />
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                  <br />
                  <br />
                  <asp:Button ID="login" class="btn btn-md btn-primary my-4" runat="server" Text="LogIn" 
                      OnClick="login_Click" />
                  &nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:HyperLink ID="ForgotPassword" runat="server" 
                      NavigateUrl="#">Forgot Password</asp:HyperLink>
                  <br />
                  <br />
                  <asp:HyperLink ID="HaveAccount" CssClass="mx-4" runat="server" 
                      NavigateUrl="~/WebPages/PreSignUpPage.aspx">Dont Have any Acoount?</asp:HyperLink>
                            <br />
                  <br />
                
                  <br />
                  <asp:Label ID="notification" runat="server"></asp:Label>
              </div>
                   </div>
        </div>
</asp:Content>

