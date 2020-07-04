using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace fourg2.classes
{
    public class banco
    {
        protected MySqlConnection conexao;
        protected MySqlDataAdapter dataadapter;
        protected MySqlDataReader datareader;
        protected MySqlCommand comando;

        public banco()
        {
            conexao = new MySqlConnection();
            comando = new MySqlCommand();
        }

        public Boolean ConectarNoBanco(string Casa)
        {
            Boolean resultado = false;
            try
            {
                string connString = ConfigurationManager.AppSettings[Casa];
                this.conexao = new MySqlConnection(connString);
                this.conexao.Open();
            }
            catch (Exception ex)
            { }

            if (this.conexao.State == ConnectionState.Open)
            {
                resultado = true;
            }

            return resultado;
        }

        protected void desconectaBanco()
        {
            if (this.conexao.State == ConnectionState.Open)
            {
                this.conexao.Close();
                this.conexao.Dispose();
            }
        }

        public int ExecuteNonQuery(string query)
        {
            Exception erro = null;
            int LinhasAfetadas = -1;

            try
            {
                if (this.conexao.State == ConnectionState.Closed)
                {
                    this.ConectarNoBanco("Casa");
                }

                if (this.conexao.State == ConnectionState.Open)
                {
                    comando.Connection = this.conexao;
                    comando.CommandText = query;

                    LinhasAfetadas = comando.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                erro = ex;
            }
            finally
            {
                if (this.conexao.State == System.Data.ConnectionState.Open)
                {
                    desconectaBanco();
                }
            }

            return LinhasAfetadas;
        }

        public int ExecuteNonQuery(string query, params MySqlParameter[] parameters)
        {
            Exception erro = null;
            int LinhasAfetadas = -1;
            comando.Parameters.Clear();

            try
            {
                if (this.conexao.State == ConnectionState.Closed)
                {
                    this.ConectarNoBanco("Casa");
                }

                if (this.conexao.State == ConnectionState.Open)
                {
                    comando.Connection = this.conexao;
                    comando.CommandText = query;
                    comando.Parameters.AddRange(parameters);


                    LinhasAfetadas = comando.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                erro = ex;
            }
            finally
            {
                if (this.conexao.State == System.Data.ConnectionState.Open)
                {
                    desconectaBanco();
                }
            }

            return LinhasAfetadas;
        }

        public MySqlDataAdapter Adapter(string query, params MySqlParameter[] parameters)
        {
            Exception erro = null;
            MySqlDataAdapter dados = null;
            comando.Parameters.Clear();

            try
            {
                if (this.conexao.State == ConnectionState.Closed)
                {
                    this.ConectarNoBanco("Casa");
                }

                if (this.conexao.State == ConnectionState.Open)
                {
                    comando.Connection = this.conexao;
                    comando.CommandText = query;
                    comando.Parameters.AddRange(parameters);

                    dados = new MySqlDataAdapter(comando);
                }
            }
            catch (Exception ex)
            {
                erro = ex;
            }
            finally
            {
                if (this.conexao.State == System.Data.ConnectionState.Open)
                {
                    desconectaBanco();
                }
            }

            return dados;
        }
    }
}