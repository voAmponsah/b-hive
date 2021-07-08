<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpassword.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-weight: 700;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
        <asp:Image ID="Image1" runat="server"  Height="150px" Width="100%" ImageUrl="~/images/hs1.jpg" style="text-align: center" />
        
        <br />
        
        <asp:Label ID="Label1" runat="server" Text="FORGOT PASSWORD?" Font-Size="X-Large" ForeColor="#FF0066"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Enter your Security answer to retrieve your credentials" ForeColor="#FF9933"></asp:Label>
        <br />
        <asp:Image ID="ErrorPhoto" runat="server" Height="38px" ImageUrl="~/images/ERRORR.png" Visible="False" Width="39px" />
        <br />
        <asp:Label ID="Label6" runat="server" ForeColor="#990033" Text="Enter Username"></asp:Label>
        <br />
        <asp:TextBox ID="txtuname" runat="server"  Height="23px" Width="176px" Font-Names="Times New Roman" ForeColor="#990033"
            style="border-radius:10px;
margin-top:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#990033;" BorderColor="#990033" AutoCompleteType="Disabled"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" ForeColor="#990033" Text="Enter Security Answer"></asp:Label>
        <br />
        <asp:TextBox ID="secanswer" runat="server"  Height="23px" Width="176px" Font-Names="Times New Roman" ForeColor="#990033"
            style="border-radius:10px;
margin-top:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#990033;" BorderColor="#990033" AutoCompleteType="Disabled"></asp:TextBox>
        <br />
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Black" Text="~ Wrong !! Try Again~" Visible="False"></asp:Label>
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" Height="61px" ImageUrl="~/images/continue.png" Width="156px" BorderStyle="None" OnClick="ImageButton2_Click" />
        <br />
        <asp:HyperLink ID="fgtpass" runat="server" ForeColor="Blue" NavigateUrl="~/login.aspx">Go Back</asp:HyperLink>
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Image ID="Image2" runat="server" ImageUrl="~/images/banner.jpg" Height="79px" Width="233px" />
    </div>
    </form>
</body>
</html>
