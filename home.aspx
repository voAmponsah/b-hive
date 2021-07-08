<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

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
        
        <asp:Label ID="Label1" runat="server" Text="CREATE AN ACCOUNT NOW!" Font-Size="X-Large" ForeColor="#FF0066"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="START BUYING AND SELLING" ForeColor="#FF9933"></asp:Label>
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
        <asp:Label ID="Label4" runat="server" ForeColor="#990033" Text="Choose a username"></asp:Label>
        <br />
        <asp:TextBox ID="txtuname" runat="server" Height="23px" Width="176px"
              style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;
                     margin-bottom:5px" Font-Names="Times New Roman" ForeColor="#006600"  ></asp:TextBox>
        <br />
        <asp:Label ID="Label9" runat="server" ForeColor="#990033" Text="Enter Phone Number"></asp:Label>
        <br />
        <asp:TextBox ID="txtphone" runat="server" Height="23px" Width="176px"
              style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;
                     margin-bottom:5px" Font-Names="Times New Roman" ForeColor="#006600"  ></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" ForeColor="#990033" Text="Choose Password"></asp:Label>
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
        <asp:Label ID="Label6" runat="server" ForeColor="#990033" Text="Confirm Password"></asp:Label>
        <br />
        <asp:TextBox ID="txtcpass" runat="server" Height="23px" Width="176px"
              style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;
                      margin-bottom:5px" Font-Names="Times New Roman" ForeColor="#006600" TextMode="Password" BorderStyle="Solid"  ></asp:TextBox>
        <br />
        <br />
                <asp:Label ID="Label7" runat="server" ForeColor="black" Text="Choose a security question and answer to help you"></asp:Label><br />
         <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="login  in case you forget it."></asp:Label>
        <br />
        <asp:DropDownList ID="secquestion" runat="server" Font-Names="Times New Roman" ForeColor="#990033" Height="22px">
            <asp:ListItem>Select security question</asp:ListItem>
            <asp:ListItem>What is my favourite food?</asp:ListItem>
            <asp:ListItem>How old is my pet?</asp:ListItem>
            <asp:ListItem>My first car.</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:TextBox ID="secanswer" runat="server"  Height="23px" Width="176px" Font-Names="Times New Roman" ForeColor="#990033"
            style="border-radius:10px;
margin-top:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#990033;" BorderColor="#990033" AutoCompleteType="Disabled"></asp:TextBox>
        <br />
        <asp:Label ID="Label11" runat="server" Text="DO NOT FORGET YOUR SECURITY ANSWER!" Visible="False" Font-Size="X-Small"></asp:Label>
        &nbsp;
        <br />
        <asp:ImageButton ID="SignUp" runat="server" Height="45px" ImageUrl="~/images/confirm.jpg" Width="111px" BorderStyle="None" OnClick="ImageButton2_Click" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" Text="Create a business account" NavigateUrl="~/shopaccount.aspx" ForeColor="#990033"></asp:HyperLink>
        <br />
        <br />

        <asp:HyperLink ID="backtohomepage" runat="server" Text="Back to homepage" NavigateUrl="~/index.html" ForeColor="#990033"></asp:HyperLink>
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
