<%@ Page Language="C#" AutoEventWireup="true" CodeFile="S_emp_claim.aspx.cs" Inherits="S_emp_claim" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="sur_sidemenu.ascx" tagname="sur_sidemenu" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
   <%-- <style type="text/css">
        .style7
        {
            width: 282px;
        }
    </style>--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table><tr><td colspan="2"><header:menu ID="banner" runat="server" /></td></tr>
    <tr><td width="20%">
        <uc1:sur_sidemenu ID="sur_sidemenu1" runat="server" />
        </td>
    <td>
    <table>
    <tr>
    <td align="center" style="font-style:italic; font-size:x-large; color:red" 
            class="style7">EMPLOYEE_CLAIM_DETAILS:</td>
    </tr>
                                    <tr>
                                        <td style="color: #000000">
                                            &nbsp;Employee:</td>
                                        <td>
                                            &nbsp;<asp:TextBox ID="TxtEmployee" runat="server" BackColor="Silver" ReadOnly="True"
                                                Width="297px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td style="color: #000000">
                                            &nbsp;Apply Date:</td>
                                        <td>
                                            &nbsp;<asp:TextBox ID="TxtApplyDate" runat="server" BackColor="Silver" 
                                                ReadOnly="True" ontextchanged="TxtApplyDate_TextChanged"></asp:TextBox></td>
                                    </tr>
									<tr>
										<td style="color: #000000">&nbsp;Claim Type:</td>
										<td>&nbsp;<asp:TextBox ID="TxtClaimType" runat="server" BackColor="Silver" ReadOnly="True"></asp:TextBox>&nbsp;</td>
									</tr>
									<tr>
										<td style="color: #000000">&nbsp;Claim Amount:</td>
										<td>&nbsp;<asp:TextBox ID="TxtAmount" runat="server" BackColor="Silver" ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;
                                        </td>
									</tr>
									<tr>
										<td style="color: #000000">&nbsp;Details:</td>
										<td>&nbsp;<asp:TextBox ID="TxtDescription" runat="server" MaxLength="250" TextMode="MultiLine"
                                                Width="301px" BackColor="Silver" ReadOnly="True"></asp:TextBox>&nbsp;</td>
									</tr>
                                    <tr>
                                        <td style="color: #000000">Hospital_details:
                                        </td>
                                        <td><asp:TextBox ID="textbox1" runat="server" ReadOnly="true" TextMode="MultiLine" BackColor="Silver"></asp:TextBox>
                                        </td>
                                    </tr>
                                    
									<tr>
										<td style="color: #000000">&nbsp;Remarks:</td>
										<td>&nbsp;<asp:TextBox ID="TxtRemarks" runat="server" Width="295px" MaxLength="250" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" *Required" ControlToValidate="TxtRemarks"></asp:RequiredFieldValidator></td>
									</tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
									<tr>
										<td class="style7"><asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" /></td>
										<td>
                                            <asp:Button ID="BtnBack" runat="server" Text="Back" OnClick="BtnBack_Click" /></td>
										<td>&nbsp;&nbsp;
                                            </td>
									</tr>
									<tr>
										<td class="style7">&nbsp;</td>
										<td>&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
								</table>
                </td></tr></table>
    </div>
    </form>
</body>
</html>
