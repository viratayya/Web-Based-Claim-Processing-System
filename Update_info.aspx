<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_info.aspx.cs" Inherits="Update_info" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="side_menu.ascx" tagname="side_menu" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style7
        {
            height: 53px;
        }
        .style8
        {
            width: 89px;
            height: 50px;
        }
        .style9
        {
            height: 53px;
            width: 26px;
        }
        .style11
        {
            width: 127px;
            height: 36px;
        }
        .style12
        {
            width: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="border: thick outset #000000;"><tr><td colspan="2"><header:menu ID="banner" runat="server" /></td>
         </tr>
          <tr><td align="center" width="20%">
              <uc1:side_menu ID="side_menu1" runat="server" />
              </td>
              <td><table style="width: 525px; height: 494px; text-align:right;"><tr>
                     <td style="font-size: medium; color: #000000;" class="style11" 
                  colspan="3">Employee Registration:</td>
                        </tr>
                        <tr>
                     <td style="text-align: center; font-size: medium; color: #000000;" class="style1" 
                                colspan="3">&nbsp;</td>
                              </tr>
                              <tr><td style="text-align: right; font-size: medium; color: #000000;" 
                                      class="style7">Ename:</td>
                     <td style="text-align: left" class="style9"><asp:TextBox ID="ename" runat="server"></asp:TextBox></td>
                                  <td>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                          ControlToValidate="ename" ErrorMessage="Enter Text Only" 
                                          ValidationExpression="[a-z,\s,A-Z]+"></asp:RegularExpressionValidator>
                                  </td>
                        </tr>
                        <tr><td style="text-align: right; font-size: medium; color: #000000;">LastName</td>
                         <td style="text-align: left" class="style12"><asp:TextBox ID="lname" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="lname" ErrorMessage="Enter Text Only" 
                                    ValidationExpression="[a-z,\s,A-Z]+"></asp:RegularExpressionValidator>
                            </td>
                          </tr>
                          <tr><td style="text-align: right; font-size: medium; color: #000000;" 
                                  class="style3">Designation:</td>
                          <td class="style12"><asp:TextBox ID="desig" 
                                  runat="server"></asp:TextBox></td>
                              <td>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                      ControlToValidate="desig" ErrorMessage="Enter Text Only" 
                                      ValidationExpression="[a-z,\s,A-Z]+"></asp:RegularExpressionValidator>
                              </td>
                           </tr>
                           <tr><td style="text-align: right; font-size: medium; color: #000000;">Organization name:</td>
                           <td style="text-align: left" class="style12"><asp:TextBox ID="org_name" runat="server" 
                                   Width="152px"></asp:TextBox></td>
                           <td style="width: 174px; text-align: center;">
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                   ControlToValidate="org_name" ErrorMessage="Enter Text Only" 
                                   ValidationExpression="[a-z,\s,A-Z]+"></asp:RegularExpressionValidator>
                               </td></tr>
                           <tr><td style="text-align: right; font-size: medium; color: #000000;">Address:</td>
                           <td style="text-align: left" class="style12"><asp:TextBox ID="addr" runat="server" TextMode="MultiLine" Width="160px"></asp:TextBox></td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                        ControlToValidate="addr" ErrorMessage="Enter Text Only" 
                                        ValidationExpression="[a-z,\s,A-Z]+"></asp:RegularExpressionValidator>
                                </td>
                          </tr>
                          
                           <%--<tr><td style="text-align: center">Date Of Birth:</td>
                           <td style="text-align: center"><asp:DropDownList ID="DD_date" runat="server"></asp:DropDownList>
                               <asp:DropDownList ID="DD_mont" runat="server"></asp:DropDownList>
                               <asp:DropDownList ID="DD_year" runat="server"></asp:DropDownList></td>
                           <td style="width: 174px"></td></tr>--%>
                           
                           
                           <tr><td style="text-align: center; font-size: medium; color: #000000;"></td>
                           <td style="text-align: center" class="style12">&nbsp;</td>
                           <td style="width: 174px; text-align: center;">&nbsp;</td></tr>
                           <tr><td colspan="1" align="center" class="style8"><asp:Button ID="Button1" runat="server" Text="UPDATE" OnClick="Button1_Click" />               
                               </td>
                               <td class="style12">
                              <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="CLEAR" />
                               </td>
                               <td>
                               </td>
                            </tr>
                           <tr><td colspan="3" align="Center"><asp:Label ID="ch_msg" runat="server" 
                                   Height="28px" Width="355px" ForeColor="Black">ch_msg</asp:Label></td></tr>
                           </table></td></tr></table>
    </div>
    </form>
</body>
</html>
