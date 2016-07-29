<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cpd_add_su_details.aspx.cs" Inherits="s_add_details" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="cpd_sidemenu.ascx" tagname="cpd_sidemenu" tagprefix="uc1" %>
<%@ Register src="cpd_banner.ascx" tagname="cpd_banner" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Surveyor Details</title>
    <style type="text/css">
        .style3
        {
            width: 163px;
        }
        .style4
        {
            width: 150px;
        }
        .style7
        {
            width: 57px;
            height: 28px;
        }
        .style8
        {
            width: 106px;
            height: 28px;
        }
        .style9
        {
            height: 28px;
        }
    </style>
</head>
<body style="font-size:medium; color:Purple; font-family:Times New Roman Baltic;">
    <form id="form1" runat="server">
    <div>
    <table style="border: thick outset #000000;"><tr><td colspan="2">
        <uc2:cpd_banner ID="cpd_banner1" runat="server" />
        </td></tr>
    <tr><td width="20%">
        <uc1:cpd_sidemenu ID="cpd_sidemenu1" runat="server" />
        </td>
         <td><table align="center">
    <tr>
    <td class="style4">&nbsp;</td>
    <td class="style3">&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td class="style4">Surveyor_Name:</td>
    <td class="style3"><asp:TextBox ID="textbox1" runat="server"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="textbox1" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ControlToValidate="textbox1" ErrorMessage="enter text only" 
            ValidationExpression="[a-z,A-Z]+"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td class="style4">&nbsp;</td>
    <td class="style3">&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td class="style7">Email_Id:</td>
    <td class="style8"><asp:TextBox ID="textbox2" runat="server"></asp:TextBox></td>
    <td class="style9">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="textbox2" ErrorMessage="Enter Email Id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ControlToValidate="textbox2" ErrorMessage="enter proper email id" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
    <td class="style4">&nbsp;</td>
    <td class="style3">&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td class="style4">Password:</td>
    <td class="style3"><asp:TextBox ID="textbox3" runat="server" TextMode="Password"></asp:TextBox></td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="textbox3" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
    <td class="style4">&nbsp;</td>
    <td class="style3">&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td class="style4" colspan="3">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
    <td class="style4">&nbsp;</td>
    <td class="style3">&nbsp;</td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td class="style4" colspan="2"><asp:Button ID="button1" runat="server" Text="ADD" onclick="button1_Click" /></td>
    <td class="style3"><asp:Button ID="button2" runat="server" Text="CLEAR" /></td>
    </tr>
    </table></td></tr></table>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
