<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="shops" %>

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

            ADMINISTRATOR</p>
        <p>

            <asp:Image ID="Image2" runat="server" Height="99px" ImageUrl="~/images/icons8_Administrator_Male_96px.png" Width="102px" />
        </p>
        <p>

&nbsp;<asp:Button ID="Button1" runat="server" Height="37px" Text="View Shops" Width="115px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="34px" Text="View Products" Width="120px" OnClick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="35px" Text="Individual Accounts" Width="127px" OnClick="Button3_Click" />
        </p>
        <p>

            &nbsp;</p>
    </form>
</body>
</html>
