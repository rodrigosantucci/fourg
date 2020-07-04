using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

namespace fourg2.classes
{
    public class alertas:banco
    {
        private int _idusuario;
        private int _idmateria;

        public int idusuario { get; set; }
        public int idmateria { get; set; }

        public alertas() { }
        public alertas(int idmateria, int idusuario)
        {
            _idusuario = idusuario;
            _idmateria = idmateria;
        }

        public DataTable BuscarAlerta()
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