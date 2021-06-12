<%@ Page MasterPageFile="~/Navbar.Master" Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication4_Database_.HomePage" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link href='https://fonts.googleapis.com/css?family=Alike' rel='stylesheet'>
      <script src="Scripts/jquery-3.5.1.min.js"></script>
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div id="piechart" style="padding-bottom:300px">
                <asp:Chart style="width:40%;float:left;border-style:solid;border-color:black" ID="Chart1" runat="server" OnLoad="Chart1_Load" Width="373px" Palette="Pastel" BackImageTransparentColor="Transparent">
                    <series>
                        <asp:Series Name="Series1">
                        </asp:Series>
                    </series>
                    <Legends>
                        <asp:Legend Alignment="Center" Docking="Right" IsTextAutoFit="false" Name="default" LegendStyle="Column"></asp:Legend>
                    </Legends>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
           <asp:Chart style="float:right;margin-right:120px" ID="Chart2" runat="server" Palette="EarthTones" Width="481px">
                    <series>
                        <asp:Series Name="Series1">
                        </asp:Series>
                    </series>
                    
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>   
                </asp:Chart>
            </div>
    <div align="center" style="">
        <p style="width:40%;float:left;font-family: 'Alike';font-size: 22px;">Sold details Medicine wise</p>
        <p style="width:40%;float:right;margin-right:120px;font-family: 'Alike';font-size: 22px;">Daily status of sales</p>
    </div>
    
    <hr style="margin-top:70px" />
        <img style="width:20%;height:20%;margin-left:20px f" src="logo.svg" />
        <p style="width:70%;float:right;font-family: 'Alike';font-size: 22px;">Medicine is A Science of Uncertainty and An Art of Probability</p>

         <hr />
</asp:Content>
