<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            font-weight: 700;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server"  Height="200px" Width="100%" ImageUrl="~/images/home_slider_1.jpg" />
        
        <asp:Image ID="ProfilePhoto" runat="server" Height="90px" ImageUrl="~/images/userr.png" Width="100px" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Name :  Tech Hub Inc."></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Account Type : Business"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Telephone : 0245359157"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/addto.png" OnClick="ImageButton1_Click" />
        <br />
        Click to Post An Ad / Products<br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <asp:HyperLink ID="backtohomepage" runat="server" Text="Back to homepage" NavigateUrl="~/index.html" ForeColor="#990033"></asp:HyperLink>
        <br />
        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/banner.jpg" Height="79px" Width="233px" />
    <div>
    
    </div>
    </form>
</body>
</html>
