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

public partial class cpd_banner : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Label1.Text = "WelCome to " + Session["username"].ToString();
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            Label2.Visible = false;
            LinkButton1.Text = "SignOut";
       }
    else
        {
            Response.Redirect("home.aspx");
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "SignOut")
        {
            Label1.Text = "Username";
            Label1.Visible = true;
            Label2.Visible = true;
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            LinkButton1.Text = "Sign In";
            Session["username"] = null;
            Session["u_id"] = null;
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Redirect("Home.aspx");
        }
    }
}
