<%@ Control Language="C#" AutoEventWireup="true" CodeFile="cpd_banner.ascx.cs" Inherits="cpd_banner" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>template009</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="styles.css">
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/script.js"></script>
    <style type="text/css">
        .style1
        {
            width: 127px;
        }
        .style2
        {
            width: 89px;
        }
        .style3
        {
            width: 106px;
        }
        .style4
        {
            width: 57px;
        }
        .style5
        {
            width: 71px;
        }
        .style6
        {
            width: 167px;
        }
    </style>
</head>   
<center>
<body id="pages" style="text-align:center">
<table id="banner"><tr><td>
<div class="block1">
   <div class="main">
      <header>
         <h1 style="text-align:center; color: #FFFFFF;">Claim Processing System</h1>
         <nav>
            <ul class="sf-menu">
               <li class="f_item current"><a href="Cpd_home.aspx">Home</a></li>
               <li class="f_item current"><a href="about_us.aspx">About Us</a></li>
               <li class="f_item current"><a href="Add_feedback.aspx">FeedBack</a></li>
               <%--<li class="f_item current"><a href="#">View Status</a></li>--%>
               <li class="f_item current"><a href="Contact_us.aspx">Contact Us</a></li>
            </ul>
         </nav>
         <div class="clear"></div>
     </header>
   </div>
</div>
</td></tr>
<tr><td>
	  <div class="proVersionLink"><table><tr>
            <td class="style4">&nbsp;</td>
            <td align="left" valign="top" class="style3" 
                style="font-weight: bold; font-size: medium">
		<asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="Black">UserName:</asp:Label>
		</td>
		<td align="left" valign="top" class="style2">
            <asp:TextBox ID="TextBox1" runat="server" 
                Height="26px"></asp:TextBox></td>
                <td align="left" valign="top" class="style5" 
                style="font-size: medium; font-weight: bold"><asp:Label ID="Label2" runat="server" 
                        ForeColor="Black">Password:</asp:Label></td>
                <td align="left" valign="top" class="style1" 
                style="font-weight: bold; font-size: medium">
                    <asp:TextBox ID="TextBox2" runat="server" 
                Height="27px" TextMode="Password"></asp:TextBox></td>
                <td align="center" valign="top" 
                style="font-weight: bold; font-size: medium; background-color:Transparent" 
                            class="style6">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                Height="27px" Width="227px" ForeColor="Black" onclick="LinkButton1_Click">SignIn</asp:LinkButton></td>
		</tr></table>
		</div></td></tr>
<tr><td><div class="block2" style="top: 0px; left: 0px; height: 302px">
    <img alt="" src="images/img09.jpg" /></div>
    </td>
    </tr></table>
</body>
</center>
</html>