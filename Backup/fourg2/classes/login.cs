using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using fourg2.classes;

namespace fourg2.classes
{
    public class login : banco
    {
        private string _email;
        private string _senha;
        private int _idusuario;
        private string _nome;
        private string _celular;

        private string _emailadm;
        private string _senhaadm;
        private int _idadm;
        private string _nomeadm;

        public string nome { get; set; }
        public string email { get; set; }
        public string senha { get; set; }
        public int idusuario { get; set; }
        public string celular { get; set; }

        public string nomeadm { get; set; }
        public string emailadm { get; set; }
        public string senhaadm { get; set; }
        public int idadm { get; set; }

        public login()
        {

        }
        public login(string nome, string senha, int idusuario, string nomeadm, string senhaadm, int idadm, string celular)
        {
            _email = email;
            _senha = senha;
            _idusuario = idusuario;
            _celular = celular;

            _emailadm = emailadm;
            _senhaadm = senhaadm;
            _idadm = idadm;

        }

        public Boolean VerificarLoginUsuario()
        {
            bool resultado = false;

            string x = "Select * from fg.cad_usuario where email=?email and senha=?senha";

            MySqlDataAdapter DrDados = Adapter(x,
                new MySqlParameter("email", this.email),
                new MySqlParameter("senha", this.senha));

            DataTable dt = new DataTable();
            if (DrDados != null)
            {

                DrDados.Fill(dt);

                if (dt.Rows.Count > 0)
                {

                    string bancoSenha = dt.Rows[0]["senha"].ToString();
                    string bancoEmail = dt.Rows[0]["email"].ToString();

                    if ((this.senha == bancoSenha) && (this.email == bancoEmail))
                    {
                        this.idusuario = int.Parse(dt.Rows[0]["idusuario"].ToString());
                        this.nome = dt.Rows[0]["nomecompleto"].ToString();
                        this.email = dt.Rows[0]["email"].ToString();
                        this.celular = dt.Rows[0]["celular"].ToString();
                        this.senha = dt.Rows[0]["senha"].ToString();
                        resultado = true;
                    }
                }
            }

            return resultado;
        }

        public Boolean VerificarLoginAdmin()
        {
            bool resultado = false;

            string y = "Select * from fg.admin where email=?email and senha=?senha";

            MySqlDataAdapter DrrDados = Adapter(y,
                new MySqlParameter("email", this.email),
                new MySqlParameter("senha", this.senha));

            DataTable dtt = new DataTable();

            if (DrrDados != null)
            {


                DrrDados.Fill(dtt);

                if (dtt.Rows.Count > 0)
                {

                    string bancoSenha = dtt.Rows[0]["senha"].ToString();
                    string bancoEmail = dtt.Rows[0]["email"].ToString();

                    if ((this.senha == bancoSenha) && (this.email == bancoEmail))
                    {
                        this.nomeadm = dtt.Rows[0]["nomecompleto"].ToString();
                        this.idadm = int.Parse(dtt.Rows[0]["idadmin"].ToString());                        
                        this.emailadm = dtt.Rows[0]["email"].ToString();
                        this.senhaadm = dtt.Rows[0]["senha"].ToString();
                        resultado = true;
                    }
                }
            }
            return resultado;
        }
    }
}