using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using fourg2.classes;
using System.Data;

namespace fourg2
{
    public partial class Cadastro : System.Web.UI.Page
    {
        banco banco = new banco();
        cadastrar cadastrar = new cadastrar();

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnCadastrar_Click1(object sender, EventArgs e)
        {
            cadastrar.nome = txtNome.Text;
            cadastrar.celular = txtCel.Text;
            cadastrar.email = txtEmail.Text;
            cadastrar.senha = txtSenha.Text;

            DataTable dataTableEmail = cadastrar.VerificarEmail();
            if (dataTableEmail.Rows.Count > 0)
            {
                Response.Write("<script language=javascript>alert('Email já existente.')</script>");
            }
            else 
            { 
                DataTable dataTableCelular = cadastrar.VerificarCelular();
                if (dataTableCelular.Rows.Count > 0)
                {
                    Response.Write("<script language=javascript>alert('Celular já existente.')</script>");
                }
                else
                {
                    int resultado = cadastrar.CadastrarUsuario();

                    if (resultado == 1)
                    {
                        Response.Write("<script language=javascript>alert('Cadastro efetuado com sucesso!')</script>");
                    }

                    else
                    {
                        Response.Write("<script language=javascript>alert('Cadastro não efetuado, falha na conexão com o Banco de Dados.')</script>");
                    }
                    txtCel.Text = String.Empty;
                    txtEmail.Text = String.Empty;
                    txtNome.Text = String.Empty;
                    txtSenha.Text = String.Empty;
                    txtConfSenha.Text = String.Empty;
                }
            }


           

            
        }
    }
}