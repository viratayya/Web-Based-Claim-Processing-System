<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="Contact_us" %>

<%@ Register src="banner.ascx" tagname="banner" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 47px;
        }
        .style2
        {
            width: 48px;
        }
        .style3
        {
            width: 69px;
        }
    </style>
</head>
<body bgcolor="#ffffff">
    <form id="form1" runat="server">
    <div>
    <table  style="border: thick outset #000000;"><tr><td>
        <uc1:banner ID="banner1" runat="server" />
        </td></tr>
        <tr><td><table align="center"><tr><td  bgcolor="White" colspan="2">
            FeedBack:</td></tr><tr><td class="style3">
                &nbsp;</td><td>&nbsp;</td></tr><tr><td class="style3" bgcolor="White">
                            Name:</td><td bgcolor="White">
                                Claim Processing System </td></tr><tr>
                <td class="style3">
                            &nbsp;</td><td>
                                &nbsp;</td></tr><tr><td class="style3" bgcolor="White">
                            Address</td><td bgcolor="White">
                                    #190 Vidhya Nagar<br />
                                    Hubli</td></tr><tr>
                <td class="style3">
                            &nbsp;</td><td>
                                    &nbsp;</td></tr><tr><td class="style3" bgcolor="White">
                            Contact No</td><td bgcolor="White">
                                    7259288901</td></tr><tr><td class="style3">
                            &nbsp;</td><td>
                                    &nbsp;</td></tr><tr><td class="style3" bgcolor="White">
                            Email</td><td bgcolor="White">
                                    wcps@gmail.com</td></tr><tr><td class="style3">
                            &nbsp;</td><td>
                                    &nbsp;</td></tr><tr><td class="style3" bgcolor="White">
                            WebSite</td><td bgcolor="White">
                                    www.claim.com</td></tr></table>
        </td></tr></table>
    </div>
    </form>
</body>
</html>
