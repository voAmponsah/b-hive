<%@ Page Language="C#" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="shops" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-weight: 700; text-align: center;">
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server"  Height="97px" Width="100%" ImageUrl="~/images/home_slider_1.jpg" />
        
    </div>
        <p>

            PRODUCTS</p>
        <p>

            <asp:Image ID="Image2" runat="server" Height="99px" ImageUrl="~/images/icons8_Administrator_Male_96px.png" Width="102px" />
        </p>
        <p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%">
                <Columns>
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="ProductType" HeaderText="ProductType" SortExpression="ProductType" />
                    <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
                    <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BestMartConnectionString %>" SelectCommand="SELECT [ProductName], [ProductType], [ProductDescription], [ProductPrice] FROM [Products]"></asp:SqlDataSource>
        </p>
        <p>

            &nbsp;</p>
    </form>
</body>
</html>
