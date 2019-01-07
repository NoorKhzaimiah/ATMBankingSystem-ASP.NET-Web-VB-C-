<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="ATMSYSTEM.AboutUs" %>

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
            text-align: center;
            font-size: medium;
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
            font-size: 55px;
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
        .auto-style5 {
            text-align: center;
        }
        .newStyle5 {
            background-color: #800000;
        }
        .newStyle6 {
            font-family: Algerian;
        }
        .auto-style7 {
            font-size: 55px;
        }
        .auto-style8 {
            text-align: center;
            font-size: 55px;
        }
        .auto-style9 {
            font-size: 55px;
            color: #800000;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="widows:1100px;margin:0 auto">
            <tr style="width:1100px;">
                <td class="auto-style1">
                    <img src="Images/ATMlogo.jpg" style="height: 60px; width: 60px" class="auto-style7" /><span class="auto-style7"> </span>
                </td>
                <td class="auto-style2"><strong class="auto-style3">ATM SYSTEM</strong></td>
                <td style="text-align:right" class="auto-style3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="44px" ImageUrl="~/Images/g-logo.png" Width="40px" CssClass="auto-style7" /> &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="41px" ImageUrl="~/Images/twitterlogo_1x.png" Width="42px" CssClass="auto-style7" /> &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="43px" ImageUrl="~/Images/facebooklogo.png" Width="40px" CssClass="auto-style7" />
                </td>
           
            </tr>
            <tr style =" width:1100px;height:40px;background-color:maroon">
                <td colspan="3">
                      <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home" NavigateUrl="~/Project.aspx" ></asp:MenuItem>
                            <asp:MenuItem Text="Services" Value="Services" NavigateUrl="~/Services.aspx" ></asp:MenuItem>
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
                <td colspan="3" class="auto-style5">
                    <br class="auto-style7" />
                    <span class="newStyle6"><span class="auto-style9">Made By : Noor Khzaimiah</span><br class="auto-style9" />
                    <span class="auto-style9">ID : 21511023</span><br class="auto-style9" />
                    <span class="auto-style9">Dr. Mujahed Eleat</span></span></td>
            </tr>
            <tr style =" width:1100px">
                <td colspan="3" class="auto-style4">
                     &nbsp;</td>
            </tr>
            <tr style="width:1100px;height:20px">
                <td colspan="3" class="auto-style8">
                    &nbsp;</td>
            </tr>
        </table>
           
        
    </form>
</body>
</html>
