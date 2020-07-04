using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Windows.Forms;
using System.Data;

namespace fourg2.classes
{
    public class cadastrar:banco
    {
        private string _nome;
        private string _celular;
        private string _email;
        private string _senha;

        private string _nomeadm;
        private string _emailadm;
        private string _senhaadm;

        public string nome {get; set;}
        public string celular {get; set;}
        public string email {get; set;}
        public string senha {get; set;}

        public string nomeadm { get; set; }
        public string emailadm { get; set; }
        public string senhaadm { get; set; }

        public cadastrar() { }
        public cadastrar(string nome, string celular, string email, string senha, string nomeadm, string emailadm, string senhaadm)
        {
            _nome = nome;
            _celular = celular;
            _email = email;
            _senha = senha;

            _nomeadm = nomeadm;
            _emailadm = emailadm;
            _senhaadm = senhaadm;
        }

        public int CadastrarUsuario()
        {
            string y = "INSERT INTO `fg`.`cad_usuario` (`nomecompleto`, `celular`, `email`, `senha`) VALUES (?nome, ?celular, ?email, ?senha);";

            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("nome", this.nome),
                new MySqlParameter("celular", this.celular),
                new MySqlParameter("email", this.email),
                new MySqlParameter("senha", this.senha));
            return resultado;
        }

        public DataTable VerificarEmail()
        {
            string y = "SELECT email FROM fg.cad_usuario where email = ?email;";

            MySqlDataAdapter resultado = Adapter(y,
                new MySqlParameter("email", this.email));
            DataTable dt = new DataTable();
            resultado.Fill(dataTable: dt);
            return dt;
        }

        public int CadastrarAdm()
        {
            string y = "INSERT INTO `fg`.`admin` (`nomecompleto`, `email`, `senha`) VALUES (?nomeadm, ?emailadm, ?senhaadm);";

            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("nomeadm", this.nomeadm),
                new MySqlParameter("emailadm", this.emailadm),
                new MySqlParameter("senhaadm", this.senhaadm));
            return resultado;
        }

        public DataTable VerificarEmailAdm()
        {
            string y = "SELECT email FROM fg.admin where email = ?emailadm;";

            MySqlDataAdapter resultado = Adapter(y,
                new MySqlParameter("emailadm", this.emailadm));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;
        }

        public DataTable VerificarCelular() 
        {
            string y = "SELECT celular FROM fg.cad_usuario where celular = ?celular;";

            MySqlDataAdapter resultado = Adapter(y,
                new MySqlParameter("celular", this.celular));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;
        }
    }
}