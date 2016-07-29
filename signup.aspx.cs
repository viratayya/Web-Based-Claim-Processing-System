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
public partial class signup : System.Web.UI.Page
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
        obj.connectdatabase(cn);
        if (Page.IsPostBack == false)
        {
            int i;
            DD_date.Items.Add("Day");
            for (i = 1; i < 32; i++)
                DD_date.Items.Add(i.ToString());

            DD_mont.Items.Add("MONTH");
            DD_mont.Items.Add("Jan");
            DD_mont.Items.Add("Feb");
            DD_mont.Items.Add("Mar");
            DD_mont.Items.Add("Apr");
            DD_mont.Items.Add("May");
            DD_mont.Items.Add("Jun");
            DD_mont.Items.Add("Jul");
            DD_mont.Items.Add("Aug");
            DD_mont.Items.Add("Sept");
            DD_mont.Items.Add("Oct");
            DD_mont.Items.Add("Nov");
            DD_mont.Items.Add("Dec");
            DD_year.Items.Add("YEAR");
            for (i = int.Parse(System.DateTime.Now.ToString("yyyy")) - 19; i >= 1920; i--)
                DD_year.Items.Add(i.ToString());
        }
        RadioButton1.Checked = true;
        ch_msg.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string gen;
        string dt = "";
        if (DD_date.SelectedIndex > 0 && DD_mont.SelectedIndex > 0 && DD_year.SelectedIndex > 0)
            dt = DD_date.SelectedItem.Text + "/" + DD_mont.SelectedItem.Text + "/" + DD_year.SelectedItem.Text;
        if (dt != "")
        {
            st_q = "select max(empno) from emp";
            stq = obj.max(st_q);
            img_store();
            if (RadioButton1.Checked)
                gen = RadioButton1.Text;
            else
                gen = RadioButton2.Text;

            st_q = "Select * from emp_log where username='" + e_id.Text + "'";
            dr1=obj.showonerecord(st_q);
            if (dr1.Read()==true)
            {
                ch_msg.Visible = true;
                ch_msg.Text = "User Exists On this email id TRY Another....!";
            }
            else
            {
                dr1.Close();
                string st = "insert into emp (empno,ename,lname,designation,org_name,address,gender,dob,u_img) values (" + stq.ToString() + ",'" + ename.Text + "','" + lname.Text + "'";
                st = st + ",'" + desig.Text + "','" + org_name.Text + "','" + addr.Text + "','" + gen + "','" + dt + "','" + img_name + "')";
                int y =obj.saverecord(st);
                if (y != 0)
                {
                    st = "insert into emp_log(empno,username,password,status)values(" + stq.ToString() + ",'" + e_id.Text + "','" + pword.Text + "',0)";
                    int x = obj.saverecord(st);
                    if (x != 0)
                    {}
                }
            }
                        ch_msg.Text = "Registrated Successfully......";
                        Response.Redirect("home.aspx");
                    
        }
        else
        {
            ch_msg.Text = "Select Valid Date";
            ch_msg.Visible = true;
        }
    }
    public void img_store()
    {
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.FileName.EndsWith(".jpg") || FileUpload1.FileName.EndsWith(".JPG") || FileUpload1.FileName.EndsWith(".jpeg") || FileUpload1.FileName.EndsWith(".gif") || FileUpload1.FileName.EndsWith(".png") || FileUpload1.FileName.EndsWith(".bmp") || FileUpload1.FileName.EndsWith(".tiff"))
            {
                img_name = stq.ToString() + "_.jpg";
                fn = Server.MapPath("~\\My files\\" + FileUpload1.FileName.Replace(FileUpload1.FileName, img_name));
                FileUpload1.PostedFile.SaveAs(fn);

            }
        }
    }
    //public void clear()
    //{
    //    ename.Text = "";
    //    lname.Text = "";
    //    org_name.Text = "";
    //    desig.Text = "";
    //    addr.Text = "";
    //    e_id.Text = "";
    //    pword.Text = "";
        
    //}
    protected void Button2_Click(object sender, EventArgs e)
    {
        ename.Text = "";
        lname.Text = "";
        org_name.Text = "";
        desig.Text = "";
        addr.Text = "";
        e_id.Text = "";
        pword.Text = "";
    }
}
