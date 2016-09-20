using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A10_Unvalidated_Redirect_And_Forward : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["newUrl"]!=null)
        {

            //porque posso querer fazer redirects?
            Response.Redirect(Request.QueryString["newUrl"].ToString());

            //Proponha soluções para defender o redirect!!
        }
    }
}