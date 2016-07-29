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
using System.Data.SqlClient;
public partial class S_emp_claim : System.Web.UI.Page
{
    CPD obj = new CPD();
    string st = "";
    string cn = "";
    SqlDataReader dr1;
    //string rd, pendding;
    int i;
    //SqlConnection db;
    protected void Page_Load(object sender, EventArgs e)
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
                textbox1.Text = dr1["h_add"].ToString();
                TxtDescription.Text = dr1["e_remark"].ToString();
            }
            dr1.Close();
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        st = "select max(s_id) from s_claim_dtls";
        int sid = obj.max(st);
        st="insert into s_claim_dtls values ("+sid.ToString()+","+Request.QueryString["claim_no"].ToString()+",'"+TxtRemarks.Text+"','"+DateTime.Today.ToShortDateString()+"')";
        int i=obj.saverecord(st);
        if(i==1)
        {
            Response.Redirect("S_home.aspx");
        }
    }
    protected void BtnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("S_emp_details.aspx");
    }
    protected void TxtApplyDate_TextChanged(object sender, EventArgs e)
    {

    }
}
