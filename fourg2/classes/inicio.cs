using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Data;
using System.Text;

namespace fourg2.classes
{
    public class inicio : banco
    {
        private int _idusuario;
        private int _idmateria;
        private string _data;
        private string _hora;

        public int idusuario { get; set; }
        public int idmateria { get; set; }
        public string data { get; set; }
        public string hora { get; set; }

        public inicio() { }
        public inicio(int idmateria, int idusuario, string data, string hora)
        {
            _idusuario = idusuario;
            _idmateria = idmateria;
            _data = data;
            _hora = hora;
        }

        public int InserirPauta()
        {
            string y = "INSERT INTO fg.pauta (data, horas, id_materia, id_usu) VALUES (?data,  ?hora, ?idmateria , ?idusuario);";
            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("idmateria", this.idmateria),
                new MySqlParameter("data", DateTime.Parse(this.data)),
                new MySqlParameter("hora", this.hora),
                new MySqlParameter("idusuario", this.idusuario));
            return resultado;
        }

        public DataTable BuscarInicio()
        {

            string x = string.Format(@"SELECT p.id_materia, m.nome,(sum(p.horas)/m.carga_horaria) as frequencia, m.nome_prof FROM fg.pauta               p,cad_materia m,cad_usuario u
            where m.idmateria=p.id_materia
            and u.idusuario=m.id_usuario
            and m.id_usuario=u.idusuario 
            and m.id_usuario=?idusuario
            group by id_materia;");


            MySqlDataAdapter resultado = Adapter(x,
                new MySqlParameter("idusuario", this.idusuario),
                new MySqlParameter("idmateria", this.idmateria));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;
        }

        public DataTable BuscarDetalhes()
        {
            string x = string.Format(@"SELECT m.nome, p.data, p.horas, m.nome_prof FROM fg.pauta p,cad_materia m,cad_usuario u
            where m.idmateria=p.id_materia
            and u.idusuario=m.id_usuario
            and m.id_usuario=u.idusuario 
            and m.id_usuario=?idusuario;");

            MySqlDataAdapter resultado = Adapter(x,
                new MySqlParameter("idusuario", this.idusuario));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;
        }

        public DataTable VerificarCargaH()
        {
            string x = string.Format(@"SELECT m.carga_horaria, sum(p.horas) FROM fg.pauta p,cad_materia m,cad_usuario u
            where m.idmateria=p.id_materia
            and u.idusuario=m.id_usuario
            and m.id_usuario=u.idusuario 
            and m.id_usuario=?idusuario
			and p.id_materia=?idmateria;");

            MySqlDataAdapter resultado = Adapter(x,
                new MySqlParameter("idusuario", this.idusuario),
                new MySqlParameter("idmateria", this.idmateria));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;


        }
    }
}
