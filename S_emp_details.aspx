<%@ Page Language="C#" AutoEventWireup="true" CodeFile="S_emp_details.aspx.cs" Inherits="S_emp_details" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="sur_sidemenu.ascx" tagname="sur_sidemenu" tagprefix="uc1" %>
<%@ Register src="emp.ascx" tagname="emp" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style3
        {
            width: 23%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="border: thick outset #000000;"><tr><td colspan="2">
        <uc2:emp ID="emp1" runat="server" />
        </td></tr>
    <tr><td class="style3">
        <uc1:sur_sidemenu ID="sur_sidemenu1" runat="server" />
        </td>
      <td><table>
    <tr>
    <td align="center" style="font-style:italic; font-family:Times New Roman Baltic; color:Red;font-size:x-large">EMPLOYEE:</td>
    </tr>
    <tr>
    <td><asp:GridView ID="gridview1" runat="server" 
            onpageindexchanging="gridview1_PageIndexChanging" BackColor="#CCCCCC" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
            CellSpacing="2" ForeColor="Black" >
        <FooterStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="claim_no" 
                DataNavigateUrlFormatString="S_emp_claim.aspx?claim_No={0}" 
                DataTextField="claim_no" DataTextFormatString="Claim No" 
                NavigateUrl="~/S_emp_claim.aspx" />
        </Columns>
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        </asp:GridView></td>
    </tr>
    </table></td></tr></table>
    
    </div>
    </form>
</body>
</html>
