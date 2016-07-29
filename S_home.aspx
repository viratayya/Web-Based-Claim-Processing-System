<%@ Page Language="C#" AutoEventWireup="true" CodeFile="S_home.aspx.cs" Inherits="S_home" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="sur_sidemenu.ascx" tagname="sur_sidemenu" tagprefix="uc1" %>
<%@ Register src="emp.ascx" tagname="emp" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <table style="border: thick outset #000000;" align="center"><tr>
    <td colspan="2">
        <uc2:emp ID="emp1" runat="server" />
        </td></tr>
    <tr><td width="20%">
        <uc1:sur_sidemenu ID="sur_sidemenu1" runat="server" />
        </td></tr></table>

    </div>
    </form>
</body>
</html>
