using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using MySql.Data;
using MySql;

namespace fourg2
{
    public class login
    {



        private string strCon;

        public login()
        {
            string host = "localhost" ;
            string user = "root" ;
            string pass = "12345" ;
            string banco = "fg" ;
            strCon = "server =" + host + "; user id =" + user + "; password=" + pass + "; database=" + banco + ";";
        }


        public bool fazerLogin(string usuario, string senha)
        {
            bool encontrou = false;
            MySqlConnection conn = new MySqlConnection(strCon);
            string sql = "select * from cad_usuario where email = @usu and senha = @sen";
            MySqlDataAdapter adaptador = new MySqlDataAdapter(sql, conn);
            DataTable tabUsuario = new DataTable();



            adaptador.SelectCommand.Parameters.Add("@usu", MySqlDbType.String, 60);
            adaptador.SelectCommand.Parameters["@usu"].Value = usuario;


            adaptador.SelectCommand.Parameters.Add("@sen", MySqlDbType.String, 12);
            adaptador.SelectCommand.Parameters["@sen"].Value = senha;


            try
            {
                conn.Open();
                adaptador.Fill(tabUsuario);
                if (tabUsuario.Rows.Count > 0)
                {
                    encontrou = true;
                }
            }

            catch (Exception e)
            {
                string erro = e.Message;
            }
            return encontrou;

        }       
    }
}