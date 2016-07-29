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
public partial class S_home : System.Web.UI.Page
{
    string st = "";
    string cn = "";
    CPD obj = new CPD();

    protected void Page_Load(object sender, EventArgs e)
    {
        obj.connectdatabase(cn);
    }
}
