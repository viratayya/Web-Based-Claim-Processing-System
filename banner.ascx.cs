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
public partial class banner : System.Web.UI.UserControl
{
    string st="";
    SqlDataReader dr;
    string cn = "";
    //int i;
    CPD obj = new CPD();
    protected void Page_Load(object sender, EventArgs e)
    {
        obj.connectdatabase(cn);
        if (IsPostBack == false)
        {
            if (Session["username"] != null)
            {
                ImageButton1.Visible = true;
                Label1.Text = "Welcome " + Session["username"].ToString();
                st = "select u_img from emp where empno=" + Session["empno"].ToString()+"";
                dr = obj.showonerecord(st);
                if (dr.Read() == true)
                {
                    ImageButton1.ImageUrl = "My files/" + dr["u_img"].ToString();
                }
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Label2.Visible = false;
                LinkButton1.Text = "SignOut";
                LinkButton2.Visible = false;
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
         if (LinkButton1.Text == "SignIn")
        {
            st = "select * from emp_log where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "' ";
            dr = obj.showonerecord(st);
            if (dr.Read() == true)
            {
                Label1.Text = "Welcome " + dr["username"].ToString();
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Label2.Visible = false;
                LinkButton1.Text = "SignOut";
                LinkButton2.Visible = false;
                Session["empno"] = dr[3].ToString();
                Session["admin"] = dr[0].ToString();
                if (dr["status"].ToString() == "1")
                {
                    Session["username"] = "admin";
                    Response.Redirect("Cpd_home.aspx");
                }
                else if (dr["status"].ToString() == "0")
                {
                    Session["username"] = dr[0].ToString();
                    Response.Redirect("emp_home.aspx");
                }
                else if (dr["status"].ToString() == "2")
                {
                    Session["username"] = dr[0].ToString();
                    Response.Redirect("S_home.aspx");
                }
            }
            else
            {
                Label1.Text = "Invalid username or password..!";
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                TextBox2.Text = "";
                Label2.Visible = false;
                LinkButton1.Text = "try again?";
            }
            dr.Close();
        }
        else if (LinkButton1.Text == "try again?")
        {
            Label1.Text = "Username";
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox2.Text = "";
            LinkButton1.Text = "SignIn";
        }
        else if (LinkButton1.Text == "SignOut")
        {
            Label1.Text = "Username";
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            LinkButton1.Text = "SignIn";
            Session["username"] = null;
            Session["empno"] = null;
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Redirect("Home.aspx");
        }
    }

            
      
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
            Response.Redirect("signup.aspx");
    }

    protected void ImageButton_Click(object sender, ImageClickEventArgs e)
    {

    }
}
    

