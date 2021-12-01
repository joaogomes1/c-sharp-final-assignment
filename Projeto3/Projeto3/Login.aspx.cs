using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Projeto3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Entrar_Click(object sender, EventArgs e)
        {
            if (NomeAcesso.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome de acesso";
            }
            else if (Senha.Text.Trim() == "")
            {
                Mensagem.Text = "Digite sua senha";
            }
            else
            {
                if (NomeAcesso.Text == "Admin" && Senha.Text == "12345")
                {
                    // CRI UMA VARIAVEL DE CONTROLE PARA IDENTIFICAR SE O USUÁRIO ESTA OU NÃO AUTENTICACO.
                    Session["Autenticado"] = "Admin";

                    // 1. INICIALIZA A AUTENTICAÇÃO
                    System.Web.Security.FormsAuthentication.Initialize();

                    // 2. CRIAR O TIKET DE AUTENTICAÇÃO DO USUÁRIO
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, "Admin", DateTime.Now, DateTime.Now.AddMinutes(20), false, FormsAuthentication.FormsCookieName);

                    // 3. CRIPTOGRAFA O TICKET E REGISTRA NO ARQUIVO (COOKIE) NO NAVEGADOR
                    Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName, FormsAuthentication.Encrypt(ticket)));

                    Response.Redirect(FormsAuthentication.GetRedirectUrl("Admin", false));
                }
                else
                {
                    Mensagem.Text = "Dados de acesso invalidos";
                }
            }

        }
    }
}