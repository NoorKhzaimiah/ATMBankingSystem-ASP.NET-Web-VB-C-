<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="withdraw.aspx.cs" Inherits="ATMSYSTEM.withdraw" %>

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
            height: 292px;
            width: 1074px;
        }
        .auto-style7 {
            background-color: #89201E;
        }
        .auto-style9 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style10 {
            font-size: medium;
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
                            <asp:MenuItem Text="Services" Value="Services" NavigateUrl="~/Services.aspx"></asp:MenuItem>
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
                <td colspan="3"><img src="Images/atm-withdrawal_660_100114031558.jpg" class="auto-style6" />
                </td>
            </tr>
            <tr style =" width:1100px">
                <td colspan="3" class="auto-style4">
                     <strong class="newStyle4">
                     <br />
                     Enter you Branch&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="BranchID" DataValueField="BranchID">
                     </asp:DropDownList>
                     &nbsp;&nbsp;<br />
                     Enter The value to Withdrow:<br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style7" Height="41px" Width="233px"></asp:TextBox>
                     <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style10" ErrorMessage="not in range!" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                     <br />
                     <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Height="46px" OnClick="Button2_Click" Text="UpdateBalance" Width="217px" />
                     <br />
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Account] WHERE ([CardNo] = @CardNo)" DeleteCommand="DELETE FROM [Account] WHERE [CardNo] = @CardNo" InsertCommand="INSERT INTO [Account] ([CardNo], [BankID], [BranchID], [Name], [Address], [Balance], [Password]) VALUES (@CardNo, @BankID, @BranchID, @Name, @Address, @Balance, @Password)"  UpdateCommand="UPDATE [Account] SET [Balance] = Balance - @withdraw WHERE [CardNo] = @CardNo" >
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
                         <SelectParameters>
                             <asp:SessionParameter Name="CardNo" SessionField="CardNo" Type="Int32" />
                         </SelectParameters>
                         <UpdateParameters>
                          <asp:Parameter Name="withdraw" Type="Int32" />
                             <asp:Parameter Name="CardNo" Type="Int32" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [status] WHERE [date] = @date" InsertCommand="INSERT INTO [status] ([withdrow], [deposit], [Ammount], [date], [CardNo], [BranchID]) VALUES (@withdrow, @deposit, @Ammount, @date, @CardNo, @BranchID)" OnSelecting="SqlDataSource2_Selecting" SelectCommand="SELECT * FROM [status] WHERE (([BranchID] = @BranchID) AND ([CardNo] = @CardNo))" UpdateCommand="UPDATE [status] SET [withdrow] = @withdrow, [deposit] = @deposit, [Ammount] = @Ammount, [CardNo] = @CardNo, [BranchID] = @BranchID WHERE [date] = @date">
                         <DeleteParameters>
                             <asp:Parameter Name="date" Type="String" />
                         </DeleteParameters>
                         <InsertParameters>
                             <asp:Parameter Name="withdrow" Type="String" />
                             <asp:Parameter Name="deposit" Type="String" />
                             <asp:Parameter Name="Ammount" Type="String" />
                             <asp:Parameter Name="date" Type="String" />
                             <asp:Parameter Name="CardNo" Type="String" />
                             <asp:Parameter Name="BranchID" Type="String" />
                         </InsertParameters>
                         <SelectParameters>
                             <asp:ControlParameter ControlID="DropDownList1" Name="BranchID" PropertyName="SelectedValue" Type="String" />
                             <asp:SessionParameter Name="CardNo" SessionField="CardNo" Type="String" />
                         </SelectParameters>
                         <UpdateParameters>
                             <asp:Parameter Name="withdrow" Type="String" />
                             <asp:Parameter Name="deposit" Type="String" />
                             <asp:Parameter Name="Ammount" Type="String" />
                             <asp:Parameter Name="CardNo" Type="String" />
                             <asp:Parameter Name="BranchID" Type="String" />
                             <asp:Parameter Name="date" Type="String" />
                         </UpdateParameters>
                     </asp:SqlDataSource>
                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Branch]"></asp:SqlDataSource>
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                     <br />
                     <br />
                     <br />
                     </strong></td>
            </tr>
            <tr style="width:1100px;height:20px">
                <td colspan="3" class="auto-style5">
                    &nbsp;</td>
            </tr>
        </table>
           
        
    </form>
</body>
</html>
