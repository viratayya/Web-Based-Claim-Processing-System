<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_feedback.aspx.cs" Inherits="Add_feedback" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User FeedBack</title>
    <style type="text/css">
        .style1
        {
            height: 42px;
        }
        .style7
        {
            height: 42px;
            width: 99px;
        }
        .style8
        {
            width: 99px;
        }
    </style>
</head>
<body style="font-size:medium; color:Purple; font-family:Times New Roman Baltic;">
    <form id="form1" runat="server">
    <div>
    <table style="border: thick outset #000000;"><tr><td><header:menu ID="banner" runat="server" /></td></tr>
    <tr><td><table align="center">
    
    <tr>
    <td class="style1" colspan="3">&nbsp;</td>
    </tr>
    
    <tr>
    <td class="style7">Name:</td>
    <td class="style1"><asp:TextBox ID="textbox1" runat="server"></asp:TextBox></td>
    <td class="style1"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textbox1" ErrorMessage="Enter Name" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ControlToValidate="textbox1" ErrorMessage="Enter Text Only" 
            ValidationExpression="[a-z\s,A-Z]+"></asp:RegularExpressionValidator>
                                </td>
    </tr>
    <tr>
    <td class="style8">Email:</td>
    <td><asp:TextBox ID="textbox2" runat="server"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                   ControlToValidate="textbox2" ErrorMessage="Enter the User_name"></asp:RequiredFieldValidator>
                               <br />
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                   ControlToValidate="textbox2" ErrorMessage="Enter The Proper Email_id" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
    <td class="style8">Message:</td>
    <td><asp:TextBox ID="textbox3" runat="server" TextMode="MultiLine"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textbox3" ErrorMessage="Write Message" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="textbox3" ErrorMessage="Enter Text Only" 
            ValidationExpression="[a-z,\s,A-Z]+"></asp:RegularExpressionValidator>
                                </td>
    </tr>
    <tr>
    <td class="style8">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td class="style8"><asp:Button ID="button1" runat="server" Text="Submit" onclick="button1_Click" 
            Font-Bold="True" /></td>
    <td><asp:Button ID="button2" runat="server" Text="Clear" onclick="button2_Click" 
            Font-Bold="True"/></td>
    </tr>
    </table></td></tr></table>
    
    </div>
    </form>
</body>
</html>
