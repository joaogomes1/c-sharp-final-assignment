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
                Logout.Visible = true;
                Login.Visible = false;
                Usuarios.Visible = true;
            }
            else
            {
                ExibirExcecoes.Visible = false;
                Logout.Visible = false;
                Login.Visible = true;
                Usuarios.Visible = false;
            }
        }
    }
}