<%@ Page MasterPageFile="~/Navbar.Master" Language="C#" AutoEventWireup="true" CodeBehind="sold history.aspx.cs" Inherits="WebApplication4_Database_.sold_history" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <style>
        p{
            font-size:15pt;
        }
        body{
            background-color:antiquewhite;
        }
    </style>
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div align="center" style="font-size:15pt">
            <h1>Sold Medicine Details</h1>
            <p>Enter the date to search between intervals</p>
            Start Date : <asp:TextBox ID="TextBox1" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox><asp:Button ID="Button2" runat="server" Text="Choose" OnClick="Button2_Click" /><asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
            End Date :   <asp:TextBox ID="TextBox2" placeholder="MM/DD/YYYY" runat="server"></asp:TextBox><asp:Button ID="Button3" runat="server" Text="Choose" OnClick="Button3_Click" /><asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" Visible="False" Width="220px">
                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                <OtherMonthDayStyle ForeColor="#CC9966" />
                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                <SelectorStyle BackColor="#FFCC66" />
                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
            </asp:Calendar>
            <asp:Button ID="Button4" runat="server" Text="Search" OnClick="Button4_Click" />
            <asp:GridView style="width:50%;margin-top:30px;font-size:17pt" ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"  
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
            <br>
            <asp:Button style="font-size:12pt" ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
            

        </div>
   
</asp:Content>