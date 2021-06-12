<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication4_Database_.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <style>

</style>
</head>
<body>
    
<div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">×</a>
  <a href="Add Item.aspx">Sell Medicine</a>
  <a href="view medicines.aspx">View Stock</a>
  <a href="#">Add Stock</a>
  <a href="#">Sold History</a>
</div>

<div id="main">
  <div><button style="width:auto;float:left" class="openbtn" onclick="openNav()">☰ Menu</button> 
      <p style="font-family:'brush script mt';color:red;font-size:30pt;margin-left:33%;margin-bottom:1%;margin-top:-1%">DRUG DEALER'S HOUSE</p>
      <button style="width:auto;float:right;margin-top:-3%;font-size:13pt;background-color:lightblue">Logout</button>      
    </div>
<script>
   

function openNav() {
  document.getElementById("mySidebar").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
  document.getElementById("mySidebar").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
}
</script>
 
</body>
</html>
