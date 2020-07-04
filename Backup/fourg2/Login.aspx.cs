using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using fourg2.classes;


namespace fourg2
{
    public partial class Login : System.Web.UI.Page
    {
        banco banco = new banco();
        login login = new login();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogar_Click(object sender, EventArgs e)
        {

            login.email = Username2.Text;
            login.senha = Password2.Text;

            string feedback;


            if (login.VerificarLoginUsuario())
            {
                Session["nome"] = login.nome;
                Session["idusuario"] = login.idusuario;
                Session["email"] = login.email;
                Session["celular"] = login.celular;
                Session["senha"] = login.senha;


                FormsAuthentication.RedirectFromLoginPage(Username2.Text, true);
                Response.Redirect("Usuario/Inicio.aspx");
            }

            if (login.VerificarLoginAdmin())
            {
                Session["nomeadm"] = login.nomeadm;
                Session["idadm"] = login.idadm;
                Session["emailadm"] = login.emailadm;
                Session["senhaadm"] = login.senhaadm;


                FormsAuthentication.RedirectFromLoginPage(Username2.Text, true);
                Response.Redirect("Administrador/InicioAdm.aspx");
            }
            else
            {
                Response.Write("<script language=javascript>alert('Usuário ou senha inválido.')</script>");
            }


        }


    }
}