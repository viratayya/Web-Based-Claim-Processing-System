<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employeedetails.aspx.cs" Inherits="Employeedetails" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="side_menu.ascx" tagname="side_menu" tagprefix="uc1" %>
<%@ Register src="cpd_sidemenu.ascx" tagname="cpd_sidemenu" tagprefix="uc2" %>
<%@ Register src="cpd_banner.ascx" tagname="cpd_banner" tagprefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="border: thick outset #000000;"><tr><td colspan="2" >
        <uc3:cpd_banner ID="cpd_banner1" runat="server" />
        </td></tr>
    <tr><td width="20%">
        <uc2:cpd_sidemenu ID="cpd_sidemenu1" runat="server" />
        </td><td ><table>
    <tr>
    <td align="center" style="font-style:italic; font-family:Times New Roman Baltic; font-size:x-large; color:red;">EMPLOYEE:</td>
    </tr>
    <tr>
    <td><div><asp:GridView ID="gridview1" runat="server" 
            onpageindexchanging="gridview1_PageIndexChanging1"  Width="681px" 
            Height="317px" BackColor="#CCCCCC" BorderColor="#999999" 
            BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
            ForeColor="Black">
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="claim_no" DataTextField="claim_no" 
                NavigateUrl="~/Employee.aspx" Text="Select" 
                DataNavigateUrlFormatString="Employee.aspx?claim_No={0}" 
                DataTextFormatString="Claim No" Target="_self" />
        </Columns>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView></div></td>
    </tr>
    </table></td></tr>
    </table>
    </div>
    </form>
</body>
</html>
