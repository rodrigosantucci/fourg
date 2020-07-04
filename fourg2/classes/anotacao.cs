using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using fourg2.classes;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;

namespace fourg2.classes
{
    public class anotacao:banco
    {
        private int _idanotacao;
        private int _idusuario;
        private string _nome;
        private string _conteudo;

        public int idanotacao { get; set; }
        public int idusuario { get; set; }
        public string nome { get; set; }
        public string conteudo { get; set; }

        public anotacao() { }
        public anotacao(int idusuario, int idanotacao, string nome, string conteudo)
        {
            _idanotacao = idanotacao;
            _idusuario = idusuario;
            _nome = nome;
            _conteudo = conteudo;
        }

        public int InserirAnotacao()
        {
            string y = "INSERT INTO `fg`.`anotacao_usuario` (`id_usuario`,`nome`, `conteudo`) VALUES (?idusuario, ?nome, ?conteudo);";

            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("idusuario", this.idusuario),
                new MySqlParameter("nome", this.nome),
                new MySqlParameter("conteudo", this.conteudo));
            return resultado;
        }

        public int AtualizarAnotacao()
        {
            string y = "UPDATE fg.anotacao_usuario SET nome=?nome, conteudo=?conteudo WHERE idanotacao=?idanotacao and id_usuario=?idusuario;";

            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("idanotacao", this.idanotacao),
                new MySqlParameter("nome", this.nome),
                new MySqlParameter("conteudo", this.conteudo),
                new MySqlParameter("idusuario", this.idusuario));
            return resultado;

        }

        public int DeletaAnotacao()
        {
            string y = "DELETE FROM fg.anotacao_usuario WHERE idanotacao=?idanotacao;";

            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("idanotacao", this.idanotacao),
                new MySqlParameter("id_usuario", this.idusuario));
            return resultado;
        }
        


        public DataTable BuscarAnotacao()
        {

            string x = "SELECT * FROM fg.anotacao_usuario where id_usuario = ?id_usuario;";

            MySqlDataAdapter resultado = Adapter(x,
                new MySqlParameter("id_usuario", this.idusuario));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;

        }

    }
}