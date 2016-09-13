using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A4_Unsec_DirectObjRef : System.Web.UI.Page
{
    Dictionary<string, int> users;
    Dictionary<int, List<string>> info;
    protected void Page_Load(object sender, EventArgs e)
    {
        users = ClassLibrary_Helper_VulnerableWeSite.helper_VWS.gerarUsers();
        info = ClassLibrary_Helper_VulnerableWeSite.helper_VWS.gerarDadosInfo();
        //int userID;
        if (Request.QueryString["userID"] != null)
        {

            
            showList(Request.QueryString["userID"]);
            div_dologin.Visible = false;
        }

    }

    private void showList(string p)
    {
        div_ShowDataList.InnerHtml = "";
        foreach (var item in info[int.Parse(p)])
        {
            div_ShowDataList.InnerHtml += item+"<br/>";

        }

        
    }

    
    protected void Button1_login_Click(object sender, EventArgs e)
    {
        string user = TextBox1_utilizador.Text;
        
        if (users.ContainsKey(user))
        { 
            
        Session["userID"] = users["daniel"];

            //create the link and give the user a link to his list

        div_dologin.Visible = false;

        div_ShowRedirectLink.InnerHtml = "<a href=\"" + Request.ApplicationPath + "A4_Insec_DirectObjRef.aspx?userID="+Session["userID"].ToString()+"\">" + "Ver a sua lista...</a>";

        }

        
            
    }
}