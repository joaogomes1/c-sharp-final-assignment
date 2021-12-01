using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto3
{
    public partial class ExibirExcecoes : System.Web.UI.Page
    {
        App_Code.TratarExcecao exc = new App_Code.TratarExcecao();

        protected void Page_Load(object sender, EventArgs e)
        {
            Conteudo.Text = exc.LerExcecoes().Replace("\n", "<br>");
        }

        protected void Excluir_Click(object sender, EventArgs e)
        {
            exc.LimparExcecoes();
            Conteudo.Text = "";
        }
    }
}