<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="ATMSYSTEM.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            background-color: #CC0000;
        }
        .auto-style2 {
            text-align: center;
            font-size: 75pt;
            background-color: #000000;
            width: 1180px;
            height: 255px;
            margin-right: 0px;
            margin-bottom: 1px;
        }
        .newStyle1 {
            font-family: "Agency FB";
        }
        .auto-style4 {
            background-color: #808080;
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style5 {
            text-align: center;
            width: 1172px;
            height: 56px;
        }
        .auto-style6 {
            background-color: #808080;
            width: 1177px;
            height: 129px;
            text-align: right;
            margin-top: 0px;
        }
        .auto-style7 {
            font-size: medium;
        }
        .newStyle2 {
        }
        .auto-style8 {
            font-size: x-large;
        }
    </style>
</head>
<body style="width: 1185px; height: 733px; margin-bottom: 34px ;background-color:gray">
    <form id="form1" runat="server">
    <div class="auto-style6">
    
        <strong style="text-align: right">
    
        <br class="auto-style1" />
    
        <strong class="newStyle2">
    
        <span class="auto-style8">&nbsp;</span><span><span class="auto-style8">Manager Login </span>
    
        <span class="auto-style7">:</span></span><span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> </strong><br />
        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" style="font-weight: 700; font-size: small" Text="Login" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Manager] WHERE (([Password] = @Password2) AND ([Name] = @Name))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="Password2" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        </strong>
    
    </div>
    <p class="auto-style2">
        <span class="newStyle1"><strong style="color: #FFFFFF">Welcome To The ATM Banking System</strong></span></p>
    <p class="auto-style5"  >
        <strong>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Height="54px" OnClick="Button1_Click" Text="Login Custumer" Width="446px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Height="56px" OnClick="Button2_Click" Text="Register" Width="523px" />
        </strong></p>
    </form>
    <p>
        &nbsp;</p>
    </body>
</html>
