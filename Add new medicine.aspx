<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add new medicine.aspx.cs" Inherits="WebApplication4_Database_.Add_new_medicine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-color:burlywood;
        }
        .div1{
            
            margin:auto;
            padding:30px;
            border-style:solid;
            width:30%;
        }
        .textt{
            font-size:15pt;
        }
    </style>
</head>
<body align="center">
    <form  id="form1" runat="server">
        <div align="center" style="margin-bottom:5%;">
            <h1 style="margin:auto">Add new Medicine</h1>
        </div>
        
        <div class="div1" align="center">
              <h2>Enter the Details</h2>
            <asp:Label style="color:red" ID="Label1" runat="server"></asp:Label>

            <br>
            <asp:TextBox class="textt" ID="TextBox" runat="server" placeholder="Enter Medicine Name"></asp:TextBox>
            <br><br>
            <asp:TextBox class="textt" ID="TextBox2" runat="server" placeholder="Enter the stock quantity"></asp:TextBox>
            <br><br>
            <asp:Button class="textt" ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
            <br><br>
            <asp:Button class="textt" ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" />
            <br>


        </div>
    </form>
</body>
</html>
