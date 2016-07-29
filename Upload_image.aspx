<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Upload_image.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table><tr><td><header:menu ID="banner" runat="server" /></td></tr></table>
     <table>
    <tr>
    <td align="center" class="style1" style="font-family:Times New Roman Baltic;color:Red;font-size:x-large;" >Update_Image:</td>
    </tr>
    <tr>
    <td><asp:FileUpload ID="fileupload1" runat="server" /></td>
    </tr>
    <tr>
    <td align="center"><asp:Button ID="button1" runat="server" Text="UPDATE" /></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
