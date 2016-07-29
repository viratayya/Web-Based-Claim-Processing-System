<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sur_change_pwd.aspx.cs" Inherits="sur_change_pwd" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="sur_sidemenu.ascx" tagname="sur_sidemenu" tagprefix="uc1" %>

<%@ Register src="emp.ascx" tagname="emp" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 20%;
        }
        .style2
        {
            width: 19%;
        }
        .style3
        {
            width: 17%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <table style="border: thick outset #000000;" align="center"><tr>
    <td colspan="2">
        <uc2:emp ID="emp1" runat="server" />
        </td></tr>
    <tr><td class="style3">
        <uc1:sur_sidemenu ID="sur_sidemenu1" runat="server" />
        </td>
        <td><table>
    <tr><td align="left" class="style7">&nbsp; WCPS : Change Password</td></tr>
    <tr>
    <td align="right" class="style8" style="color: #000000">Old-Password:</td>
    <td class="style9"><asp:TextBox ID="textbox1" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="required" ControlToValidate="textbox1"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
    <td align="right" class="style8" style="color: #000000">New-Password:</td>
    <td class="style9"><asp:TextBox ID="textbox2" runat="server" TextMode="password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="required" ControlToValidate="textbox2"></asp:RequiredFieldValidator>
        </td>
    </tr>
                
    <tr>
    <td align="right" class="style8" style="color: #000000">conform-New-Password:</td>
    <td class="style9"><asp:TextBox ID="textbox3" runat="server" TextMode="password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="required" ControlToValidate="textbox3"></asp:RequiredFieldValidator>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password doesn't match" ControlToCompare="textbox2" ControlToValidate="textbox3"></asp:CompareValidator></td>
    </tr>
    <tr>
    <td class="style12" style="color: #000000">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp;&nbsp;
        <asp:Button ID="button1" runat="server" Text="submit" onclick="button1_Click" /></td>
    <td class="style11"><asp:Button ID="button2" runat="server" Text="reset" 
            onclick="button2_Click" Width="83px" /></td>
    </tr>
    <tr>
    <td class="style7"><asp:Label id="Label1" runat="server" ForeColor="Black"></asp:Label></td>
    </tr>
    </table></td></tr></table>

    </div>
    </form>
</body>
</html>
