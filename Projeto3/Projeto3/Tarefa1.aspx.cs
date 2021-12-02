using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto3
{
    public partial class Tarefa1 : System.Web.UI.Page
    {

        // STRING DE CONEXÃO COM O ACCESS
        // http://connectionstrings.com
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/2021ADST.accdb") + ";Persist Security Info=False;";

        // INSTANCIA DA CLASSE DE TRANSAÇÃO COM O ACCESS
        AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EnviarComentario_Click(object sender, EventArgs e)
        {
            if (Comentario.Text.Trim() == "")
            {
                ErroComentario.Text = "Escreva seu comentário no espaço abaixo.";
            }
            else
            {

                string comandoSQL;

                comandoSQL = "INSERT INTO Comentarios(Comentario) VALUES('" + Comentario.Text.Replace("'","''") + "')";

                db.ConnectionString = conexao;
                db.Query(comandoSQL);

                ErroComentario.Text = "Ficamos felizes em receber seu comentário!";
                Comentario.Text = "";

            }
        }
    }
}