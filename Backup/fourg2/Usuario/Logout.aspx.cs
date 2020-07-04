using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.Usuario
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
    
    {
    
        FormsAuthentication.SignOut();
    
    //Efetua o logout, desconectando o usuário.
    
 
    
    Response.Redirect("~/Default.aspx");
    
    //Redireciona o usuário para a página "default.aspx".
    
        }

    }
}