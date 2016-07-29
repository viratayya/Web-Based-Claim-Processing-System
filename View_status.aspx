<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_status.aspx.cs" Inherits="View_status" %>
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
    <table style="border: thick outset #000000;">
    <tr>
    <td colspan="2"><header:menu ID="banner" runat="server" /></td></tr>
    <tr><td width="20%">
        <uc1:side_menu ID="side_menu1" runat="server" />
        </td>
         <td><table>
    <tr><td style="font-style:oblique; text-align:left;color:red;font-size:x-large">Claim Status:</td>
    </tr>
    <tr>
    <td><asp:Label ID="Label1" runat="server" Text="Claim status:" Font-Bold="true"></asp:Label>&nbsp;&nbsp; 
        <asp:DropDownList ID="dropdownlist1" runat="server"></asp:DropDownList>&nbsp;&nbsp;<asp:Button 
            ID="button1" runat="server" Text="Submit" onclick="button1_Click"  /></td>
    </tr>
    <tr>
    <td><asp:GridView ID="gridview1" runat="server" CellPadding="4" 
            ForeColor="#333333" GridLines="None" Height="370px" Width="634px" 
          >
        <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
        <RowStyle BackColor="#E3EAEB" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView></td>
    </tr>
    <tr><td></td></tr>
    </table></td></tr>
    </table>
    
    </div>
    </form>
</body>
</html>
