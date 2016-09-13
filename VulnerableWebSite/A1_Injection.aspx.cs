using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A1_Injection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button_Login_Click(object sender, EventArgs e)
    {
        //if (Page.IsValid)
            VerySimpleInjection1();
        //else
          //  Label1.Text = "MACACO!!";
        //VerySimpleInjection1_Resolved1();
    }

    /// <summary>
    /// muito simples login
    /// validação apenas da password
    /// com concatenação direta do input do user
    /// ' OR 1=1 --
    /// </summary>
    private void VerySimpleInjection1()
    {
        String connStr1 = ConfigurationManager.ConnectionStrings["OWASP_Top10_2013_DB_ConnectionString"].ToString();

        SqlConnection sqlConn1 = new SqlConnection(connStr1);

        //' or 1=1 --
        //só utilizo a pass como meio de autenticação para 
        //tornar simples a leitura da query
        //  String cmdStr = "select username from User where pass like '" + TextBox1_UserName.Text + "'" ;

        String cmdStr = "select username from Utilizador where password = '" + TextBox2_Password.Text + "'";

        SqlCommand sqlCmd1 = new SqlCommand(cmdStr, sqlConn1);

        sqlConn1.Open();
        SqlDataReader dr = sqlCmd1.ExecuteReader();

        if (dr.HasRows) 
        {
            dr.Read();
            Label1.Text = "Benvindo " + dr[0].ToString();
        }

        else
        {
            Label1.Text = "Acesso Negado!";
        }

        dr.Close();
        sqlConn1.Close();
    }

    /// <summary>
    /// Resolved SimpleInjection1 com parameters
    /// </summary>
    private void VerySimpleInjection1_Resolved1()
    {
        String connStr1 = ConfigurationManager.ConnectionStrings["OWASP_Top10_2013_DB_ConnectionString"].ToString();

        SqlConnection sqlConn1 = new SqlConnection(connStr1);

        //só utilizo a pass como meio de autenticação para 
        //tornar simples a leitura da query

        SqlParameter sqlParam1 = new SqlParameter("password", TextBox2_Password.Text);

        String cmdStr = "select username from Utilizador where password = '@password'";

        SqlCommand sqlCmd1 = new SqlCommand(cmdStr, sqlConn1);

        sqlConn1.Open();
        SqlDataReader dr = sqlCmd1.ExecuteReader();


        if (dr.HasRows)
        {
            Label1.Text = "Benvindo " + dr[0].ToString();
        }

        else {
            Label1.Text = "Acesso Negado!";
        }

        dr.Close();
        sqlConn1.Close();
    }

}