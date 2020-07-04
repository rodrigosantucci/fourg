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

            string x = string.Format(@"SELECT m.nome, sum(p.horas)/m.carga_horaria as frequencia, m.nome_prof FROM fg.pauta p,cad_materia m,cad_usuario u
            where m.idmateria=p.id_materia
            and u.idusuario=m.id_usuario
            and m.id_usuario=u.idusuario 
            and m.id_usuario=?idusuario
            group by id_materia;");


            MySqlDataAdapter resultado = Adapter(x,
                new MySqlParameter("idusuario", this.idusuario));
            DataTable dt = new DataTable();
            resultado.Fill(dt);
            return dt;
        }
    }
}