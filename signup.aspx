<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            height: 34px;
            font-weight: bold;
        }
        .style2
        {
            height: 36px;
        }
        .style3
        {
            height: 40px;
        }
        .style4
        {
            width: 174px;
            height: 40px;
        }
        .style5
        {
            height: 41px;
        }
        .style6
        {
            width: 174px;
            height: 41px;
        }
        .style7
        {
            width: 231px;
        }
        .style8
        {
            height: 40px;
            width: 231px;
        }
        .style9
        {
            height: 41px;
            width: 231px;
        }
        .style13
        {
            width: 946px;
        }
        .style14
        {
            height: 40px;
            width: 946px;
        }
        .style15
        {
            height: 41px;
            width: 946px;
        }
        .style16
        {
            width: 578px;
        }
        .style17
        {
            height: 40px;
            width: 578px;
        }
        .style18
        {
            height: 41px;
            width: 578px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <table><tr><td><header:menu ID="banner" runat="server" /></td>
         </tr>
          <tr><td align="center">
              <table style="width: 779px; height: 725px; text-align:right;" align="center"><tr>
                     <td style="text-align: center; font-size: medium;" class="style1" 
                  colspan="3">Employee Registration:</td>
                        </tr>
                        <tr>
                     <td style="text-align: center; font-size: medium;" class="style1" colspan="3">&nbsp;</td>
                              </tr>
                              <tr><td style="text-align: center" class="style13">Ename:</td>
                     <td style="text-align: center" class="style7"><asp:TextBox ID="ename" runat="server"></asp:TextBox></td>
                        <td style="text-align: center;" class="style16"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ename" ErrorMessage="Enter First Name" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                  <td>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                          ControlToValidate="ename" ErrorMessage="Enter  Only Text" 
                                          ValidationExpression="[a-z,A-Z]+"></asp:RegularExpressionValidator>
                                  </td>
                  </tr>
                        <tr><td style="text-align: center" class="style13">LastName</td>
                         <td style="text-align: center" class="style7"><asp:TextBox ID="lname" runat="server"></asp:TextBox></td>
                          <td style="text-align: center;" class="style16"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lname" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator></td>
                            <td>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="lname" ErrorMessage="Enter  Only Text" 
                                    ValidationExpression="[a-z,A-Z]+"></asp:RegularExpressionValidator>
                            </td>
                  </tr>
                          <tr><td style="text-align: center" class="style14">Designation:</td>
                          <td style="text-align: center" class="style8"><asp:TextBox ID="desig" 
                                  runat="server"></asp:TextBox></td>
                           <td style="text-align: center;" class="style17">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                   ControlToValidate="desig" ErrorMessage="Enter The Designation " 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                              <td>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                                      ControlToValidate="desig" ErrorMessage="Enter  Only Text" 
                                      ValidationExpression="[a-z,A-Z]+"></asp:RegularExpressionValidator>
                              </td>
                  </tr>
                           <tr><td style="text-align: center" class="style13">Organization name:</td>
                           <td style="text-align: center" class="style7"><asp:TextBox ID="org_name" runat="server" 
                                   Width="152px"></asp:TextBox></td>
                           <td style="text-align: center;" class="style16">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="org_name" ErrorMessage="Enter The Organization " 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator></td>
                                  <td>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                                          ControlToValidate="org_name" ErrorMessage="Enter  Only Text" 
                                          ValidationExpression="[a-z,A-Z]+"></asp:RegularExpressionValidator>
                                  </td>
                              </tr>
                           <tr><td style="text-align: center" class="style13">Address:</td>
                           <td style="text-align: center" class="style7"><asp:TextBox ID="addr" runat="server" TextMode="MultiLine" Width="160px"></asp:TextBox></td>
                           <td style="text-align: center;" class="style16"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="addr" ErrorMessage="Enter Address"></asp:RequiredFieldValidator></td></tr>
                           <tr><td style="text-align: center" class="style13">Gender:</td>
                           <td style="text-align: center" class="style7"><asp:RadioButton ID="RadioButton1" runat="server" Text="Male" ValidationGroup="gen" Height="20px" Width="78px" GroupName="gen" />
                               <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" Height="14px" Width="83px" GroupName="gen" /></td>
                           <td class="style16"></td></tr>
                           <tr><td style="text-align: center" class="style13">Date Of Birth:</td>
                           <td style="text-align: center" class="style7"><asp:DropDownList ID="DD_date" runat="server"></asp:DropDownList>
                               <asp:DropDownList ID="DD_mont" runat="server"></asp:DropDownList>
                               <asp:DropDownList ID="DD_year" runat="server"></asp:DropDownList></td>
                           <td class="style16"></td></tr>
                           <tr><td style="text-align: center" class="style13">Image:</td>
                           <td style="text-align: center" class="style7"><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                           <td style="text-align: center;" class="style16"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Select Image compulsary"></asp:RequiredFieldValidator></td></tr>
                           <tr><td style="text-align: center" class="style13">Email:</td>
                           <td style="text-align: center" class="style7"><asp:TextBox ID="e_id" runat="server" Width="152px" 
                                  ></asp:TextBox></td>
                           <td style="text-align: center;" class="style16">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                   ControlToValidate="e_id" ErrorMessage="Enter the User_name"></asp:RequiredFieldValidator>
                               <br />
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                   ControlToValidate="e_id" ErrorMessage="Enter The Proper Email_id" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                               </td></tr>
                           <tr><td style="text-align: center" class="style15">Password:</td>
                           <td style="text-align: center" class="style9"><asp:TextBox ID="pword" 
                                   runat="server" Width="152px" TextMode="Password"></asp:TextBox></td>
                           <td style="text-align: center;" class="style18">
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                   ControlToValidate="pword" ErrorMessage="Enter The Correct Password"></asp:RequiredFieldValidator>
                               </td></tr>
                           <tr><td style="text-align: center" class="style13">&nbsp;</td>
                           <td style="text-align: center" class="style7">&nbsp;</td>
                           <td style="text-align: center;" class="style16">&nbsp;</td></tr>
                           <tr><td colspan="3" align="center" class="style2"><asp:Button ID="Button1" runat="server" Text="REGISTRATION" OnClick="Button1_Click" />               
                               &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Clear" /></td></tr>
                           <tr><td colspan="3" align="Center"><asp:Label ID="ch_msg" runat="server" Height="28px" Width="355px">ch_msg</asp:Label></td></tr>
                           </table></td></tr></table>
    </div>
    </form>
</body>
</html>
