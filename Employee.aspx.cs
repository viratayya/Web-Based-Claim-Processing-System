using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Drawing;
using System.Data.SqlClient;
public partial class Employee : System.Web.UI.Page
{
    CPD obj = new CPD();
    string st = "";
    string cn = "";
    SqlDataReader dr1;
    string rd;
    int i;
    //SqlConnection db;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            if (Request.QueryString["claim_no"] != null)
            {
                obj.connectdatabase(cn);
                st = "select claim_no,ename,lname,claim_date,claim_type,claim_amt,h_add,e_remark from emp,claim_plan where claim_plan.empno=emp.empno and claim_no=" + Request.QueryString["claim_no"].ToString();
                dr1 = obj.showonerecord(st);
                if (dr1.Read() == true)
                {
                    TxtEmployee.Text = dr1["ename"].ToString() + dr1["lname"].ToString();
                    TxtApplyDate.Text = dr1["claim_date"].ToString();
                    TxtClaimType.Text = dr1["claim_type"].ToString();
                    TxtAmount.Text = dr1["claim_amt"].ToString();
                    TextBox1.Text = dr1["h_add"].ToString();
                    TxtDescription.Text = dr1["e_remark"].ToString();
                }
                dr1.Close();
            }
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        if (RdApprove.Checked)
            rd = RdApprove.Text;
        else
            rd = RdReject.Text;
       
        st="update claim_plan set a_remark='"+TxtRemarks.Text+"', status='"+rd+"' where  claim_no="+Request.QueryString["claim_no"].ToString()+"";
        i = obj.updaterecord(st);
        if (i == 1)
        {
            //Response.Write("add");
            Label1.Text = "added";
        }

    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employeedetails.aspx");
    }
}
