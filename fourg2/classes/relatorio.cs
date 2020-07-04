using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Data;
using fourg2.classes;

namespace fourg2.classes
{
    public class relatorio:banco
    {
        private string _email;
        private string _senha;
        private int _idusuario;
        private string _nome;
        private string _celular;

        public string nome { get; set; }
        public string email { get; set; }
        public string senha { get; set; }
        public int idusuario { get; set; }
        public string celular { get; set; }


         public relatorio()
        {

        }
        public relatorio(string nome, string senha, int idusuario, string celular, string email)
        {
            _email = email;
            _senha = senha;
            _idusuario = idusuario;
            _celular = celular;
            _nome = nome;
        
        }






        public DataTable BuscarUsuarios()
        {
            string x = "SELECT nomecompleto,celular,email FROM fg.cad_usuario;";

            MySqlDataAdapter resultado = Adapter(x,
                new MySqlParameter("id_usuario", this.idusuario));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;

        }
    }
}