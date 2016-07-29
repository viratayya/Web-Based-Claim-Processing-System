<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Emp_new_claim.aspx.cs" Inherits="claim" %>
<%@ Register TagPrefix="header" TagName="menu"  Src="~/banner.ascx"  %>
<%@ Register src="side_menu.ascx" tagname="side_menu" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    
    <style type="text/css">
        .style1
        {
            width: 20%;
        }
        .style2
        {
            width: 19%;
        }
        .style7
        {
            height: 32px;
            width: 160px;
        }
        .style8
        {
            width: 160px;
        }
        .style9
        {
            height: 32px;
            width: 109px;
        }
        .style10
        {
            width: 109px;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
           <table style="border: thick outset #000000; width: 1083px;">
         <tr><td align="center" colspan="2">
             <header:menu ID="menu1" runat="server" />
             </td></tr>
             <tr><td class="style2">
                 <uc1:side_menu ID="side_menu1" runat="server" />
                 </td>
             <td><table border="0" 
                 style="width: 117%; height: 151px; z-index: 100; left: 313px;  top: 564px;" 
                 id="TABLE1" align="center">
            <tr>
               <td align="center"  valign="Middle"style="width: 37px; height: 8px; " 
                    colspan="3">
                 <strong><span style="font-size: 16pt; color: #339966; ">&nbsp;NEWAPPLICATION</span></strong>
               </td>
            </tr>
            <tr>
               <td align="center"  valign="Middle"style="width: 37px; height: 8px; " 
                    colspan="3">
                   &nbsp;</td>
            </tr>
            <tr>
            <td align="right"style="color: #000000;" class="style9">CLAIM_NO:</td>
            <td align="left" class="style7"><asp:TextBox ID="claim_no" runat="server" Height="24px" Width="172px" TabIndex="1" ReadOnly="true"></asp:TextBox>
            </td>
            <td>
                 </td>
          </tr>
            <tr>
            <td align="right"style="color: #000000;" class="style9">&nbsp;</td>
            <td align="left" class="style7">&nbsp;</td>
          </tr>
            <tr><td align="right"style="color: #000000;" class="style9">CLAIM TYPE:</td>
            <td align="left" class="style7"><asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="179px" TabIndex="2"></asp:DropDownList></td>
            <td align="left" style="width: 942px; height: 32px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select Type" 
                    InitialValue="Select Claim Type"></asp:RequiredFieldValidator>
                                   </td></tr>
            <%--<tr><td align="right" style="height: 157px; width: 167px;">DATE OF CLAIM:</td>
            <td  align="left"style="width: 36px; height: 157px;"><asp:TextBox ID="claim_date" runat="server" Height="24px" Width="149px"></asp:TextBox>
                <asp:LinkButton ID="LinkButton1" runat="server" Style="z-index: 101; left: 264px;
            position: absolute; top: 223px" Height="26px" Width="21px" OnClick="LinkButton1_Click">C</asp:LinkButton></td>
            <td align="left" style="height: 157px; width: 942px;"><asp:Calendar ID="cal" runat="server" Height="202px" Width="279px" OnSelectionChanged="cal_SelectionChanged" Visible="False" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399">
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <WeekendDayStyle BackColor="#CCCCFF" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True"
                    Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            </asp:Calendar>
             </td></tr>--%>
            <tr><td align="right"style="color: #000000;" class="style9">&nbsp;</td>
            <td align="left" class="style7">&nbsp;</td>
            <td align="left" style="width: 942px; height: 32px;">&nbsp;</td></tr>
            <tr><td align="right" style="color: #000000;" class="style9">
                CLAIM_AMT:</td>
            <td align="left" class="style7"><asp:TextBox ID="claim_amt" runat="server" Height="24px" Width="178px" TabIndex="4"></asp:TextBox></td>
            <td style="height: 32px; width: 942px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="claim_amt" ErrorMessage="Enter Claim Amount"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="claim_amt" ErrorMessage="Enter Numerics Only" 
                    ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                </td></tr>
           
            
            
            <tr><td align="right" style="color: #000000;" class="style9">
                &nbsp;</td>
            <td align="left" class="style7">&nbsp;</td>
            <td style="height: 32px; width: 942px;">&nbsp;</td></tr>
           
            
            
            <tr><td align="right" style="color: #000000;" class="style9">HOSPITAL_NAME:</td>
            <td class="style8"><asp:TextBox ID="textbox1" runat="server" Height="28px" Width="174px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="textbox1" ErrorMessage="Enter Hospital Name"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="textbox1" ErrorMessage="Enter Text Only" 
                        ValidationExpression="[a-z,\s,A-Z]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
           
            
            
            <tr><td align="right" style="color: #000000;" class="style9">&nbsp;</td>
            <td class="style8">&nbsp;</td>
            </tr>
            <tr>
            <td align="right" style="color: #000000;" class="style9">HOSPITAL_ADDRESS (with 
                hospital number):</td>
            <td class="style8"><asp:TextBox ID="textbo2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="textbo2" ErrorMessage="Enter The Address"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="textbo2" ErrorMessage="Enter Text Only" 
                        ValidationExpression="[a-z,\s,A-Z]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
            <td align="right" style="color: #000000;" class="style9">&nbsp;</td>
            <td class="style8">&nbsp;</td>
            </tr>
            <tr>
            <td align="right" style="color: #000000;" class="style9">SCANED_BILL:</td>
            <td class="style8"><asp:FileUpload ID="fileupload1" runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="fileupload1" ErrorMessage="Image Should Upload"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td align="right" style="color: #000000;" class="style9">&nbsp;</td>
            <td class="style8">&nbsp;</td>
            </tr>
            <tr>
            <td align="right" style="color: #000000;" class="style9">REMARKS:</td>
            <td class="style8"><asp:TextBox ID="textbox3" runat="server" TextMode="MultiLine" 
                    Height="32px"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="textbox3" ErrorMessage="Enter Remarks"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="textbox3" ErrorMessage="Enter Text Only" 
                        ValidationExpression="[a-z,\s,A-z]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
            <td align="right" style="color: #000000;" class="style9">&nbsp;</td>
            <td class="style8">&nbsp;</td>
            </tr>
            <tr><td align="right" colspan="1" class="style10"><asp:Button ID="ADD" runat="server" Text="ADD" OnClick="ADD_Click"></asp:Button></td>
            <td align="left" class="style8"><asp:Button ID="CANCEL" runat="server" Text="CANCEL" OnClick="CANCEL_Click" /></td></tr>
            <tr><td align="center" colspan="3"><asp:Label ID="Label1" runat="server">LABEL1</asp:Label></td></tr>
        </table></td></tr></table>
    </div>
    </form>
</body>
</html>
