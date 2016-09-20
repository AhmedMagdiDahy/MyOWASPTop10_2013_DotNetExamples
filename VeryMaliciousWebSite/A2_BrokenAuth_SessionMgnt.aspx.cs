using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A2_BrokenAuth_SessionMgnt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        div_info.InnerHtml = Request.UrlReferrer.ToString();

    }

   
}