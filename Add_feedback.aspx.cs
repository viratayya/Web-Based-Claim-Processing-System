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
public partial class Add_feedback : System.Web.UI.Page
{
    string st = "";
    string cn = "";
    CPD obj = new CPD();
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.connectdatabase(cn);


    }
    protected void button1_Click(object sender, EventArgs e)
    {
        st = "select max(f_id) from feedback";
        int id = obj.max(st);
        st = "insert into feedback values (" + id.ToString() + ",'" + textbox1.Text + "','" + textbox2.Text + "','" + textbox3.Text + "','"+DateTime.Today.ToShortDateString()+"')";
        i = obj.saverecord(st);
        if (i == 1)
        {
            Response.Write("message saved");

        }
    }
    protected void button2_Click(object sender, EventArgs e)
    {
        textbox1.Text = "";
        textbox2.Text = "";
        textbox3.Text = "";
    }
}
