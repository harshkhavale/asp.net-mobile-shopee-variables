<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="UserDataPage.aspx.cs" Inherits="WebPages_UserDataPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="container my-2 " style="font-size:large;font-family: 'Quicksand', sans-serif;">
        <h2 class="my-4 btn btn-warning">UserData</h2>
        <br />
        <asp:Repeater ID="Repeater" runat="server">

            <HeaderTemplate>
                 <table class="table">
  <thead>
    <tr>
      <th scope="col">UserID's</th>
      <th scope="col">UserName</th>
              <th scope="col">Email</th>

              <th scope="col">Password</th>

              <th scope="col">FullName</th>
                      <th scope="col">Mo.no</th>

      <th scope="col">Edit</th>

     
    </tr>
  </thead>
  <tbody>
            </HeaderTemplate>
            <ItemTemplate>
                  <tr>
      <th scope="row"> <%#Eval("UserId") %> </th>
                            <td><%#Eval("Username") %></td>

      <td><%#Eval("EmailAddress") %></td>
                            <td><%#Eval("Password") %></td>

                            <td><%#Eval("FullName") %></td>

                            <td><%#Eval("PhoneNumber") %></td>

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

