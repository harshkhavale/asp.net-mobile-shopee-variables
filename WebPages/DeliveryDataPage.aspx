<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="DeliveryDataPage.aspx.cs" Inherits="WebPages_DeliveryDataPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container my-2 " style="font-size:large;font-family: 'Quicksand', sans-serif;">
        <h2 class="my-4 btn btn-warning">Deliveries</h2>
        <br />
        <asp:Repeater ID="Repeater" runat="server">

            <HeaderTemplate>
                 <table class="table">
  <thead>
    <tr>
      <th scope="col">DeliveryID's</th>
      <th scope="col">ProductId</th>
              <th scope="col">DateTime</th>

              <th scope="col">UserName</th>

              <th scope="col">Address</th>
                      <th scope="col">PinCode</th>
          <th scope="col">Mo.No</th>
                      <th scope="col">Name</th>
                              <th scope="col">PaymentMode</th>


      <th scope="col">Edit</th>

     
    </tr>
  </thead>
  <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                  <tr>
      <th scope="row"> <%#Eval("DeliveryId") %> </th>
                            <td><%#Eval("ProductId") %></td>

      <td><%#Eval("DateTime") %></td>
                            <td><%#Eval("UserName") %></td>

                            <td><%#Eval("CustomerAddress") %></td>

                            <td><%#Eval("CustomerPinCode") %></td>
                       <td><%#Eval("CustomerMoNo") %></td>

                            <td><%#Eval("CustomerName") %></td>
                                                  <td><%#Eval("PaymentMode") %></td>


      <td ><p class="btn btn-danger btn-sm">remove</p></td>

     
    </tr>
   
            </ItemTemplate>
            <FooterTemplate>
                 </tbody>
</table>
            </FooterTemplate>
        </asp:Repeater>
        

       
  
  
 
    </div>
</asp:Content>

