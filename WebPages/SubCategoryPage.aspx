<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="SubCategoryPage.aspx.cs" Inherits="WebPages_SubCategoryPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="d-flex container mt-4 justify-content-center">
            <h5 style="font-size:large;font-family: 'Quicksand', sans-serif;" class="badge text-center bg-success my-4 ">SUB-CATEGORY</h5>

      <div class="container mt-4 shadow-lg " style="font-size:large;font-family: 'Quicksand', sans-serif;">

        <div class="d-flex my-3 mt-4 justify-content-start">
      <asp:Label CssClass="mx-4" ID="Label5" runat="server" Text="Select CategoryID" 
          Visible="True"></asp:Label>
             &nbsp;
            
&nbsp;<div class="col-4">
    <asp:DropDownList ID="CategoryIdDDL" CssClass="form-control" runat="server" >
                 </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Select a category" ControlToValidate="CategoryIdDDL"></asp:RequiredFieldValidator>

      </div>
             </div>
       

        &nbsp;<div class="d-flex justify-content-start" >
   
      &nbsp;
            
            
  
      <asp:Label ID="Label3" CssClass="mx-4" runat="server" Text="Add Sub-Category" 
          Visible="True"></asp:Label>
            
     
&nbsp;<div class="col-4 mx-4">
          <asp:TextBox ID="AddSubCategoryTextBox" class="form-control " runat="server" 
              Visible="True"></asp:TextBox>
                 
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ControlToValidate="AddSubCategoryTextBox" ErrorMessage="sub-Category cant be empty" 
              ForeColor="#FF3300"></asp:RequiredFieldValidator>
      </div>
            
   
  </div>
            <div>
        <asp:Button ID="AddSubCatBtn" CssClass="btn btn-primary mx-4" runat="server" 
                      Text="Add Sub-Category" OnClick="AddSubCatBtn_Click" />
                 
                  
                  <asp:Label ID="Notification" runat="server"></asp:Label>
            </div>
        </div>

     <div class="container  my-2 " style="font-size:large;font-family: 'Quicksand', sans-serif;">
             <h5 style="font-size:large;font-family: 'Quicksand', sans-serif;" class="badge text-dark bg-warning my-4 ">All SUB-CATEGORY'S</h5>

        <asp:Repeater ID="RepeaterBrands" runat="server">

            <HeaderTemplate>
                 <table class="table">
  <thead>
    <tr>
      <th scope="col">ID's</th>
      <th scope="col">Category</th>
      <th scope="col">Sub-Category</th>
      <th scope="col">Edit</th>

     
    </tr>
  </thead>
  <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                  <tr>
      <th scope="row"> <%#Eval("SubCatId") %> </th>
      <td><%#Eval("CategoryName") %></td>
      <td><%#Eval("SubCatName") %></td>
      <td><p class="btn btn-danger btn-sm">remove</p></td>

     
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

