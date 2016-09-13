<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup

        RegisterRoutes(RouteTable.Routes);

    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started
        // Session["started"] = "1";
        if (Application["myCounter"] == null)
        {
            Application["myCounter"] = 1;
        }
        else
        {
            Application["myCounter"] = ((int)Application["myCounter"]) + 1;


        }

        // Session["Session Start"] = "OK";

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        Application["myCounter"] = ((int)Application["myCounter"]) - 1;
    }

    void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("",
    "Funcao/{param1}",
    "~/A7_Missing_FunctionLevel_AccessControl.aspx");
    }
       
</script>
