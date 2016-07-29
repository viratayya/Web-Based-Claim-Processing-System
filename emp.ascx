<%@ Control Language="C#" AutoEventWireup="true" CodeFile="emp.ascx.cs" Inherits="emp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Claim Processing System</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="styles.css">
    <script src="js/jquery-1.7.1.min.js"></script>
    <script src="js/script.js"></script>
</head>   
<body id="pages">
<table id="banner"><tr><td>
<div class="block1">
   <div class="main">
      <header>
         <h1 style="text-align:center; color: #FFFFFF;">Claim Processing System</h1>
         <nav>
            <ul class="sf-menu">
               <li class="f_item current"><a href="S_home.aspx">Home</a></li>
               </ul>
         </nav>
         <div class="clear"></div>
     </header>
   </div>
</div>
</td></tr>
<tr><td>
	  <div class="proVersionLink"><table><tr>
            <td>&nbsp;</td>
            <td align="left" valign="top" class="style2" 
                style="font-weight: bold; font-size: medium">
		<asp:Label ID="Label1" runat="server" ForeColor="Black">UserName:</asp:Label>
		</td>
		<td align="left" valign="top" class="style2">
            <asp:TextBox ID="TextBox1" runat="server" 
                Height="26px"></asp:TextBox></td>
                <td align="left" valign="top" class="style2" 
                style="font-size: medium; font-weight: bold"><asp:Label ID="Label2" runat="server" 
                        ForeColor="Black">Password:</asp:Label></td>
                <td align="left" valign="top" class="style1" 
                style="font-weight: bold; font-size: medium">
                    <asp:TextBox ID="TextBox2" runat="server" 
                Height="27px" TextMode="Password"></asp:TextBox></td>
                <td align="center" valign="top" 
                style="font-weight: bold; font-size: medium; background-color:Transparent" 
                            class="style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                Height="27px" Width="227px" onclick="LinkButton1_Click" ForeColor="Black">SignIn</asp:LinkButton></td>
                <td align="right" valign="top" class="style2" 
                style="font-weight: bold; font-size: medium;background-color:Transparent">
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                Height="27px" Width="169px" onclick="LinkButton2_Click" 
                        PostBackUrl="~/signup.aspx" ForeColor="Black">SignUp</asp:LinkButton></td>
		</tr></table>
		</div></td></tr>
<tr><td><div class="block2" style="top: 0px; left: 0px; height: 302px">
    <img alt="" src="images/img09.jpg" /></div>
    </td>
    </tr></table>
</body>
</html>