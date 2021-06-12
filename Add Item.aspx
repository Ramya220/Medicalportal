<%@ Page MasterPageFile="~/Navbar.Master" Language="C#" AutoEventWireup="true" CodeBehind="Add Item.aspx.cs" Inherits="WebApplication4_Database_.Add_Item" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia" />
    <style>
        p,h2{
            color:white;
        }
    </style>
    </asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br>
    <div style="border-style:solid;border-color:black;background-image:url('login.jpg');border-radius:10%;padding:1%; width:35%;margin:auto;">
    
        <div align="center">
            <h2>ENTER THE STOCK DETAILS</h2>
            
            <asp:Label ID="Label1" ForeColor="black" style="background-color:lawngreen;width:20%" runat="server" Text=""></asp:Label><br>
            <p>Select drug Name below</p>
            <asp:DropDownList Class="ddl1" ID="DropDownList1" runat="server" Height="39px" style="font-size:12pt;border-color:black;margin-left: 0px" Width="203px">
            </asp:DropDownList>
            <br><br>
            <p>Entert the stock arrived</p>
            <asp:TextBox style="font-size:12pt;border-color:black" Class="ddl1" ID="TextBox1" runat="server" Height="35px" Width="184px"></asp:TextBox>
            
            <br><br>

            <asp:Button style="font-size:12pt;border-color:black;background-color:lightgreen;color:black" Class="ddl1" ID="Button1" runat="server" Text="Add Stock" Height="35px" OnClick="Button1_Click" />
            <br><br>
            <asp:Button style="font-size:12pt;border-color:black" ID="Button2" runat="server" Text="Add New Item" OnClick="Button2_Click" />
            <br>
            </div>
    
        </div>

</asp:Content>
    