using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace fullXSS
{
    public partial class XSS1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_pesquisar_Click(object sender, EventArgs e)
        {
            Label1_Result.Text = "A pesquisa " + TextBox1_Search.Text + " não obteve resultados! Pesquise novamente!";
        }
    }
}