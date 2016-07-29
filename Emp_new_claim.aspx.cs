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
public partial class claim : System.Web.UI.Page
{
    CPD obj = new CPD();
    string st = "";
    string cn = "";
    string img_name,fn;
    int i,cno,stq;
    string pending="pending";
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.connectdatabase(cn);
        if (IsPostBack == false)
        {
            DropDownList1.Items.Add("Select Claim Type");
            DropDownList1.Items.Add("Medicine");
            DropDownList1.Items.Add("Surgery");
            DropDownList1.Items.Add("Laboratory Tests");
            //DropDownList1.Items.Add("dffg");
            //DropDownList1.Items.Add("dffg");

        }
        st = "select max(claim_no) from claim_plan";
        cno = obj.max(st);
        claim_no.Text = cno.ToString();
        //if (Session["emp_no"] == null)
        //{
        //    Response.Redirect("home.aspx");
        //}
    }
    protected void ADD_Click(object sender, EventArgs e)
    {

        img_store();
        st="insert into claim_plan (claim_no,claim_type,claim_amt,claim_date,h_name,h_add,s_bill,e_remark,empno,status) values ('"+cno.ToString()+"','"+DropDownList1.SelectedItem.Text+"',"+claim_amt.Text+",'"+DateTime.Today.ToShortDateString()+"','"+textbox1.Text+"','"+textbo2.Text+"','"+img_name+"','"+textbox3.Text+"','"+Session["empno"].ToString()+"','"+pending.ToString()+"')";
        i = obj.saverecord(st);
        if (i == 1)
        {
            Label1.Text = "Your claim added successfully.......!";
            Label1.ForeColor = Color.Blue;
        }
        else
        {
            Label1.Text = "Try once....";
            Label1.ForeColor = Color.Red;
        }
    }
    protected void CANCEL_Click(object sender, EventArgs e)
    {
        claim_no.Text = "";
        claim_amt.Text = "";
        textbo2.Text = "";
        textbox1.Text = "";
        textbox3.Text = "";


    }
    
    
   
    
    public void img_store()
    {
        if (fileupload1.HasFile)
        {
            if (fileupload1.FileName.EndsWith(".jpg") || fileupload1.FileName.EndsWith(".JPG") || fileupload1.FileName.EndsWith(".jpeg") || fileupload1.FileName.EndsWith(".gif") || fileupload1.FileName.EndsWith(".png") || fileupload1.FileName.EndsWith(".bmp") || fileupload1.FileName.EndsWith(".tiff"))
            {
                img_name = stq.ToString() + "_.jpg";
                fn = Server.MapPath("~\\My files\\" + fileupload1.FileName.Replace(fileupload1.FileName, img_name));
                fileupload1.PostedFile.SaveAs(fn);

            }
        }
    }
}
