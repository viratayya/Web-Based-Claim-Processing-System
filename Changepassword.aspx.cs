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
using System.Drawing;
public partial class Changepassword : System.Web.UI.Page
{
    string st = "";
    string cn = "";
    CPD obj = new CPD();
    SqlDataReader dr1;
    int i;
    SqlConnection db;
    protected void Page_Load(object sender, EventArgs e)
    {
       db =obj.connectdatabase(cn);

    }
    protected void button1_Click(object sender, EventArgs e)
    {
        st = "select * from emp_log where empno=" + Session["empno"].ToString();

        if ((dr1 =obj.showonerecord(st)).Read() == true)
        {
            dr1.Close();
            st = "update emp_log set password='" + textbox2.Text + "' where empno=" + Session["empno"].ToString();
            i = obj.updaterecord(st);
            if (i == 1)
            {
                Label1.Text = "password changed";
                Label1.ForeColor = Color.Brown;
                //Response.Write((<vbscript>) "insdfd"(</vbscript>)); 
            }
        }
   }
    protected void button2_Click(object sender, EventArgs e)
    {
        textbox1.Text = "";
        textbox2.Text = "";
        textbox3.Text = "";
    }
}
