using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Projeto3.App_Code
{
    /// <summary>
    /// Classe para o tratamento das exceções do projeto.
    /// </summary>
    public class TratarExcecao
    {
        // 2. definir o local de gravação (deve ser o caminho físico no disco, e não o caminho lógico da aplicação)
        string caminhoFisico = System.Web.HttpContext.Current.Server.MapPath("~/Excecao.txt");
        string caminhoFisicoDestino = System.Web.HttpContext.Current.Server.MapPath("~/Backup.txt");

        /// <summary>
        /// Salva os dados da exceção corrente no arquivo de log.
        /// </summary>
        /// <param name="exc">valor do tipo Exception</param>
        public void SalvarExcecao(Exception exc)
        {
            // 1. criar o conteúdo
            string conteudo = "Data: " + DateTime.Now.ToString() + "\n";
            conteudo += "Mensagem: " + exc.Message + "\n";
            conteudo += "--------------------------\n";
            System.IO.File.AppendAllText(caminhoFisico, conteudo);
        }

        /// <summary>
        /// Retorna todos os dados do arquivo de log de exceções.
        /// </summary>
        /// <returns></returns>
        public string LerExcecoes()
        {
            if (System.IO.File.Exists(caminhoFisico))
            {
                return File.ReadAllText(caminhoFisico);
            }
            else
            {
                return "Nenhum registro encontrado";
            }
        }

        /// <summary>
        /// Limpa os dados do arquivo de exceção. 
        /// </summary>
        public void LimparExcecoes()
        {
            if (File.Exists(caminhoFisico))
            {
                // copia o arquivo excecao.txt sobre do backup.txt
                File.Copy(caminhoFisico, caminhoFisicoDestino, true);
                File.Delete(caminhoFisico);
            }
        }
    }
}