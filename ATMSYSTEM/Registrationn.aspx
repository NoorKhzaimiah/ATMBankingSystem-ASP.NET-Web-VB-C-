<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrationn.aspx.cs" Inherits="ATMSYSTEM.Registrationn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .newStyle1 {
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
        }
        .newStyle2 {
            list-style-type: circle;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
        .auto-style10 {
            color: #000000;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style11 {
            color: #FFFFFF;
            margin-bottom: 0px;
            background-color: #000000;
        }
        .auto-style9 {
            color: #FFFFFF;
            text-align: center;
        }
        </style>
</head>
<body style="background-color:gray">
    <form id="form1" runat="server">
        <div class="auto-style8">
            <div class="auto-style8">
                <strong class="newStyle1" style="font-size: 60pt">
                <br class="auto-style10" />
                </strong><span class="auto-style10"><strong class="newStyle1" style="font-size: 60pt">Registration</strong></span><br class="auto-style10" />
    <br class="auto-style10" />
            </div>
            <div class="auto-style8">
                Choose The BankName :
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="BankId" DataValueField="BankId" CssClass="auto-style11">
            </asp:DropDownList>
            <span class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" style="color: #000000"></asp:RequiredFieldValidator>
             </span>
                </div>
                <span class="auto-style2">
            <br />
            </span>
                <span class="auto-style10">
           
            <div class="auto-style8">
                Choose The BranchName:<span class="auto-style2"><asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="auto-style11" DataSourceID="SqlDataSource2" DataTextField="BranchID" DataValueField="BranchID">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" CssClass="auto-style10" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </span>
            </div>
            </span><span class="auto-style2">
    </div>
            <div class="auto-style8">
                <span class="auto-style10">En</span></span><span class="auto-style10">ter Your Name:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Height="27px" style="color: #FFFFFF; background-color: #000000" Width="145px"></asp:TextBox>
            </span>
                <span class="auto-style2">
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" style="color: #000000"></asp:RequiredFieldValidator>
            <br />
        </div>
        <p class="auto-style9">
            <span class="auto-style10">Enter your Address:&nbsp;&nbsp;&nbsp; </span><asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style11" Height="23px" Width="143px"></asp:TextBox>
            <span class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator" Display="None"></asp:RequiredFieldValidator>
            </span>
        </p>
        <p class="auto-style9">
            <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            CardNO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style11" Height="22px" Width="142px"></asp:TextBox>
            <span class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </span>
        </p>
        <p class="auto-style9">
            <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span> <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" CssClass="auto-style11" Height="23px" Width="143px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" style="color: #000000"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style9">
            <span class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            confirm Password:&nbsp;&nbsp; </span> <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" CssClass="auto-style11" Height="23px" Width="138px" ></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox3" ErrorMessage="NOT MATCH!!" CssClass="auto-style10"></asp:CompareValidator>
            <span class="auto-style10">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            </span>
        </p>
        <p class="auto-style9">
            &nbsp;</p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="45px" OnClick="Button1_Click" style="color: #FFFFFF; background-color: #000000; font-size: x-large; text-align: center;" Text="Register" Width="407px" />
            </span>
            <br />
    <br />
    <br />
            <asp:Label ID="Label1" runat="server" style="color: #000000; font-size: large" Text="Label"></asp:Label>
    <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Bank]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Branch] WHERE ([BankID] = @BankID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="BankID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Account]" DeleteCommand="DELETE FROM [Account] WHERE [CardNo] = @CardNo" InsertCommand="INSERT INTO [Account] ([CardNo], [BankID], [BranchID], [Name], [Address], [Balance], [Password]) VALUES (@CardNo, @BankID, @BranchID, @Name, @Address, @Balance, @Password)" UpdateCommand="UPDATE [Account] SET [BankID] = @BankID, [BranchID] = @BranchID, [Name] = @Name, [Address] = @Address, [Balance] = @Balance, [Password] = @Password WHERE [CardNo] = @CardNo">
                <DeleteParameters>
                    <asp:Parameter Name="CardNo" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CardNo" Type="Int32" />
                    <asp:Parameter Name="BankID" Type="Int32" />
                    <asp:Parameter Name="BranchID" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Balance" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="BankID" Type="Int32" />
                    <asp:Parameter Name="BranchID" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Balance" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="CardNo" Type="Int32" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" Height="33px" OnClick="Button2_Click" style="color: #FFFFFF; font-weight: 700; background-color: #000000" Text="Back to Login" Width="183px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        </div>
    </form>
</body>
</html>
