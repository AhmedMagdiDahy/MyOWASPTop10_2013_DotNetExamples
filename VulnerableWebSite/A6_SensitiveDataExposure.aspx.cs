using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A6_SensitiveDataExposure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_CreateUser_Click(object sender, EventArgs e)
    {
        String connStr1 = ConfigurationManager.ConnectionStrings["OWASP_Top10_2013_DB_ConnectionString"].ToString();

        SqlConnection sqlConn1 = new SqlConnection(connStr1);

        //só utilizo a pass como meio de autenticação para 
        //tornar simples a leitura da query
        //  String cmdStr = "select username from User where pass like '" + TextBox1_UserName.Text + "'" ;

        String cmdStr = "insert into Utilizador values (@username, @password)";

        SqlCommand sqlCmd1 = new SqlCommand(cmdStr, sqlConn1);

        SqlParameter sqlParam1 = new SqlParameter("username", TextBox1_UserName.Text);

        sqlCmd1.Parameters.Add(sqlParam1);
        sqlCmd1.Parameters.Add(new SqlParameter("password", TextBox2_Password.Text ));

        sqlConn1.Open();

        sqlCmd1.ExecuteNonQuery();


        sqlConn1.Close();

        
    }

    protected void Button1_CreateUSerSafe0_Click(object sender, EventArgs e)
    {
        String connStr1 = ConfigurationManager.ConnectionStrings["OWASP_Top10_2013_DB_ConnectionString"].ToString();

        SqlConnection sqlConn1 = new SqlConnection(connStr1);


        String cmdStr = "insert into Utilizador_safeN0 values (@username, @password)";

        SqlCommand sqlCmd1 = new SqlCommand(cmdStr, sqlConn1);

        SqlParameter sqlParam1 = new SqlParameter("username", TextBox1_UserName.Text);

        
        byte[] plainTextBytes = Encoding.UTF8.GetBytes(TextBox2_Password.Text);
         HashAlgorithm hash = new SHA256Managed();

        byte[] hashBytes = hash.ComputeHash(plainTextBytes);

        // Convert result into a base64-encoded string.
        string hashValue = Convert.ToBase64String(hashBytes);

        sqlCmd1.Parameters.Add(sqlParam1);
        sqlCmd1.Parameters.Add(new SqlParameter("password", hashValue));

        sqlConn1.Open();

        sqlCmd1.ExecuteNonQuery();

        sqlConn1.Close();
    }

    //compute the login method for safeN0
    
}