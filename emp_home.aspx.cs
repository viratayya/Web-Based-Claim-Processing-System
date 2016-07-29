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
public partial class emp_home : System.Web.UI.Page
{
    CPD obj=new CPD();
    string st = "";
    string cn = "";
    DataSet ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
        //obj.connectdatabase(cn);
        //st = "select ename,u_img,designation,org_name from emp where empno=" + Session["empno"].ToString();
        //ds1 = CPD.D_set(st, "emp");
        //datalist1.DataSource = ds1.Tables["emp"];
        //datalist1.DataBind();

    }
}
