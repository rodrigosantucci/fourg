using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using fourg2.classes;

namespace fourg2.Administrador
{
    public partial class Config : System.Web.UI.Page
    {

        banco objbanco = new banco();
        config objconfig = new config();
        login objlogin = new login();

        protected void Page_Load(object sender, EventArgs e)
        {
            salvar1.Visible = false;
            nomecontaadm.Enabled = false;
            emailcontaadm.Enabled = false;



            objconfig.nomeadm = Session["nomeadm"].ToString();
            objconfig.emailadm = Session["emailadm"].ToString();
            objconfig.senhaadm = Session["senhaadm"].ToString();

            if (!Page.IsPostBack)
            {
                preencher();
            }

        }

        public void preencher()
        {

            nomecontaadm.Text = objconfig.nomeadm;
            emailcontaadm.Text = objconfig.emailadm;

        }


        protected void salvarms_Click(object sender, EventArgs e)
        {
            objconfig.senhaatualadmin = senhaatualadm.Text;
            objconfig.novasenhaadm = novasenhaadm.Text;



            objconfig.idadm = int.Parse(Session["idadm"].ToString());

            if (Session["idadm"] != string.Empty)
            {
                if (objconfig.SalvarSenhaAdm() > 0)
                {
                    Response.Write("<script language=javascript>alert('Senha alterada')</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Senha incorreta.')</script>");
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
            senhaatualadm.Text = String.Empty;
            novasenhaadm.Text = String.Empty;
            confirmacaosenhaadm.Text = String.Empty;

        }

        protected void alterar1_Click1(object sender, EventArgs e)
        {
            nomecontaadm.Enabled = true;
            emailcontaadm.Enabled = true;


            alterar1.Visible = false;
            salvar1.Visible = true;
        }

        protected void salvar1_Click1(object sender, EventArgs e)
        {
            objconfig.nomeadm = nomecontaadm.Text;
            objconfig.emailadm = emailcontaadm.Text;

            objconfig.idadm = int.Parse(Session["idadm"].ToString());

            if (Session["idadm"] != string.Empty)
            {
                int resultado = objconfig.SalvarDadosAdm();

                if (resultado == 1)
                {
                    Response.Write("<script language=javascript>alert('Dados modificados com sucesso, as modificações serão feitas ao relogar.')</script>");
                }
            }
            else
            {

                Response.Write("<script language=javascript>alert('Dados não modificados, falha na conexão com o bando de dados.')</script>");
            }

            preencher();

            nomecontaadm.Enabled = false;
            emailcontaadm.Enabled = false;


            salvar1.Visible = false;
            alterar1.Visible = true;
        }

        protected void cancelar1_Click1(object sender, EventArgs e)
        {
            nomecontaadm.Enabled = false;
            emailcontaadm.Enabled = false;
            alterar1.Visible = true;
        }
    }
}