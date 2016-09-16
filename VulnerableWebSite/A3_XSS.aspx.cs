using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class A3_XSS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadPosts();

        //Response.Cookies.Add(new HttpCookie("nomeDoCookie1", "valorDoCookie1"));
    }

   
    protected void Button1_post_Click(object sender, EventArgs e)
    {
        //try
        //{

        //    //Request.ValidateInput();
            
        //}

        //catch (System.Web.HttpRequestValidationException rcex)
        //{ 
                
        //}

        //validar do lado do servidor sempre!!!
        //if (Page.IsValid)
            insertPost(TextBox1_NewPost.Text);
        
    }

    private void loadPosts()
    {
        string posts = "";

        String connStr1 = ConfigurationManager.ConnectionStrings["OWASP_Top10_2013_DB_ConnectionString"].ToString();

        SqlConnection sqlConn1 = new SqlConnection(connStr1);

        //só utilizo a pass como meio de autenticação para 
        //tornar simples a leitura da query
        //  String cmdStr = "select username from User where pass like '" + TextBox1_UserName.Text + "'" ;

        String cmdStr = "select post from Forum";

        SqlCommand sqlCmd1 = new SqlCommand(cmdStr, sqlConn1);

        sqlConn1.Open();
        SqlDataReader dr = sqlCmd1.ExecuteReader();

        if (dr.HasRows)
        {
            while (dr.Read())
            {
                string dados = dr[0].ToString();
                dados = Server.HtmlEncode(dados);
                posts += "<div>" + dados + "</div></hr>";
                dados = Server.HtmlDecode (dados);
                posts += "<div>" + dados + "</div></hr>";
            }

        }

        dr.Close();
        sqlConn1.Close();
        
        postsList.InnerHtml = posts;
    }

    private void insertPost(string newPost)
    {
      
        String connStr1 = ConfigurationManager.ConnectionStrings["OWASP_Top10_2013_DB_ConnectionString"].ToString();

        SqlConnection sqlConn1 = new SqlConnection(connStr1);

        //só utilizo a pass como meio de autenticação para 
        //tornar simples a leitura da query
        //  String cmdStr = "select username from User where pass like '" + TextBox1_UserName.Text + "'" ;
        
        String cmdStr = "insert into forum values (@newPost)";

        SqlCommand sqlCmd1 = new SqlCommand(cmdStr, sqlConn1);

        SqlParameter sqlParam1 = new SqlParameter("newPost", newPost);

        sqlCmd1.Parameters.Add(sqlParam1);

        sqlConn1.Open();

        sqlCmd1.ExecuteNonQuery();

        
        sqlConn1.Close();

        loadPosts();
        
    }
    protected void Button1_CleanPost_Click(object sender, EventArgs e)
    {

        String connStr1 = ConfigurationManager.ConnectionStrings["OWASP_Top10_2013_DB_ConnectionString"].ToString();

        SqlConnection sqlConn1 = new SqlConnection(connStr1);

        //só utilizo a pass como meio de autenticação para 
        //tornar simples a leitura da query
        //  String cmdStr = "select username from User where pass like '" + TextBox1_UserName.Text + "'" ;

        String cmdStr = "delete from forum ";

        SqlCommand sqlCmd1 = new SqlCommand(cmdStr, sqlConn1);
       

        sqlConn1.Open();

        sqlCmd1.ExecuteNonQuery();

        sqlConn1.Close();

        loadPosts();
        
    }
}