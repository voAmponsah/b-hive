<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shops.aspx.cs" Inherits="shops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-weight: 700; text-align: center;">
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server"  Height="200px" Width="100%" ImageUrl="~/images/home_slider_1.jpg" />
        
    </div>
        <p>

        <asp:HyperLink ID="backtohomepage" runat="server" Text="Back to homepage" NavigateUrl="~/index.html" ForeColor="#990033"></asp:HyperLink>
        </p>
        <p style="margin-left: 160px">

        &nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="206px" Width="100%">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <Columns>
                    <asp:BoundField DataField="ShopName" HeaderText="ShopName" SortExpression="ShopName" />
                    <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                    <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BestMartConnectionString %>" SelectCommand="SELECT [ShopName], [PhoneNumber], [Location], [Description] FROM [ShopInfo]"></asp:SqlDataSource>
        </p>
        <p>

            &nbsp;</p>
    </form>
</body>
</html>
