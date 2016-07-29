<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="home.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="side_menu.ascx" tagname="side_menu" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <table><tr><td><header:menu ID="banner" runat="server" /></td>
         </tr>
         <tr><td>
             &nbsp;</td></tr>
         </table>
    </div>
    </form>
</body>
</html>
