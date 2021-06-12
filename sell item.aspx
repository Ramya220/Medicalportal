<%@ Page MasterPageFile="~/Navbar.Master" Language="C#" AutoEventWireup="true" CodeBehind="sell item.aspx.cs" Inherits="WebApplication4_Database_.sell_item" %>

<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center" style="margin:auto;margin-top:10%;border-style:groove;width:50%;background-color:#D4DCEF;box-shadow:10px 10px 5px gray;">
            <h1>SELLING DRUG DETAILS</h1>
             <asp:Label style="color:green" ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Panel  ID="Panel1"   runat="server">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <p>Select the Medicine from the below list</p>
                <asp:DropDownList style="font-size:13pt;" Class="ddl1" ID="DropDownList1" runat="server" Height="28px" Width="171px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList><br><br />
                <asp:Button ID="Button3" runat="server" Text="Confirm" OnClick="Button3_Click" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <p>Enter the Quantity of The medicine</p>
                <asp:TextBox style="font-size:13pt;" placeholder="Quantity of medicine" Class="ddl1" ID="TextBox1" runat="server" Height="30px" Width="170px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <br><asp:Button ID="Button5" runat="server" Text="Continue" OnClick="Button5_Click" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <p>Entert the Selling date/Leave blank if you want to enter todays date</p>
            <asp:TextBox ID="TextBox2" placeholder="DD/MM/YYYY" runat="server" Height="25px" Width="184px"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" Text="Choose" OnClick="Button4_Click" />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" Visible="False" Width="220px" BorderWidth="1px" OnSelectionChanged="Calendar1_SelectionChanged1" ShowGridLines="True" VisibleDate="2020-11-02">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
            </asp:View>
        </asp:MultiView>
            
            <br><br>
            <asp:Button style="font-size:13pt;" Enabled="false" Class="ddl1" ID="Button1" runat="server" Text="Sell item" Height="35px" OnClick="Button1_Click" />
            <br><br>
           
                </asp:Panel>
             
        </div>
        
</asp:Content>
