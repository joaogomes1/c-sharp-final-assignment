using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Projeto3.Admin
{
    public partial class Usuarios : System.Web.UI.Page
    {
        /*********************************************************
         IMPORTANTE: 
       
        1. NÃO SE ESQUEÇA DE TRATAR AS ENTRADAS VINDAS
         DE CONTROLES NA PÁGINA, SUBSTITUINDO UM APOSTROFO POR
         DOIS APOSTROFOS PARA IMPEDIR "INJEÇÃO DE SQL"
        ref: https://www.avast.com/pt-br/c-sql-injection#gref

        2. NUNCA PERMITA O REGISTRO DE NOMES DE ACESSO IDENTICOS 
           PARA PESSOAS DIFERENTES.

        3. SEMPRE CRIPTOGRAFE A SENHA ANTES DE GRAVAR NO 
           BANCO DE DADOS.

        *********************************************************/



        // STRING DE CONEXÃO COM O ACCESS
        // http://connectionstrings.com
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/2021ADST.accdb") + ";Persist Security Info=False;";

        // INSTANCIA DA CLASSE DE TRANSAÇÃO COM O ACCESS
        AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

        // EXECUTADO SEMPRE QUE A PAGINA É CHAMADA
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ExibirUsuarios();
            }
        }

        // EXECUTA INSERT/UPDATE NA TABELA
        protected void Enviar_Click(object sender, EventArgs e)
        {
            if (NomeCompleto.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome";
            }
            else if (NomeAcesso.Text.Trim() == "")
            {
                Mensagem.Text = "Digite seu nome de acesso";
            }
            else if (Senha.Text.Trim() == "")
            {
                Mensagem.Text = "Digite a senha";
            }
            else if (PossoGravar(NomeAcesso.Text, Codigo.Text) == false)
            {
                Mensagem.Text = "Este nome de acesso já esta registrado para outro usuário.";
            }
            else
            {
                string comandoSQL;

                if (Codigo.Text != "")
                {
                    // UPDATE
                    comandoSQL = "UPDATE Usuarios SET NomeCompleto='" + NomeCompleto.Text + "', Email='" + Email.Text + "', NomeAcesso='" + NomeAcesso.Text + "', Senha='" + Senha.Text + "' WHERE Codigo=" + Codigo.Text;
                }
                else
                {
                    // INSERT
                    comandoSQL = "INSERT INTO Usuarios(NomeCompleto, Email, NomeAcesso, Senha) VALUES('" + NomeCompleto.Text + "','" + Email.Text + "','" + NomeAcesso.Text + "','" + Senha.Text + "')";
                }
                db.ConnectionString = conexao;
                db.Query(comandoSQL);

                ExibirUsuarios();
                LimparControles();
            }
        }

        // EXIBE OS DADOS DA TABELA NO GRIDVIEW
        protected void ExibirUsuarios()
        {
            string comandoSQL = "SELECT Codigo, NomeCompleto, NomeAcesso FROM Usuarios ORDER BY NomeCompleto ASC";

            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comandoSQL);

            GridViewUsuarios.DataSource = tb;
            GridViewUsuarios.DataBind();
        }

        // LIMPA OS CONTROLES DO FIRMULÁRIO
        protected void LimparControles()
        {
            Mensagem.Text = "";
            Codigo.Text = "";
            NomeCompleto.Text = "";
            Email.Text = "";
            NomeAcesso.Text = "";
            Senha.Text = "";
            BuscarUsuario.Text = "";
            Cancelar.Visible = false;
            Enviar.Text = "Inserir";
            Enviar.CssClass = "botao-inserir";
            Excluir.Visible = false;
        }

        // SELECIONA OS DADOS DE UMA LINHA DO GRIDVIEW PARA EDIÇÃO/EXCLUSÃO
        protected void GridViewUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            Codigo.Text = GridViewUsuarios.SelectedRow.Cells[1].Text;
            string comandoSQL = "SELECT * FROM Usuarios WHERE Codigo=" + Codigo.Text;
            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comandoSQL);
            if (tb.Rows.Count == 1)
            {
                NomeCompleto.Text = tb.Rows[0]["NomeCompleto"].ToString();
                NomeAcesso.Text = tb.Rows[0]["NomeAcesso"].ToString();
                Email.Text = tb.Rows[0]["Email"].ToString();
                Senha.Text = tb.Rows[0]["Senha"].ToString();

                Enviar.Text = "Editar";
                Enviar.CssClass = "botao-editar";

                Excluir.Visible = true;
            }
        }

        // EXCLUI UMA LINHA DA TABELA
        protected void Excluir_Click(object sender, EventArgs e)
        {
            string comandoSQL = "DELETE FROM Usuarios WHERE Codigo=" + Codigo.Text;

            db.ConnectionString = conexao;
            db.Query(comandoSQL);

            ExibirUsuarios();
            LimparControles();
        }

        // BUSCA UMA CORRESPONDENCIA NA TABELA
        protected void Buscar_Click(object sender, EventArgs e)
        {
            string comandoSQL = "SELECT Codigo,NomeCompleto,NomeAcesso FROM Usuarios WHERE NomeCompleto+NomeAcesso+Email LIKE '%" + BuscarUsuario.Text + "%'";

            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comandoSQL);

            GridViewUsuarios.DataSource = tb;
            GridViewUsuarios.DataBind();

            tb.Dispose();
            Cancelar.Visible = true;

        }

        // CANCELA A BUSCA
        protected void Cancelar_Click(object sender, EventArgs e)
        {
            Cancelar.Visible = false;
            BuscarUsuario.Text = "";
            ExibirUsuarios();
        }

        // VERIFICA SE O NOME DE ACESSO PODE OU NÃO SER REGISTRADO PARA ESTE USUÁRIO
        protected bool PossoGravar(string nome, string cod)
        {
            string comandoSQL = "SELECT codigo FROM Usuarios WHERE NomeAcesso='" + nome + "'";
            db.ConnectionString = conexao;
            DataTable tb = (DataTable)db.Query(comandoSQL);

            if (tb.Rows.Count == 0)
            {
                return true;
            }
            else
            {
                if (cod == tb.Rows[0]["Codigo"].ToString())
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
        }
    }
}