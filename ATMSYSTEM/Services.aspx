<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="ATMSYSTEM.Services" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
 
   
    <style type="text/css">
        .auto-style1 {
            width: 60px;
            height: 50px;
        }
        .auto-style2 {
            width: 149px;
            height: 50px;
            text-align: right;
            font-size: large;
            color: #800000;
        }
        .auto-style3 {
            width: 900px;
            height: 50px;
        }
        .newStyle1 {
            font-family: "Tempus Sans ITC";
        }
        .newStyle2 {
            font-family: "Tempus Sans ITC";
        }
        .auto-style4 {
            font-family: sans-serif;
            font-size: xx-large;
            letter-spacing: normal;
            height: 20px;
            text-align: center;
            color: #800000;
        }
        .newStyle3 {
            font-family: "Ink Free";
        }
        .newStyle4 {
            font-family: "Tw Cen MT";
        }
        .newStyle5 {
            background-color: #800000;
        }
        .auto-style6 {
            background-color: #800000;
            font-size: x-large;
        }
        .auto-style7 {
            text-align: center;
        }
        .auto-style8 {
            font-size: x-large;
            color: #FFFFFF;
            background-color: #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="widows:1100px;margin:0 auto">
            <tr style="width:1100px;">
                <td class="auto-style1">
                    <img src="Images/ATMlogo.jpg" style="height: 60px; width: 60px" />
                </td>
                <td class="auto-style2"><strong class="auto-style3">ATM SYSTEM</strong></td>
                <td style="text-align:right" class="auto-style3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="44px" ImageUrl="~/Images/g-logo.png" Width="40px" /> &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="41px" ImageUrl="~/Images/twitterlogo_1x.png" Width="42px" /> &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="43px" ImageUrl="~/Images/facebooklogo.png" Width="40px" />
                </td>
           
            </tr>
            <tr style =" width:1100px;height:40px;background-color:maroon">
                <td colspan="3">
                      <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Project.aspx" ></asp:MenuItem>
                            <asp:MenuItem Text="Services" Value="Services"  ></asp:MenuItem>
                            <asp:MenuItem Text="Setting" Value="Setting" NavigateUrl="~/Setting.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="About us" Value="About us" NavigateUrl="~/AboutUs.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Logout.aspx"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#FFCC99" />
                        <StaticMenuItemStyle ForeColor="White" HorizontalPadding="75px" Font-Size="Large" />
                    </asp:Menu>

                   </td>
            </tr>
            <tr style="width:1100px;height:300px">
                <td colspan="3"><img src="Images/pic6.jpg" style="height: 311px; width: 1353px" />
                </td>
            </tr>
            <tr style =" width:1100px">
                <td colspan="3" class="auto-style4">
                     <strong class="newStyle4">
                     <br />
                     Choose a Service :<br />
                     </strong></td>
            </tr>
            <tr style="width:1100px;height:20px">
                <td colspan="3" class="auto-style7">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style6" ForeColor="White" Height="49px" Text="Withdrow" Width="306px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style6" ForeColor="White" Height="49px" Text="Deposit" Width="306px" OnClick="Button2_Click" />
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style6" ForeColor="White" Height="49px" Text="ViewBalance" Width="306px" OnClick="Button3_Click" />
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style8" Height="45px" OnClick="Button4_Click" Text="Account Statement" Width="260px" />
                </td>
            </tr>
        </table>
           
        
    </form>
</body>
</html>

