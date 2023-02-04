<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="CategoriesPage.aspx.cs" Inherits="WebPages_CategoriesPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container mt-4 d-flex justify-content-center">
           <h5 style="font-size:large;font-family: 'Quicksand', sans-serif;" class="badge bg-success my-4 ">Categories</h5>
       
    <div class="container mt-4 text-center" style="font-size:large;font-family: 'Quicksand', sans-serif;">

        &nbsp;<div class="d-flex mt-4 text-center align-middle bg-light shadow justify-content-center" >
   
      &nbsp;
            <br /> 
   
      <asp:Label ID="Label1" runat="server" Text="Add Category" 
          Visible="True"></asp:Label>
            
     
&nbsp;<div class="col-4 mx-4">
          <asp:TextBox ID="AddCategoryName" class="form-control" runat="server" 
              Visible="True"></asp:TextBox>
                 
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ControlToValidate="AddCategoryName" ErrorMessage="Category cant be empty" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
              <div>
        <asp:Button ID="AddCategoryNameBtn" CssClass="btn btn-primary" runat="server" 
                      Text="Add Category" OnClick="AddCategoryNameBtn_Click" EnableViewState="False" />
                  <br />
                  <br />
                  <asp:Label ID="Notification" runat="server"></asp:Label>
                  <br />
            </div>
   
  </div>
        



    </div>

    <div class="container my-2 " style="font-size:large;font-family: 'Quicksand', sans-serif;">
        <h2 class="my-4 btn btn-warning">ALL CATEGORIES</h2>
        <br />
        <asp:Repeater ID="RepeaterCategory" runat="server">

            <HeaderTemplate>
                 <table class="table">
  <thead>
    <tr>
      <th scope="col">ID's</th>
      <th scope="col">CategoryName's</th>
      <th scope="col">Edit</th>

     
    </tr>
  </thead>
  <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                  <tr>
      <th scope="row"> <%#Eval("CategoryId") %> </th>
      <td><%#Eval("CategoryName") %></td>
      <td ><p class="btn btn-danger btn-sm">remove</p></td>

     
    </tr>
   
            </ItemTemplate>
            <FooterTemplate>
                 </tbody>
</table>
            </FooterTemplate>
        </asp:Repeater>
        

       
  
  
 
    </div>
        </div>
</asp:Content>

