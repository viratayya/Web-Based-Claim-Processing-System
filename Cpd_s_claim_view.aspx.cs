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
public partial class Cpd_s_claim_view : System.Web.UI.Page
{
    CPD obj = new CPD();
    string st = "";
    string cn = "";
    DataSet ds1;
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.connectdatabase(cn);
        st = "select * from s_claim_dtls";
        ds1 = obj.showallrecord(st, "claim");
        gridview1.AllowPaging = true;
        gridview1.PageSize = 5;
        if (Page.IsPostBack == false)
        {
            gridview1.DataSource = ds1.Tables["claim"].DefaultView;
            gridview1.DataBind();
        }
       
    }
    protected void gridview1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridview1.PageIndex = e.NewPageIndex;
        gridview1.DataSource = ds1;
        gridview1.DataMember = "claim";
        gridview1.DataBind();
    }
}
