using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projeto3.Admin
{
    public partial class ExibirComentarios : System.Web.UI.Page
    {
        // STRING DE CONEXÃO COM O ACCESS
        // http://connectionstrings.com
        string conexao = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/2021ADST.accdb") + ";Persist Security Info=False;";

        // INSTANCIA DA CLASSE DE TRANSAÇÃO COM O ACCESS
        AppDatabase.OleDBTransaction db = new AppDatabase.OleDBTransaction();

        protected void Page_Load(object sender, EventArgs e)
        {


            fExibirComentarios();
        }

        protected void fExibirComentarios()
        {
            string comandoSQL = "SELECT Codigo, Comentario FROM Comentarios";

            db.ConnectionString = conexao;
            System.Data.DataTable tb = (System.Data.DataTable)db.Query(comandoSQL);

            GridViewComentarios.DataSource = tb;
            GridViewComentarios.DataBind();
        }
    }
}