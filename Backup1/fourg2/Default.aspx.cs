using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


namespace fourg2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
              login objLogin = new login() ;

            
           
            bool retorno = objLogin.fazerLogin(Username1.Text, Password1.Text);

            if (retorno == true)

            {
                Session["Login"] = Username1.Text;
                FormsAuthentication.RedirectFromLoginPage(Username1.Text, false);
                Response.Redirect("Usuario/Inicio.aspx");

            }
            else
            {
                MessageBox.Show("Email ou senha invalidos.", "FourG", MessageBoxButtons.OK, MessageBoxIcon.Error );
             Response.Redirect("Login.aspx");
                
            }

        }
    }
}
