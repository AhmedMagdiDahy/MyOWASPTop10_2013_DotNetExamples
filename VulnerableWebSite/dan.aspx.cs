using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class dan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //

        if (Session["danok"] == null && (ConfigurationManager.AppSettings.Get("DanDebug") == "True"))
        {
            Panel1.Visible = false;
            Panel2Login.Visible = true;
        }
        else
        {
            Panel1.Visible = true;
            Panel2Login.Visible = false;
            if (!Page.IsPostBack)
                Label1_currentSessionValuesAndKeys.Text = loadSessionData();
        }
    }

    private string loadSessionData()
    {
        string sessionData = "";
        sessionData = Session.SessionID;
        sessionData += "<br/>";
        sessionData += "Sessions Count = " + Session.Count;
        sessionData += "<br/>";

        sessionData += "<br/>";
        sessionData += "#Sessions = " + Application["myCounter"];
        sessionData += "<br/>";

        int i = 0;
        foreach (var item in Session)
        {
            sessionData += item + " : " + Session[i] + "<br/>";
            i++;
        }
        sessionData += "<br/>";
        sessionData += "Session Timeout: " + Session.Timeout;

        return sessionData;
    }

    protected void LinkButton1_clearSession_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Label1_currentSessionValuesAndKeys.Text = loadSessionData();
    }

    protected void LinkButton2_AbandonSession_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Label1_currentSessionValuesAndKeys.Text = loadSessionData();
        Response.Write("A sua sessõa já não é válida!!");
    }

    protected void LinkButton3_BothClearAndAbandon_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Label1_currentSessionValuesAndKeys.Text = loadSessionData();
        Response.Write("A sua sessõa já não é válida!!");
        
    }

    protected void LinkButton1_Click_RemoveThisSession(object sender, EventArgs e)
    {
        Session.Remove(TextBox1_SessionKeyToRemove.Text);
        Label1_currentSessionValuesAndKeys.Text = loadSessionData();
    }

    protected void LinkButton2_Click_ClearThisSession(object sender, EventArgs e)
    {
        Session[TextBox1_SessionKeyToRemove.Text] = "";
        Label1_currentSessionValuesAndKeys.Text = loadSessionData();
    }

    protected void Button1_DoLogin_Click(object sender, EventArgs e)
    {
        if (TextBox1_Login.Text == "Djtc00@@")
            Session["danok"] = 1;

        Response.Redirect("dan.aspx");
    }

    protected void LinkButton3_logoff_Click(object sender, EventArgs e)
    {

        Session.Remove("danok");
        Response.Redirect("dan.aspx");
    }
    protected void LinkButton1_SetNonHttpCookie_Click(object sender, EventArgs e)
    {
        Response.Cookies["myCookie1"].Value  = "dancookie1";
        Response.Cookies["myCookie1"].Expires = DateTime.Now.Add(new TimeSpan(0, 0, 60));
    }
}
