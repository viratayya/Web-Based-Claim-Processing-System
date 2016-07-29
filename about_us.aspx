<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about_us.aspx.cs" Inherits="about_us" %>

<%@ Register src="banner.ascx" tagname="banner" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

 p.MsoNormal
	{margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	        margin-left: 0in;
            margin-right: 0in;
            margin-top: 0in;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table style="border: thick outset #000000;"><tr><td>
        <uc1:banner ID="banner1" runat="server" />
        </td></tr>
    <tr><td bgcolor="White">
        <p class="MsoNormal" 
            style="font-family: 'Book Antiqua'; font-size: medium; font-style: normal; color: #000000">
            <span>ABC is a company which is having employee strength of at least 1000. All 
            the employees are provided medical reimbursement facility which means that the 
            expenditure incurred by the employee for treatment is reimbursed by the company. 
            For reimbursement, the employee needs to fill in a form detailing the treatment 
            undertaken which includes the name &amp; cost of medicines, laboratory tests, 
            surgery. The form is duly signed by the employee and it will be sent to the 
            concerned Claims Processing Department (CPD) by messenger for processing. CPD 
            will process it and the order regarding the reimbursement is sent to the Cash 
            counter (CC) where in the employee can come and receive the reimbursement 
            amount.<o:p></o:p></span></p>
                        <p class="MsoNormal" 
                            style="mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; font-weight: bold; font-size: large; font-family: Arial; color: #000000;">
                            <b><span>Why WCPS?</span></b></p>
                        <p class="MsoNormal" 
                            style="font-family: 'Book Antiqua'; font-size: medium; font-style: normal; color: #000000">
                            <span>From an end-user perspective, the Web Based Claims Processing System 
                            Project consists of two functional elements: enhanced Employee modules for 
                            Login, Apply for new claim, view status of already applied claim. And CPD module 
                            for approve/reject claim, view pending status, Add/Edit employee details.<o:p></o:p></span></p>
                        <p class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">
                            <o:p></o:p>
                        </p>
                        <p class="MsoNormal" 
                            style="font-family: 'Book Antiqua'; font-size: medium; font-style: normal; color: #000000">
                            <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To 
                            overcome problems like manual application forms can may miss during transit, 
                            form is prone to weariness due to which the company may not be able to read data 
                            in it after some years.&nbsp; The employees who claimed for medical 
                            reimbursement need to visit the CC from time to time enquiring about the status 
                            of their application. This results in enormous wastage of time of the employee. 
                            It is proposed to develop software titled <b>Web Based Claims Processing System 
                            (WCPS)</b> which is web based so that the employee can fill the form online and 
                            submit it so that the form is sent to CPD through Internet. At CPD, the form 
                            needs to be checked automatically by a program which will compute the amount 
                            that needs to be reimbursed to the employee for the treatment undertaken. <o:p></o:p>
                            </span>
                        </p>
                        <p class="MsoNormal" style="mso-margin-top-alt:auto;mso-margin-bottom-alt:auto">
                            <b><span>Project Scope:<i> <o:p></o:p></i></span></b>
                        </p>
                        <p class="MsoNormal" 
                            style="font-family: 'Book Antiqua'; font-size: medium; font-style: normal; color: #000000">
                            <span>The Web Based Claims Processing System (WCPS) will permit to enter new 
                            claim, track the claim status and maintaining master information. The main users 
                            of the project are Employee of all departments and Employee of CPD – Claim 
                            Processing Department.<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span><o:p>&nbsp;</o:p></span></p>
                    </td></tr></table>
    </div>
    </form>
</body>
</html>
