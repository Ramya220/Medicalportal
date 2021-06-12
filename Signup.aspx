<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="WebApplication4_Database_.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.5.1.min.js"></script>  
</head>
<body align="center" style="background-image:url('bg1.jpeg')">
    <form id="form1" runat="server">
        <p style="font-family:'brush script mt';color:red;font-size:30pt;margin:auto">DRUG DEALER'S HOUSE</p><hr />
        <div align="center">
            <asp:Panel ID="Panel1" Width="35%" HorizontalAlign="Center" style="border-style:solid;padding:2%;margin-top:2%;box-shadow:10px 10px 5px gray;" BackColor="#D4DCEF" runat="server">
                <h2>REGISTER</h2>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
                Enter Name<br />
                <asp:TextBox ID="txtName" placeholder="John" runat="server"></asp:TextBox>
                <br />
                <br />
                Enter Email Id<br />
                <asp:TextBox ID="txtUsernameOrEmail" runat="server" type="email"  placeholder="John@gmail.com" onchange="UserOrEmailAvailability()"></asp:TextBox>
                <div id="checkusernameoremail" runat="server">                             
                    <asp:Label ID="lblStatus" runat="server"></asp:Label>  
                </div>  
                <br />
                Mobile No.<br />
                <asp:TextBox ID="txtMobile" placeholder="1234567890" MaxLength="10"  runat="server"></asp:TextBox>
                <br />
                <br />
                Password<br />
                <asp:TextBox ID="txtPassword" placeholder="Password" type="password"  runat="server"></asp:TextBox>
                <br />
                <br />
                Confirm Password<br />
                <asp:TextBox ID="txtConfirmPass" type="password" placeholder="Confirm password" runat="server" onchange="ConfirmPassword()"></asp:TextBox>
               <div id="Div1" runat="server">                             
                    <asp:Label ID="Label2" runat="server"></asp:Label>  
                </div> 
                <br />
                <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="Button1_Click" />
                <br />
                <br />
                <a href="Login.aspx">Already have an account? Login here.</a>
            </asp:Panel>
        </div>
    </form>
    <footer align="center" style="height:30px;padding:8px;background-color:black;color:white;margin:auto;margin-left:-2%;margin-right:-2%;margin-top:3%;margin-bottom:-2%">
     Copyright &#169 2020 Drug Dealer's House. All Rights Reserved
 </footer>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script type="text/javascript">  

        function ConfirmPassword() {
            var pass = document.getElementById("txtPassword").value;
            var pass1 = document.getElementById("txtConfirmPass").value;
            var msg = $("#<%=Label2.ClientID%>")[0];  
            if (pass.localeCompare(pass1) == 0) {
                msg.style.display = "block";
                msg.innerHTML = "";
            }
            else {
                msg.style.display = "block";
                msg.style.color = "red";
                msg.innerHTML = "Password Not Matching";
            }

        }

        function UserOrEmailAvailability() { //This function call on text change.             
            $.ajax({  
                type: "POST",  
                url: "Signup.aspx/CheckEmail", // this for calling the web method function in cs code.  
                data: '{useroremail: "' + $("#<%=txtUsernameOrEmail.ClientID%>")[0].value + '" }',// user name or email value  
                contentType: "application/json; charset=utf-8",  
                dataType: "json",  
                success: OnSuccess,  
                failure: function (response) {  
                    alert(response);  
                }  
            });  
        }  
  
        // function OnSuccess  
        function OnSuccess(response) {  
            var msg = $("#<%=lblStatus.ClientID%>")[0];  
            switch (response.d) {  
                case "true":  
                    msg.style.display = "block";  
                    msg.style.color = "red";  
                    msg.innerHTML = "Account Exist With This Email";  
                    break;  
                case "false":  
                    msg.style.display = "block";  
                    msg.style.color = "green";  
                    msg.innerHTML = "";  
                    break;  
            }  
        }  
  
    </script>  
</body>
</html>
