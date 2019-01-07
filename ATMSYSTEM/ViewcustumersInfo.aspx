<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewcustumersInfo.aspx.cs" Inherits="ATMSYSTEM.ViewcustumersInfo" %>

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
        .auto-style16 {
            text-align: center;
            height: 20px;
        }
        .auto-style17 {
            text-align: center;
            height: 300px;
        }
        .newStyle6 {
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
        }
        .auto-style18 {
            font-family: Impact, Haettenschweiler, "Arial Narrow Bold", sans-serif;
            font-size: x-large;
            color: #F06455;
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
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="44px" ImageUrl="~/Images/g-logo.png" Width="40px" /> &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="41px" ImageUrl="~/Images/twitterlogo_1x.png" Width="42px" /> &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="43px" ImageUrl="~/Images/facebooklogo.png" Width="40px" OnClick="ImageButton3_Click" />
                </td>
           
            </tr>
            <tr style =" width:1100px;height:40px;background-color:maroon">
                <td colspan="3">
                      <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal">
                        <Items>
                            
                            
                            <asp:MenuItem Text="ViewCustumersInfo" Value="ViewCustumersInfo" ></asp:MenuItem>
                           
                            <asp:MenuItem Text="Logout" Value="Logout" NavigateUrl="~/Logout.aspx"></asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#FFCC99" />
                        <StaticMenuItemStyle ForeColor="White" HorizontalPadding="75px" Font-Size="Large" />
                    </asp:Menu>

                   </td>
            </tr>
            <tr style="width:1100px;">
                <td colspan="3" class="auto-style17">
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Account] WHERE ([BranchID] = @BranchID2)" DeleteCommand="DELETE FROM [Account] WHERE [CardNo] = @CardNo" InsertCommand="INSERT INTO [Account] ([CardNo], [BankID], [BranchID], [Name], [Address], [Balance], [Password]) VALUES (@CardNo, @BankID, @BranchID, @Name, @Address, @Balance, @Password)" UpdateCommand="UPDATE [Account] SET [BankID] = @BankID, [BranchID] = @BranchID, [Name] = @Name, [Address] = @Address, [Balance] = @Balance, [Password] = @Password WHERE [CardNo] = @CardNo">
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
                            <asp:ControlParameter ControlID="TextBox1" Name="BranchID2" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
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
                    <span class="auto-style18">Enter ID of your Branch :
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Custumers Information of the Branch :</span><br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CardNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="252px" Width="898px" AllowSorting="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CardNo" HeaderText="CardNo" ReadOnly="True" SortExpression="CardNo" />
                            <asp:BoundField DataField="BankID" HeaderText="BankID" SortExpression="BankID" />
                            <asp:BoundField DataField="BranchID" HeaderText="BranchID" SortExpression="BranchID" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Balance" HeaderText="Balance" SortExpression="Balance" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                </td>
            </tr>
            <tr style =" width:1100px">
                <td colspan="3" class="auto-style4">
                     &nbsp;</td>
            </tr>
            <tr style="width:1100px;">
                <td colspan="3" class="auto-style16">
                    </td>
            </tr>
        </table>
           
        
    </form>
</body>
</html>


