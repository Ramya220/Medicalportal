<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="WebApplication4_Database_.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .c1{
            margin:100px;
            box-shadow:10px 10px 5px gray;
            font-size:20pt;
        }
        body
        {
            background-color:blanchedalmond;
        }
        button{
            
        }
    </style>
</head>
<body align="center">
    <form  id="form1" runat="server">
        <div align="center">
            <asp:Panel style="border-style:solid;border-color:black" ID="Panel1" runat="server">
                <h1>
                Medical Store Management System
            </h1>
            <asp:Button Class="c1" ID="Button4" runat="server" Height="94px" Text="Sell now" Width="243px" OnClick="Button1_Click" />
            <asp:Button Class="c1" ID="Button5" runat="server" Height="93px" style="margin-top: 0px" Text="See Stock" Width="243px" OnClick="Button2_Click" />
            <asp:Button Class="c1" ID="Button6" runat="server" Height="93px" OnClick="Button3_Click" Text="Add Item" Width="230px" />
            <asp:Button Class="c1" ID="Button7" runat="server" Height="93px" OnClick="Button4_Click" Text="Sold History" Width="230px" />
       
            </asp:Panel>
            
        </div>
    </form>
    
</body>
</html>
