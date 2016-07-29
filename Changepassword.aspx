<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Changepassword.aspx.cs" Inherits="Changepassword" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="side_menu.ascx" tagname="side_menu" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ChangePassword</title>
    <style type="text/css">
        .style7
        {
            width: 122px;
        }
        .style8
        {
            height: 32px;
            width: 122px;
        }
        .style9
        {
            width: 282px;
        }
        .style11
        {
            width: 282px;
            height: 28px;
        }
        .style12
        {
            height: 28px;
            width: 122px;
        }
        .style13
        {
            width: 20%;
        }
    </style>
</head>
<body style="font-size:medium; color:Purple; font-family:Times New Roman Baltic;">
    <form id="form1" runat="server">
    <div>
   <table style="border: thick outset #000000;"><tr><td colspan="2"><header:menu ID="banner" runat="server" /></td></tr>
   <tr><td class="style13">
       <uc1:side_menu ID="side_menu1" runat="server" />
       </td>
       <td><table>
    <tr><td align="left" class="style7">&nbsp; WCPS : Change Password</td></tr>
    <tr>
    <td align="right" class="style8">Old-Password:</td>
    <td class="style9"><asp:TextBox ID="textbox1" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="required" ControlToValidate="textbox1"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td align="right" class="style8">New-Password:</td>
    <td class="style9"><asp:TextBox ID="textbox2" runat="server" TextMode="password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="required" ControlToValidate="textbox2"></asp:RequiredFieldValidator>
        </td>
    </tr>
                
    <tr>
    <td align="right" class="style8">conform-New-Password:</td>
    <td class="style9"><asp:TextBox ID="textbox3" runat="server" TextMode="password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="required" ControlToValidate="textbox3"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password doesn't match" ControlToCompare="textbox2" ControlToValidate="textbox3"></asp:CompareValidator></td>
    </tr>
    <tr>
    <td class="style12">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:Button ID="button1" runat="server" Text="submit" onclick="button1_Click" /></td>
    <td class="style11"><asp:Button ID="button2" runat="server" Text="reset" 
            onclick="button2_Click" Width="83px" /></td>
    </tr>
    <tr>
    <td class="style7"><asp:Label id="Label1" runat="server"></asp:Label></td>
    </tr>
    </table></td></tr>
   </table>
    
    </div>
    </form>
</body>
</html>
