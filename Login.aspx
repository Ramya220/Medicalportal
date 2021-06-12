<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4_Database_.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body align="center" style="background-image:url('bg1.jpeg')">
    <p style="font-family:'brush script mt';color:red;font-size:30pt;margin:auto">DRUG DEALER'S HOUSE</p><hr />
        
    <div align="center">
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" Width="30%" HorizontalAlign="Center" BackColor="#B4DCEF" style="margin-top:5%;box-shadow:10px 10px 5px gray;border-style:solid;padding:2%" runat="server">
            LOGIN<br />
            <asp:Label ID="Label1" ForeColor="red" runat="server" Text=""></asp:Label>
            <br />
            <img alt="" src="login_logo.png" style="height: 60px; width: 85px" />
            <br />
            <br />
            Email Id/Mobile number<br />
            <asp:TextBox ID="txtemail" placeholder="john@gmail.com" runat="server"></asp:TextBox>
            <br />
            <br />
            Password<br />
            <asp:TextBox type="password" placeholder="password" ID="txtpass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="LOGIN" OnClick="Button1_Click" />
            <br />
            <br />
            <a href="Signup.aspx">New user? Register here.</a>
        </asp:Panel>
    </form>
        </div>
     <footer align="center" style="height:30px;padding:8px;background-color:black;color:white;margin:auto;margin-left:-2%;margin-right:-2%;margin-top:10%;margin-bottom:-2%">
     Copyright &#169 2020 Drug Dealer's House. All Rights Reserved
 </footer>
 </body>
</html>
