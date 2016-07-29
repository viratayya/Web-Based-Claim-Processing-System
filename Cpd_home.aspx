<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cpd_home.aspx.cs" Inherits="Cpd_home" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="cpd_sidemenu.ascx" tagname="cpd_sidemenu" tagprefix="uc1" %>
<%@ Register src="cpd_banner.ascx" tagname="cpd_banner" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cpd Home</title>
    <style type="text/css">
        .style7
        {
            height: 353px;
            width: 28%;
        }
    </style>
</head>
<body style="font-size:medium; color:Purple; font-family:Times New Roman Baltic;">
    <form id="form1" runat="server">
    <div>
    <table style="border: thick outset #000000;"><tr><td colspan="2">
        <uc2:cpd_banner ID="cpd_banner1" runat="server" />
        </td></tr>
    <tr><td class="style7">
        <uc1:cpd_sidemenu ID="cpd_sidemenu1" runat="server" />
        </td>
        <td></td></tr></table>
        </div>
    </form>
</body>
</html>
