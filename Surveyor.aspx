<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Surveyor.aspx.cs" Inherits="Surveyor" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 143px;
            height: 13px;
        }
        .style2
        {
            width: 274px;
            height: 13px;
        }
        .style3
        {
            width: 174px;
            height: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table><tr><td><header:menu ID="banner" runat="server" /></td>
         </tr>
         <tr><td align="center">
             <br />
             <br />
             <table style="width: 527px; height: 386px; text-align:right;"><tr><td style="text-align: left; width: 143px;"><asp:Label ID="Label1" runat="server">Surveyor Name:</asp:Label></td>
                     <td style="text-align: left; width: 274px;"><asp:TextBox ID="sur_name" runat="server"></asp:TextBox></td>
                        <td style="width: 174px; text-align: center;"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="sur_name" ErrorMessage="Enter the name"></asp:RequiredFieldValidator></td></tr>
                        <tr><td style="text-align: left; width: 143px; height: 9px;"><asp:Label ID="Label2" runat="server">Surveyor Email_id:</asp:Label></td>
                         <td style="text-align: left; width: 274px; height: 9px;"><asp:TextBox ID="sur_email" runat="server"></asp:TextBox></td>
                          <td style="width: 174px; text-align: center; height: 9px;"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="sur_email" ErrorMessage="Enter Email_id"></asp:RequiredFieldValidator></td></tr>
                          <tr><td style="text-align: left; width: 143px;"><asp:Label ID="Label3" runat="server">Surveyor Password:</asp:Label></td>
                          <td style="text-align: left; width: 274px;"><asp:TextBox ID="sur_pwd" runat="server" TextMode="Password" Width="146px"></asp:TextBox></td>
                           <td style="width: 174px; text-align: center;"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="sur_pwd" ErrorMessage="Enter Password"></asp:RequiredFieldValidator></td></tr>
                           <tr><td style="text-align: left; width: 143px;"><asp:Label ID="Label4" runat="server">Surveyor Address:</asp:Label></td>
                           <td style="text-align: left; width: 274px;"><asp:TextBox ID="sur_addr" runat="server"></asp:TextBox></td>
                           <td style="width: 174px; text-align: center;"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="sur_addr" ErrorMessage="Enter correct address "></asp:RequiredFieldValidator></td></tr>
                           <tr><td style="text-align: left; width: 143px;"><asp:Label ID="Label6" runat="server">Gender:</asp:Label></td>
                           <td style="text-align: left; width: 274px;"><asp:RadioButton ID="RadioButton1" runat="server" Text="Male" ValidationGroup="gen" Height="20px" Width="78px" GroupName="gen" />
                               <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" Height="14px" Width="83px" GroupName="gen" /></td>
                           <td style="width: 174px"></td></tr>
                           <tr><td style="text-align: left; " class="style1"><asp:Label ID="Label7" runat="server">Date Of Birth</asp:Label></td>
                           <td style="text-align: left; " class="style2"><asp:DropDownList ID="DD_date" runat="server"></asp:DropDownList>
                               <asp:DropDownList ID="DD_mont" runat="server"></asp:DropDownList>
                               <asp:DropDownList ID="DD_year" runat="server"></asp:DropDownList>
                               <br />
                               </td>
                           <td class="style3"></td></tr>
                           <tr><td colspan="3" align="center" style="height: 1px"><asp:Button ID="Button1" runat="server" Text="REGISTRATION" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" Text="CANCEL" OnClick="Button2_Click" />
                               <br />
                               </td></tr>
                           <tr><td colspan="3" align="Center" style="height: 4px"><asp:Label ID="Label8" runat="server" Height="34px" Width="279px"></asp:Label></td></tr>
                           </table></td></tr></table>
    </div>
    </form>
</body>
</html>
