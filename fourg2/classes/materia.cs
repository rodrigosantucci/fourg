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
    public class materia : banco
    {    
        private int _idusuario;
        private int _idmateria;
        private string _nome;
        private string _carga_horaria;
        private string _nome_prof;

        public int idmateria { get; set; }
        public int idusuario { get; set; }
        public string nome { get; set; }
        public string carga_horaria { get; set; }
        public string nome_prof { get; set; }

        public materia() { }
        public materia(int idusuario, int idmateria, string nome, string carga_horaria, string nome_prof)
        {
            _idusuario = idusuario;
            _nome = nome;
            _carga_horaria = carga_horaria;
            _nome_prof = nome_prof;
            _idmateria = idmateria;
        }

        public int InserirMateria()
        {
            string y = "INSERT INTO fg.cad_materia (id_usuario,nome, carga_horaria, nome_prof) VALUES (?id_usuario, ?nome, ?carga_horaria, ?nome_prof);";

            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("id_usuario", this.idusuario),
                new MySqlParameter("nome", this.nome),
                new MySqlParameter("carga_horaria", this.carga_horaria),
                new MySqlParameter("nome_prof", this.nome_prof));
            return resultado;
        }

        public int DeletaMateria()
        {
            int resultado = -1;

            if (VerificarPauta())
            {
                if (DeletarPauta() > 0)
                {
                    string y = "DELETE FROM fg.cad_materia WHERE idmateria=?idmateria;";

                    resultado = ExecuteNonQuery(y,
                        new MySqlParameter("idmateria", this.idmateria),
                        new MySqlParameter("id_usuario", this.idusuario));
                }
                
            }
            return resultado;
        }
        
        public DataTable BuscarMateria() 
        {
            string x = "SELECT * FROM fg.cad_materia where id_usuario = ?id_usuario;";
        
            MySqlDataAdapter resultado = Adapter(x, 
                new MySqlParameter("id_usuario", this.idusuario));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;

        }

        public bool VerificarPauta()
        {
            bool resultado = false;
            DataTable dt = new DataTable();

            string x = "Select * from fg.pauta where id_materia=?idmateria;";

            MySqlDataAdapter DrrDados = Adapter(x,
                new MySqlParameter("idmateria", this.idmateria));

            if (DrrDados != null)
            {
                DrrDados.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    resultado = true;
                }
            }
            return resultado;
        }

        public int DeletarPauta()
        {
            int resultado = -1;
                string y = "DELETE FROM fg.pauta WHERE id_materia=?idmateria;";

                resultado = ExecuteNonQuery(y,
                    new MySqlParameter("idmateria", this.idmateria));
            return resultado;     
        }

        public int AtualizarMaterias()
        {
            string y = "UPDATE fg.cad_materia SET nome=?nome, carga_horaria=?carga_horaria, nome_prof=?nome_prof WHERE idmateria=?idmateria and id_usuario=?id_usuario;";

            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("idmateria", this.idmateria),
                new MySqlParameter("nome", this.nome),
                new MySqlParameter("carga_horaria", this.carga_horaria),
                new MySqlParameter("nome_prof", this.nome_prof),
                new MySqlParameter("id_usuario", this.idusuario));
            return resultado;
        }
    }
}