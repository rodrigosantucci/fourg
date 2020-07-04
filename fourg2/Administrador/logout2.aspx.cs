using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace fourg2.Administrador
{
    public partial class logout2 : System.Web.UI.Page
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