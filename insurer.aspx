<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insurer.aspx.cs" Inherits="insurer" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center"><tr><td><header:menu ID="banner" runat="server" /></td>
         </tr>
         <tr><td align="center">
             <br />
             <table style="width: 670px; height: 306px; text-align:right;"><tr>
                     <td style="text-align: center; font-size: large;" class="style6" 
                     colspan="4">Add Insurer</td>
                        </tr>
                        <tr><td style="text-align: right; width: 115px; height: 10px;">
                 Branch_code</td>
                     <td style="text-align: left; " class="style6"><asp:TextBox ID="br_name0" 
                             runat="server"></asp:TextBox></td>
                        <td style="width: 114px; text-align: left; height: 10px;">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="br_name" ErrorMessage="Enter Branch_code" Width="142px"></asp:RequiredFieldValidator></td></tr>
                        <tr><td style="text-align: right; width: 115px; height: 10px;">&nbsp;</td>
                     <td style="text-align: left; " class="style6">&nbsp;</td>
                        <td style="width: 114px; text-align: left; height: 10px;">&nbsp;</td></tr>
                        <tr><td style="text-align: right; width: 115px; height: 10px;"><asp:Label ID="Label1" runat="server">Branch 
                            Name:</asp:Label></td>
                     <td style="text-align: left; " class="style6"><asp:TextBox ID="br_name" runat="server"></asp:TextBox></td>
                        <td style="width: 114px; text-align: left; height: 10px;"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="br_name" ErrorMessage="Enter the branch name" Width="142px"></asp:RequiredFieldValidator></td></tr>
                        <tr><td style="text-align: right; width: 115px; height: 10px;">&nbsp;</td>
                     <td style="text-align: left; " class="style6">&nbsp;</td>
                        <td style="width: 114px; text-align: left; height: 10px;">&nbsp;</td></tr>
                        <tr><td style="text-align: right; width: 115px;"><asp:Label ID="Label2" runat="server">Branch 
                            City:</asp:Label></td>
                         <td style="text-align: left; " class="style7"><asp:TextBox ID="br_city" runat="server"></asp:TextBox></td>
                          <td style="width: 114px; text-align: left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="br_city" ErrorMessage="Enter the branch city" Width="135px"></asp:RequiredFieldValidator></td></tr>
                           <tr><td style="text-align: right; " class="style3"><asp:Label ID="Label7" runat="server">Branch 
                               Date:</asp:Label></td>
                           <td style="text-align: left; " class="style4"><asp:DropDownList ID="DD_date" runat="server"></asp:DropDownList>
                               <asp:DropDownList ID="DD_mont" runat="server"></asp:DropDownList>
                               <asp:DropDownList ID="DD_year" runat="server"></asp:DropDownList></td>
                           <td class="style5"></td></tr>
                           <tr><td style="text-align: center; width: 115px;"><asp:Label ID="Label8" 
                                   runat="server" Width="132px" Height="24px">Branch Discription:</asp:Label></td>
                           <td style="text-align: left; " class="style7"><asp:TextBox ID="br_disc" runat="server"></asp:TextBox></td>
                           <td style="width: 114px; text-align: left;"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="br_disc" ErrorMessage="Enter the discription" Width="125px"></asp:RequiredFieldValidator></td></tr>
                           <tr><td colspan="3" align="center"><asp:Button ID="Button1" runat="server" Text="REGISTRATION" OnClick="Button1_Click" />
                                  <asp:Button ID="Button2" runat="server" Text="CANCEL" OnClick="Button2_Click"/></td></tr>
                           <tr><td colspan="3" align="Center"><asp:Label ID="Label5" runat="server"></asp:Label></td></tr>
                           </table>
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             </td></tr></table>
    </div>
    </form>
</body>
</html>
