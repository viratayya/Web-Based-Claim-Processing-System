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
public partial class View_status : System.Web.UI.Page
{
    string st = "";
    string cn = "";
    CPD obj = new CPD();
    DataSet ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.connectdatabase(cn);
        if (IsPostBack == false)
        {
            dropdownlist1.Items.Add("pending");
            dropdownlist1.Items.Add("Approve");
            dropdownlist1.Items.Add("Reject");
        }
    }


    protected void button1_Click(object sender, EventArgs e)
    {
        st = "select * from claim_plan where empno=" + Session["empno"].ToString() + " and status='" + dropdownlist1.SelectedItem.Text + "'";
        ds1 = obj.showallrecord(st, "claim");
        if (ds1.Tables["claim"].Rows.Count > 0)
        {
            gridview1.DataSource = ds1;
            gridview1.DataMember = "claim";
            gridview1.DataBind();
        }
    }
    
}
