<%@ Page MasterPageFile="~/Navbar.Master" Language="C#" AutoEventWireup="true" CodeBehind="view medicines.aspx.cs" Inherits="WebApplication4_Database_.view_medicines" %>


<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



        <div align="center">
            <h1>Drug Availability Details</h1>
            <asp:GridView style="width:50%;margin-top:30px;font-size:17pt" ID="GridView2" runat="server" BackColor="White" BorderColor="#999999"  
            BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">  
                
            <AlternatingRowStyle BackColor="#DCDCDC" />  
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />  
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />  
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />  
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />  
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />  
            <SortedAscendingCellStyle BackColor="#F1F1F1" />  
            <SortedAscendingHeaderStyle BackColor="#0000A9" />  
            <SortedDescendingCellStyle BackColor="#CAC9C9" />  
            <SortedDescendingHeaderStyle BackColor="#000065" />  
        </asp:GridView> 
 </div>
</asp:Content>
