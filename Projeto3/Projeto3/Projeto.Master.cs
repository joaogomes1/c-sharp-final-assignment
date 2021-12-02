using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto3
{
    public partial class Projeto : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Autenticado"] != null)
            {
                ExibirExcecoes.Visible = true;
                Usuarios.Visible = true;
                Comentarios.Visible = true;
                Login.Visible = false;
                Logout.Visible = true;
            }
            else
            {
                ExibirExcecoes.Visible = false;
                Usuarios.Visible = false;
                Comentarios.Visible = false;
                Login.Visible = true;
                Logout.Visible = false;
            }
        }
    }
}