using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using fourg2.classes;
using System.Data;

namespace fourg2.Administrador
{
    public partial class CadastroAdmin : System.Web.UI.Page
    {

        banco banco = new banco();
        cadastrar cadastrar = new cadastrar();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cadastrar.nomeadm = txtnomeadm.Text;
            cadastrar.emailadm = txtemailadm.Text;
            cadastrar.senhaadm = txtsenhaadm.Text;

            DataTable dataTableEmail = cadastrar.VerificarEmailAdm();
            if (dataTableEmail.Rows.Count > 0)
            {
                Response.Write("<script language=javascript>alert('Email já existente.')</script>");
            }
            else
            {

                int resultado = cadastrar.CadastrarAdm();

                if (resultado == 1)
                {
                    Response.Write("<script language=javascript>alert('Cadastro efetuado com sucesso!')</script>");
                }

                else
                {
                    Response.Write("<script language=javascript>alert('Cadastro não efetuado, falha na conexão com o Banco de Dados.')</script>");
                }

                txtemailadm.Text = String.Empty;
                txtnomeadm.Text = String.Empty;
                txtsenhaadm.Text = String.Empty;
                txtconfsenhaadm.Text = String.Empty;
            }
        }
    }
}