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
public partial class s_add_details : System.Web.UI.Page
{
    string st = "";
    string cn = "";
    CPD obj = new CPD();
    int i,id;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.connectdatabase(cn);
        Label1.Visible = false;
        
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        st = "select max(empno) from emp";
        int eid = obj.max(st);
        st = "select max(surveyor_id) from surveyor";
        id = obj.max(st);


        st = "insert into surveyor values (" + id.ToString() + ",'" + textbox1.Text + "','"+textbox2.Text+"','"+textbox3.Text+"',"+eid.ToString()+")";
            i = obj.saverecord(st);
            if (i == 1)
            {
                st = "insert into emp_log(empno,username,password,status)values('" +eid.ToString()+ "','" + textbox2.Text + "','"+textbox3.Text+"',2)";
                int x = obj.saverecord(st);
                if (x == 1)
                {
                    Label1.Visible = true;
                    Label1.Text = "Record Saved";
                    //Response.Write("record saved");
                }
            }
        }
    
}
