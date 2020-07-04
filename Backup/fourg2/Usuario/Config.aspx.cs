using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using fourg2.classes;

namespace WebApplication1.Usuario
{
    public partial class Config : System.Web.UI.Page
    {
        banco objbanco = new banco();
        config objconfig = new config();
        login objlogin = new login();

        protected void Page_Load(object sender, EventArgs e)
        {

            salvar1.Visible = false;
            nomeconta.Enabled = false;
            emailconta.Enabled = false;
            celularconta.Enabled = false;


            
            objconfig.nome = Session["nome"].ToString();
            objconfig.email = Session["email"].ToString();
            objconfig.celular = Session["celular"].ToString();
            objconfig.senha = Session["senha"].ToString();

            if (!Page.IsPostBack)
            {
                preencher();
            }
        }
        public void preencher()
        { 
        
            nomeconta.Text = objconfig.nome;
            emailconta.Text = objconfig.email;
            celularconta.Text = objconfig.celular;

        }

        protected void alterar1_Click(object sender, EventArgs e)
        {
            nomeconta.Enabled = true;
            emailconta.Enabled = true;
            celularconta.Enabled = true;


            alterar1.Visible = false;
            salvar1.Visible = true;
        }

        protected void cancelar1_Click(object sender, EventArgs e)
        {
            nomeconta.Enabled = false;
            emailconta.Enabled = false;
            celularconta.Enabled = false;
            alterar1.Visible = true;
        }

        

        protected void salvar1_Click(object sender, EventArgs e)
        {
            objconfig.nome = nomeconta.Text;
            objconfig.email = emailconta.Text;
            objconfig.celular = celularconta.Text;

            objconfig.idusuario = int.Parse(Session["idusuario"].ToString());

            if (Session["idusuario"] != string.Empty)
            {
                int resultado = objconfig.SalvarDados();

                if (resultado == 1)
                {
                    Response.Write("<script language=javascript>alert('Dados modificados com sucesso, as modificações serão feitas ao relogar. ')</script>");
                }
            }
            else
            {

                Response.Write("<script language=javascript>alert('Dados não modificados, falha na conexão com o bando de dados.')</script>");
            }

            preencher();

            nomeconta.Enabled = false;
            emailconta.Enabled = false;
            celularconta.Enabled = false;


            salvar1.Visible = false;
            alterar1.Visible = true;
        }

        protected void salvarms_Click(object sender, EventArgs e)
        {
            objconfig.senhaatual = senhaatual.Text;
            objconfig.novasenha = novasenha.Text;
     


            objconfig.idusuario = int.Parse(Session["idusuario"].ToString());

            if (Session["idusuario"] != string.Empty)
            {
                if (objconfig.SalvarSenha() > 0)
                {
                    Response.Write("<script language=javascript>alert('Senha alterada')</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Senhas incorreta.')</script>");
                }
            }
            else
            {

                Response.Write("<script language=javascript>alert('Falha na conexão com o bando de dados.')</script>");
            }

            preencher();
        }

        protected void cancelarms_Click(object sender, EventArgs e)
        {
            senhaatual.Text = String.Empty;
            novasenha.Text = String.Empty;
            confirmacaosenha.Text = String.Empty;

        }
    }
}