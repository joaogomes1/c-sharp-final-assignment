using System;
using System.Net.Mail;

namespace Projeto3
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            string nome = SeuNome.Text.Trim();
            string email = SeuEmail.Text.Trim().ToLower();
            string mensagem = Mensagem.Text.Trim();
            //Int32 x = SeuEmail.Text.Length; 

            if (nome == "")
            {
                Erro.Text = "Digite seu nome.";
            }
            else if (email == "")
            {
                Erro.Text = "Digite seu e-mail";
            }
            else if (mensagem == "")
            {
                Erro.Text = "Digite a mensagem";
            }
            else
            {
                try
                {
                    // 1. montar a mensagem do e-mail
                    MailMessage mail = new MailMessage();
                    mail.Subject = "Email enviado pelo form de contato";
                    mail.To.Add("seuemail@gmail.com");
                    MailAddress remetente = new MailAddress("seuemail@gmail.com");
                    mail.From = remetente;
                    mail.Body = "DADOS DO USUÁRIO\n";
                    mail.Body += "Nome: " + nome + "\n";
                    mail.Body += "Email: " + email + "\n";
                    mail.Body += "mensagem: " + mensagem + "\n";
                    mail.IsBodyHtml = false;

                    // limpa os dados dos nomtroles antes de retornar a pagina para o usuário
                    LimparControles();

                    // 2. transmitir a mensagem
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.Credentials = new System.Net.NetworkCredential("seuemail@gmail.com", "suasenha");
                    smtp.Send(mail);

                    // limpa a memória
                    mail.Dispose();
                    smtp.Dispose();

                    Erro.ForeColor = System.Drawing.Color.Blue;
                    Erro.Text = "Seu e-mail foi enviado com sucesso.";

                }
                catch (Exception ex)
                {
                    Erro.ForeColor = System.Drawing.Color.Red;
                    Erro.Text = "Houve uma falha ao enviar seu e-mail.";

                    App_Code.TratarExcecao trExcecao = new App_Code.TratarExcecao();
                    trExcecao.SalvarExcecao(ex);
                }

            }
        }

        protected void LimparControles()
        {
            SeuEmail.Text = "";
            SeuNome.Text = "";
            Mensagem.Text = "";
        }


    }  // fim da classe
}