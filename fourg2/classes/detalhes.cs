using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace fourg2.classes
{
    public class detalhes:banco
    {
        private int _idusuario;
        private int _idmateria;
        private string _data;
        private string _hora;

        public int idusuario { get; set; }
        public int idmateria { get; set; }
        public string data { get; set; }
        public string hora { get; set; }

        public detalhes() { }
        public detalhes(int idmateria, int idusuario, string data, string hora)
        {
            _idusuario = idusuario;
            _idmateria = idmateria;
            _data = data;
            _hora = hora;
        }

        public DataTable BuscarDetalhes()
        {
            string x = string.Format(@"SELECT p.id_materia, m.nome, p.data, p.horas FROM fg.pauta p,cad_materia m,cad_usuario u
            where (m.idmateria=p.id_materia)
            and (u.idusuario=m.id_usuario)
            and (m.id_usuario=u.idusuario)
            and (m.id_usuario=?idusuario);");

            MySqlDataAdapter resultado = Adapter(x,
                new MySqlParameter("idusuario", this.idusuario));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;
        }
    }
}