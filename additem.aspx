<%@ Page Language="C#" AutoEventWireup="true" CodeFile="additem.aspx.cs" Inherits="home" %>

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
        
        <asp:Label ID="Label1" runat="server" Text="CREATE AN AD NOW!" Font-Size="X-Large" ForeColor="#FF0066"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="POST AN AD TO ENGAGE CUSTOMERS NOW" ForeColor="#FF9933"></asp:Label>
        <br />
        <asp:Image ID="ErrorPhoto" runat="server" Height="38px" ImageUrl="~/images/ERRORR.png" Visible="False" Width="39px" />
        <br />
        <asp:Label ID="ErrorLabel" runat="server" ForeColor="Black" Text="~ Fill all textboxes Correctly~" Visible="False"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" ForeColor="#990033" Text="Enter product name"></asp:Label>
        <br />
        <asp:TextBox ID="txtpname" runat="server" Height="23px" Width="176px"
              style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;
                     margin-bottom:5px" Font-Names="Times New Roman" ForeColor="#006600" OnTextChanged="txtname_TextChanged"  ></asp:TextBox>
        <br />
        <asp:Label ID="Label4" runat="server" ForeColor="#990033" Text="Product Type"></asp:Label>
        <br />
        <asp:TextBox ID="txtptype" runat="server" Height="23px" Width="176px"
              style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;
                     margin-bottom:5px" Font-Names="Times New Roman" ForeColor="#006600"  ></asp:TextBox>
        <br />
                <asp:Label ID="Label6" runat="server" ForeColor="#990033" Text="Product Description"></asp:Label>
        <br />
        <asp:TextBox ID="txtpdescription" runat="server" Height="53px" Width="211px"
              style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;
                     margin-bottom:5px" Font-Names="Times New Roman" ForeColor="#006600" TextMode="MultiLine"  ></asp:TextBox>
        <br />
        <asp:Label ID="Label7" runat="server" ForeColor="#990033" Text="Price Gh¢"></asp:Label>
        <br />
        <asp:TextBox ID="txtpprice" runat="server" Height="23px" Width="176px"
              style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;
                     margin-bottom:5px" Font-Names="Times New Roman" ForeColor="#006600"  ></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" ForeColor="#990033" Text="Click to add image"></asp:Label>
        <br />
        <asp:FileUpload ID="FileUpload" runat="server" Height="36px" Width="184px"
             style="border-radius:10px; 
                     box-sizing: border-box;
                     border: 1px solid #990033;
                     outline: none;
                     text-align:center;
                     color:#006600;"
                     Font-Names="Times New Roman" ForeColor="#006600" />

        <br />
        <br />
        <asp:ImageButton ID="btsend" runat="server" Height="47px" ImageUrl="~/images/send.jpg" OnClick="ImageButton1_Click" Width="159px" />
        <br />
        <br />

        <asp:HyperLink ID="backtoprofile" runat="server" Text="Back to previous page" NavigateUrl="~/profile.aspx" ForeColor="#990033"></asp:HyperLink>
        <br />
        <br />

        <asp:HyperLink ID="backtohomepage" runat="server" Text="Back to homepage" NavigateUrl="~/index.html" ForeColor="#990033"></asp:HyperLink>
        <br />
        <br />
        &nbsp;&nbsp;
        <asp:Image ID="footerimage" runat="server" ImageUrl="~/images/banner.jpg" Height="79px" Width="233px" />
    </div>
    </form>
</body>
</html>
