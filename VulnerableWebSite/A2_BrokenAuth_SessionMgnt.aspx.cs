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
        //if (!Page.IsPostBack)
        //    Session["test"] = "inicio";
       // HttpCookie oneCookie = new HttpCookie("cookie1", "value1");
        //oneCookie.Expires = new DateTime(DateTime.Now.AddMinutes(15).Ticks);
        //Response.SetCookie(oneCookie);
        //getInfoSoParaEsteUtilizador();

        if (Session["UserLoggedIn"] != null)
        {
            div_login.Visible = false;
            div_infoUser.Visible = true;
           
            
        }
    }

     private void getInfoSoParaEsteUtilizador()
    {
        //simulo que este é o utilizador "daniel"
        //e coloca a informação dele numa session...
        if (Session["user"].ToString() == "daniel")
        {
            Session["dados"] = ClassLibrary_Helper_VulnerableWeSite.helper_VWS.gerarDadosInfo()[1];
        }

        else
            //it is the other user...
        { 
        
        }

    }
     protected void Button1_login_Click(object sender, EventArgs e)
     {
       int userID =  ClassLibrary_Helper_VulnerableWeSite.helper_VWS.doLogin(TextBox1_pass.Text);

       if (userID != -1)
       {
           Session["UserLoggedIn"] = 1;
           div_login.Visible = false;
           div_infoUser.Visible = true;
       }

     }
}