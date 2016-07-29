<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="cpd_sidemenu.ascx" tagname="cpd_sidemenu" tagprefix="uc1" %>
<%@ Register src="cpd_banner.ascx" tagname="cpd_banner" tagprefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 141px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="border: thick outset #000000;"><tr><td colspan="2">
        <uc2:cpd_banner ID="cpd_banner1" runat="server" />
        </td></tr>
    <tr><td width="20%">
        <uc1:cpd_sidemenu ID="cpd_sidemenu1" runat="server" />
        </td>
        <td><table align="center" bgcolor="White">
    <tr>
    <td align="center" style="font-style:italic;" colspan="3">&nbsp;</td>
    </tr>
    <tr>
    <td align="center" style="font-style:italic; color: #000000;" colspan="3" 
            bgcolor="White">EMPLOYEE_CLAIM_DETAILS:</td>
    </tr>
    <tr>
    <td align="center" style="font-style:italic; color: #000000;" colspan="3">&nbsp;</td>
    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td class="style1" style="font-style: italic; color: #000000;">
                                            &nbsp;Employee:</td>
                                        <td>
                                            &nbsp;<asp:TextBox ID="TxtEmployee" runat="server" BackColor="Silver" ReadOnly="True"
                                                Width="297px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style1">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td class="style1" style="font-style: italic; color: #000000;">
                                            &nbsp;Apply Date:</td>
                                        <td>
                                            &nbsp;<asp:TextBox ID="TxtApplyDate" runat="server" BackColor="Silver" ReadOnly="True"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style1">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1" style="font-style: italic; color: #000000;">&nbsp;Claim Type:</td>
										<td>&nbsp;<asp:TextBox ID="TxtClaimType" runat="server" BackColor="Silver" ReadOnly="True"></asp:TextBox>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1">&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1" style="font-style: italic; color: #000000;">&nbsp;Claim Amount:</td>
										<td>&nbsp;<asp:TextBox ID="TxtAmount" runat="server" BackColor="Silver" ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;
                                        </td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1">&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1" style="font-style: italic; color: #000000;">&nbsp;Hospital_details:</td>
										<td>&nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="Silver" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>&nbsp;&nbsp;
                                        </td>
									</tr>
									<%--<tr>
										<td>&nbsp;</td>
										<td>&nbsp;Bill:</td>
										<td>&nbsp;<img src=&nbsp;&nbsp;
                                        </td>
									</tr>--%>
									<tr>
										<td>&nbsp;</td>
										<td class="style1">&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1" style="font-style: italic; color: #000000;">&nbsp;Details:</td>
										<td>&nbsp;<asp:TextBox ID="TxtDescription" runat="server" MaxLength="250" TextMode="MultiLine"
                                                Width="301px" BackColor="Silver" ReadOnly="True"></asp:TextBox>&nbsp;</td>
									</tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td class="style1">
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td class="style1" style="font-style: italic; color: #000000;">
                                            &nbsp;Action:</td>
                                        <td>
                                            &nbsp;<asp:RadioButton ID="RdApprove" runat="server" Checked="True" 
                                                Text="Approve" GroupName="r1" ForeColor="Black" />&nbsp;<asp:RadioButton
                                                ID="RdReject" runat="server" Text="Reject" GroupName="r1" 
                                                ForeColor="Black" /></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style1">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1" style="font-style: italic; color: #000000;">&nbsp;Remarks:</td>
										<td>&nbsp;<asp:TextBox ID="TxtRemarks" runat="server" Width="295px" MaxLength="250" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" *Required" ControlToValidate="TxtRemarks"></asp:RequiredFieldValidator></td>
									</tr>
                                    <tr>
                                        <td>
                                        </td>
                                        <td class="style1">
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1">&nbsp;</td>
										<td>&nbsp;<asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />&nbsp;
                                            <asp:Button ID="BtnBack" runat="server" Text="Back" OnClick="BtnBack_Click" /></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1">&nbsp;</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td class="style1">&nbsp;</td>
										<td>
                                            <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Black"></asp:Label>
                                        </td>
									</tr>
								</table></td></tr></table>
    
    </div>
    </form>
</body>
</html>
