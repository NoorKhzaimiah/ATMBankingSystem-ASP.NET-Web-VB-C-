<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewbalance.aspx.cs" Inherits="ATMSYSTEM.viewbalance" %>

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
        .auto-style5 {
            text-align: center;
        }
        .newStyle5 {
            background-color: #800000;
        }
        .auto-style6 {
            color: #FFFFFF;
            font-size: large;
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
                <td colspan="3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Name], [Balance] FROM [Account] WHERE ([CardNo] = @CardNo)">
                        <SelectParameters>
                            <asp:SessionParameter Name="CardNo" SessionField="CardNo" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <strong>
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CssClass="auto-style6" DataSourceID="SqlDataSource1" Height="210px" Width="1069px">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                        </Columns>
                    </asp:GridView>
                    </strong></td>
            </tr>
            <tr style =" width:1100px">
                <td colspan="3" class="auto-style4">
                     &nbsp;</td>
            </tr>
            <tr style="width:1100px;height:20px">
                <td colspan="3" class="auto-style5">
                    &nbsp;</td>
            </tr>
        </table>
           
        
    </form>
</body>
</html>