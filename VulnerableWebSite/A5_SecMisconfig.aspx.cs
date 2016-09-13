using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A5_SecMisconfig : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //VerySimpleBadDataAcess();
        //badRequestQueryStringHandled();
    }


    private void badRequestQueryStringHandled()
    {
        int id = int.Parse(Request.QueryString["id"]);
                //check admin rights
        if (id == 123431212)
        { }
    }

    private void VerySimpleBadDataAcess()
    {
        String connStr1 = ConfigurationManager.ConnectionStrings["OWASP_Top10_2013_DB_ConnectionString"].ToString();

        System.Data.SqlClient.SqlConnection sqlConn1 = new SqlConnection(connStr1);

        //só utilizo a pass como meio de autenticação para 
        //tornar simples a leitura da query


        String cmdStr = "select top(1)* from Lixo";

        SqlCommand sqlCmd1 = new SqlCommand(cmdStr, sqlConn1);

        sqlConn1.Open();
        SqlDataReader dr = sqlCmd1.ExecuteReader();



        Label1.Text = "o top1" + dr["dados"].ToString();


        dr.Close();
        sqlConn1.Close();
    }
}