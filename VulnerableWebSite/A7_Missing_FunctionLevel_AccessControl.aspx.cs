using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A7_Missing_FunctionLevel_AccessControl : System.Web.UI.Page
{
    Boolean userIsAdmin;
    protected void Page_Load(object sender, EventArgs e)
    {
        userIsAdmin = true;

        if (userIsAdmin)
        {
            admins.Visible = false;
        }
    }

    protected void LinkButton1_forAllusers_Click(object sender, EventArgs e)
    {
        info.InnerText = "Acesso a informação pública";
    }

    protected void LinkButton2_onlyAdmins_Click(object sender, EventArgs e)
    {
        info.InnerText = "Acesso a informação só para Admins";
    }
}