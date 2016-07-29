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
public partial class S_emp_details : System.Web.UI.Page
{
    string st = "";
    string cn = "";

    DataSet ds1;
    System.Data.DataTable dt;
    System.Data.DataRow dr;
    SqlDataAdapter oleda1;
    SqlCommand cm1;
    SqlConnection db1;
    SqlCommandBuilder cb1;
    CPD obj = new CPD();
    protected void Page_Load(object sender, EventArgs e)
    {
        //cn = @"Data Source=.\SQLEXPRESS;AttachDbFilename=H:\project\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        //cn = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Documents and Settings\Administrator\My Documents\Visual Studio 2008\WebSites\WebSite1\App_Data\WCPS.MDF;Integrated Security=True;User Instance=True";
        //db1 = new SqlConnection(cn);
        //db1.Open();
        db1 = obj.connectdatabase(cn);
        st = "select claim_no,ename,lname,claim_date,claim_amt,status from emp,claim_plan where emp.empno=claim_plan.empno";
        cm1 = new SqlCommand(st, db1);
        oleda1 = new SqlDataAdapter(cm1);
        cb1 = new SqlCommandBuilder(oleda1);
        oleda1.MissingSchemaAction = MissingSchemaAction.AddWithKey;
        ds1 = new DataSet();
        oleda1.Fill(ds1, "order");
        gridview1.AllowPaging = true;
        gridview1.PageSize = 2;
        if (Page.IsPostBack == false)
        {
            gridview1.DataSource = ds1.Tables["order"].DefaultView;
            gridview1.DataBind();
        }
    }
    protected void gridview1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridview1.PageIndex = e.NewPageIndex;
        gridview1.DataSource = ds1;
        gridview1.DataMember = "order";
        gridview1.DataBind();
    }
    
}
