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
public partial class S_view_details : System.Web.UI.Page
{
    DataSet ds1;
    System.Data.DataTable dt;
    System.Data.DataRow dr;
    SqlDataAdapter oleda1;
    string st = "";
    string cn = "";

    SqlCommand cm1;
    SqlConnection db1;
    SqlCommandBuilder cb1;
    //DataKey kyc
    CPD obj = new CPD();
    protected void Page_Load(object sender, EventArgs e)
    {
        //cn = @"Data Source=.\SQLEXPRESS;AttachDbFilename=H:\wcps info\WebSite1\App_Data\WCPS.MDF;Integrated Security=True;User Instance=True";
        //db1 = new SqlConnection(cn);
        //db1.Open();
        db1 = obj.connectdatabase(cn);
        st = "select * from surveyor";
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
    protected void gridview1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        dt = ds1.Tables["order"];
        dr = dt.Rows[e.RowIndex];
        dr.Delete();
        oleda1.Update(ds1, "order");
        gridview1.EditIndex = -1;
        gridview1.DataSource = ds1.Tables["order"].DefaultView;
        gridview1.DataBind();
        Response.Write("record deleted");
    }
    protected void gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        gridview1.EditIndex = -1;
        gridview1.DataSource = ds1.Tables["order"].DefaultView;
        gridview1.DataBind();

    }
    protected void gridview1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gridview1.PageIndex = e.NewPageIndex;
        gridview1.DataSource = ds1;
        gridview1.DataMember = "order";
        gridview1.DataBind();
    }
    protected void gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow gr1;
        gr1 = gridview1.Rows[e.RowIndex];
        dt = ds1.Tables["order"];
        dr = dt.Rows[e.RowIndex];
        dr.BeginEdit();
        dr[2] = ((TextBox)(gr1.Cells[3].Controls[0])).Text;
        dr[3] = ((TextBox)(gr1.Cells[4].Controls[0])).Text;
        dr.EndEdit();
        oleda1.Update(ds1, "order");
        gridview1.EditIndex = -1;
        gridview1.DataSource = ds1.Tables["order"].DefaultView;
        gridview1.DataBind();
        Response.Write("record updated");
    }
    protected void gridview1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gridview1.EditIndex = e.NewEditIndex;
        gridview1.DataSource = ds1.Tables["order"].DefaultView;
        gridview1.DataBind();

    }
}
