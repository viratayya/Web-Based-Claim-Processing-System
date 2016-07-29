<%@ Page Language="C#" AutoEventWireup="true" CodeFile="emp_home.aspx.cs" Inherits="emp_home" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="side_menu.ascx" tagname="side_menu" tagprefix="uc1" %>
<%--<%@ Register TagPrefix="sidebar" TagName="side" Src="~/emp_Sidebar.ascx" %>--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Home</title>
    <style type="text/css">
        .style1
        {
            width: 20%;
        }
        .style2
        {
            width: 21%;
        }
        .style3
        {
            width: 30%;
        }
    </style>
</head>
<body style="font-size:medium; color:Purple; font-family:Times New Roman Baltic;">
    <form id="form1" runat="server">
    <div>
    <table border="1" style="border: thick outset #000000;"><tr><td colspan="2"><header:menu ID="banner" runat="server" /></td></tr>
    <tr><td class="style3">
        <uc1:side_menu ID="side_menu1" runat="server" />
    </td><td></td></tr>
       </div>
       </table>
    </form>
</body>
</html>
