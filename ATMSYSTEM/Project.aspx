<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="ATMSYSTEM.Project" %>

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
            width: 120px;
            height: 50px;
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
        .newStyle3 {
            font-family: "Bahnschrift SemiCondensed";
        }
        .auto-style5 {
            font-family: "Bahnschrift SemiCondensed";
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
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
                <td class="auto-style2"><strong>ATM SYSTEM</strong></td>
                <td style="text-align:right" class="auto-style3">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="44px" ImageUrl="~/Images/g-logo.png" Width="40px" /> &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="41px" ImageUrl="~/Images/twitterlogo_1x.png" Width="42px" /> &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="43px" ImageUrl="~/Images/facebooklogo.png" Width="40px" />
                </td>
            </tr>
            <tr style =" width:1100px;height:40px;background-color:maroon">
                <td colspan="3">
                    <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal">
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home" ></asp:MenuItem>
                            <asp:MenuItem Text="Services" Value="Services" NavigateUrl="~/Services.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Setting" Value="Setting" NavigateUrl="~/Setting.aspx" ></asp:MenuItem>
                            <asp:MenuItem Text="About us" Value="About us" NavigateUrl="~/AboutUs.aspx" ></asp:MenuItem>
                            <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Logout.aspx"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#FFCC99" />
                        <StaticMenuItemStyle ForeColor="White" HorizontalPadding="75px" Font-Size="Large" />
                    </asp:Menu>

                </td>
            </tr>
            <tr style="width:1100px;height:300px">
                <td colspan="3"><img src="Images/banking-system-moderzation.jpg" style="height: 311px; width: 1353px" />
                </td>
            </tr>
            <tr style =" width:1100px">
                <td colspan="3">
                     <span style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style5">An&nbsp;</span><span class="newStyle3"><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" class="auto-style6">automated teller machine</b></span><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style5">&nbsp;</span></span><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style5">(</span><span class="newStyle3"><b style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;" class="auto-style6">ATM</b></span><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style5">) 
                     is an electronic telecommunications device that enables customers of&nbsp;</span><span class="newStyle3"><a href="https://en.wikipedia.org/wiki/Financial_institution" style="text-decoration: none; color: rgb(0, 0, 0); background: none rgb(255, 255, 255); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" title="Financial institution" class="auto-style6">financial institutions</a></span><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style5">&nbsp;</span></span><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style5">to 
                     perform&nbsp;</span><span class="newStyle3"><a href="https://en.wikipedia.org/wiki/Financial_transaction" style="text-decoration: none; color: rgb(11, 0, 128); background: none rgb(255, 255, 255); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" title="Financial transaction" class="auto-style6">financial transactions</a></span><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style5">, 
                     such as cash withdrawals, deposits, transfer funds, or obtaining account information, at any time and without the need for direct interaction with bank staff.</span></td>
            </tr>
            <tr style="width:1100px;height:20px">
                <td colspan="3"><span class="auto-style6">&nbsp;</span><span style="color: rgb(34, 34, 34); font-family: sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" class="auto-style6">The idea of out-of-hours cash distribution developed from bankers&#39; needs in Asia (Japan), Europe (Sweden and the United Kingdom) and North America (the United States).<br />
                    <br />
                    Little is known of the Japanese device other than that it was called &quot;Computer Loan Machine&quot; and supplied cash as a three-month loan at 5% p.a. after inserting a credit card. The device was operational in 1966.<br />
                    <br />
                    An ATM is typically made up of the following devices: 
                    <br />
                    CPU (to control the user interface and transaction devices) Magnetic or chip card reader (to identify the customer) Encrypting PIN Pad EEP4 (similar in layout to a touch tone or calculator keypad), manufactured as part of a secure enclosure Secure cryptoprocessor, generally within a secure enclosure Display (used by the customer for performing the transaction) Function key buttons (usually close to the display) or a touchscreen (used to select the various aspects of the transaction) Record printer (to provide the customer with a record of the transaction</span></td>
            </tr>
        </table>
           
        
    </form>
</body>
</html>

