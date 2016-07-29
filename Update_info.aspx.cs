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
public partial class Update_info : System.Web.UI.Page
{
    CPD obj = new CPD();
    string st_q, img_name;
    int stq;
    static string fn;
    string cn = "";
    string st = "";
    SqlDataReader dr1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            obj.connectdatabase(cn);
            st = "select ename,lname,address,designation,org_name from emp where empno=" + Session["empno"].ToString();
            dr1 = obj.showonerecord(st);
            if (dr1.Read() == true)
            {
                ename.Text = dr1["ename"].ToString();
                lname.Text = dr1["lname"].ToString();
                desig.Text = dr1["designation"].ToString();
                org_name.Text = dr1["org_name"].ToString();
                addr.Text = dr1["address"].ToString();
            }
            ch_msg.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //dr1.Close();
        st = "update emp set ename='" + ename.Text + "',lname='"+ lname.Text + "',address='"+addr.Text+"',designation='" + desig.Text + "',org_name='" + org_name.Text + "' where empno=" + Session["empno"].ToString();
        int i = obj.updaterecord(st);
        if (i == 1)
        {
            ch_msg.Visible = true;
            ch_msg.Text = "Your Record Updated..!";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
