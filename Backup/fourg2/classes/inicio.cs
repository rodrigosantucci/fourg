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
            string y = "INSERT INTO fg.pauta (data, horas, id_materia) VALUES (?data, ?hora, ?idmateria);";

            int resultado = ExecuteNonQuery(y,
                new MySqlParameter("idmateria", this.idmateria),
                new MySqlParameter("data", DateTime.Parse(this.data)),
                new MySqlParameter("hora", this.hora));
            return resultado;
        }

        public DataTable BuscarInicio()
        {

            string x = string.Format(@"SELECT m.nome, ((sum(pt.horas)/m.carga_horaria)*100) as frequencia, m.nome_prof 
            FROM pauta pt, cad_materia m, cad_usuario u
            where (pt.id_materia =m.idmateria)          
            and (m.id_usuario=u.idusuario) and u.idusuario=?idusuario");


            MySqlDataAdapter resultado = Adapter(x,
                new MySqlParameter("idusuario", this.idusuario),
                new MySqlParameter("idmateria", this.idmateria));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;
        }
    }
}
