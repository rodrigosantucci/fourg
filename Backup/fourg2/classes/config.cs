using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Data;

namespace fourg2.classes
{
    public class config : banco
    {
        private int _idusuario;
        private string _nome;
        private string _email;
        private string _celular;
        private string _senha;
        private string _novasenha;
        private string _senhaatual;


        private int _idadm;
        private string _nomeadm;
        private string _emailadm;
        private string _celularadm;
        private string _senhaadm;
        private string _novasenhaadm;
        private string _senhaatualadmin;

        public int idusuario { get; set; }
        public string nome { get; set; }
        public string email { get; set; }
        public string celular { get; set; }
        public string senha { get; set; }
        public string novasenha { get; set; }
        public string senhaatual { get; set; }

        public int idadm { get; set; }
        public string nomeadm { get; set; }
        public string emailadm { get; set; }
        public string celularadm { get; set; }
        public string senhaadm { get; set; }
        public string novasenhaadm { get; set; }
        public string senhaatualadmin { get; set; }

        public config() { }
        public config(int idusuario, string nome, string email, string senha, string celular, string novasenha, int idadm, string nomeadm, string emailadm, string senhadm, string celularadm, string senhaatual, string novasenhaadm, string senhaatualadmin)
        {
            _idusuario = idusuario;
            _nome = nome;
            _email = email;
            _senha = senha;
            _celular = celular;
            _novasenha = novasenha;
            _senhaatual = senhaatual;

            _idadm = idadm;
            _nomeadm = nomeadm;
            _emailadm = emailadm;
            _senhaadm = senhaadm;
            _celularadm = celularadm;
            _novasenhaadm = novasenhaadm;
            _senhaatualadmin = senhaatualadmin;
        }

        public int SalvarDados()
        {
            string y = "UPDATE  fg.cad_usuario  SET  nomecompleto =?nome , email = ?email , senha = ?senha , celular = ?celular  WHERE  idusuario = ?idusuario ;";
            //"UPDATE `fg`.`cad_usuario` SET `nomecompleto`='Usuario2' WHERE `idusuario`='2';";



            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("nome", this.nome),
                new MySqlParameter("email", this.email),

                new MySqlParameter("senha", this.senha),
                new MySqlParameter("celular", this.celular),
                new MySqlParameter("idusuario", this.idusuario));
            return resultado;
        }

        public int SalvarDadosAdm()
        {
            string y = "UPDATE fg.admin SET nomecompleto=?nomeadm, email=?emailadm WHERE idadmin=?idadm;";

            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("idadm", this.idadm),
                new MySqlParameter("nomeadm", this.nomeadm),
                new MySqlParameter("emailadm", this.emailadm));
            return resultado;
        }

        public bool VerificarSenha()
        {
            bool resultado = false;
            DataTable dtt = new DataTable();

            string y = "Select senha from fg.cad_usuario where idusuario=?idusuario and senha=?senhaatual;";

            MySqlDataAdapter DrrDados = Adapter(y,
                new MySqlParameter("senhaatual", this.senhaatual),
                new MySqlParameter("idusuario", this.idusuario));


            if (DrrDados != null)
            {


                DrrDados.Fill(dtt);
                if (dtt.Rows.Count > 0)
                {
                    resultado = true;
                }
            }


            return resultado;
        }

        public bool VerificarSenhaAdm()
        {
            bool resultado = false;
            DataTable dtt = new DataTable();

            string y = "Select senha from fg.admin where idadmin=?idadm and senha=?senhaatualadmin;";

            MySqlDataAdapter DrrDados = Adapter(y,
                new MySqlParameter("senhaatualadmin", this.senhaatualadmin),
                new MySqlParameter("idadm", this.idadm));

            if (DrrDados != null)
            {
                DrrDados.Fill(dtt);
                if (dtt.Rows.Count > 0)
                {
                    resultado = true;
                }
            }


            return resultado;
        }

        public int SalvarSenha()
        {
            int resultado = -1;
            if (VerificarSenha())
            {
                string x = "UPDATE fg.cad_usuario SET senha=?novasenha WHERE idusuario=?idusuario;";

                resultado = ExecuteNonQuery(x,
                    new MySqlParameter("idusuario", this.idusuario),
                    new MySqlParameter("novasenha", this.novasenha));
            }

            return resultado;
        }

        
        public int SalvarSenhaAdm()
        {
            int resultado = -1;
            if (VerificarSenhaAdm())
            {
                string x = "UPDATE fg.admin SET senha=?novasenhaadm WHERE idadmin=?idadm;";

                resultado = ExecuteNonQuery(x,
                    new MySqlParameter("idadm", this.idadm),
                    new MySqlParameter("novasenhaadm", this.novasenhaadm));
            }
            return resultado;
        }

        public int DeletarConta()
        {
            int resultado = -1;
            if (VerificarSenha())
            {
                string y = "DELETE FROM fg.cad_usuario WHERE idusuario=?idusuario;";

                resultado = ExecuteNonQuery(y,
                    new MySqlParameter("idusuario", this.idusuario));
            }
            return resultado;
        }

        public int DeletarContaAdm()
        {
            int resultado = -1;
            if (VerificarSenhaAdm())
            {
                string y = "DELETE FROM fg.admin WHERE idadmin=?idadm;";

                resultado = ExecuteNonQuery(y,
                    new MySqlParameter("idadm", this.idadm));
            }
            return resultado;
        }
    }
}