<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="home" %>

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
        
        <asp:Label ID="Label1" runat="server" Text="ADMINISTRATOR SIGN IN" Font-Size="X-Large" ForeColor="#FF0066"></asp:Label>
        <br />
        <asp:Image ID="Image3" runat="server" Height="99px" ImageUrl="~/images/icons8_Administrator_Male_96px.png" Width="102px" />
        <br />
        <br />
        <asp:Image ID="ErrorPhoto" runat="server" Height="38px" ImageUrl="~/images/ERRORR.png" Visible="False" Width="39px" />
        <br />
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Black" Text="~ Fill all textboxes Correctly~" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="#990033" Text="Enter your name"></asp:Label>
        <br />
        <asp:TextBox ID="txtname" runat="server" Height="23px" Width="176px"
              style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;
                     margin-bottom:5px" Font-Names="Times New Roman" ForeColor="#006600" OnTextChanged="txtname_TextChanged"  ></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" ForeColor="#990033" Text="Enter Password"></asp:Label>
        <br />
        <asp:TextBox ID="txtpass" runat="server" Height="23px" Width="176px"
              style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;
                      margin-bottom:5px" Font-Names="Times New Roman" ForeColor="#009933" TextMode="Password"  ></asp:TextBox>
        <br />
        <br />
        <asp:ImageButton ID="SignUp" runat="server" Height="52px" ImageUrl="~/images/confirm.jpg" Width="120px" BorderStyle="None" OnClick="ImageButton2_Click" />
        <br />
        <br />
        <br />
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
