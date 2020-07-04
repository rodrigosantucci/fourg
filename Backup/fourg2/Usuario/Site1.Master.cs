using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using MySql;

namespace WebApplication1.Usuario
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((Session["nome"] != string.Empty))
            {

                if (DBNull.Value.Equals(Session["nome"]))
                {
                    lblnomeusuario.Text = "ERRO!";
                   

                }

                else  lblnomeusuario.Text = Session["nome"].ToString();

            }
            else lblnomeusuario.Text = "ERRO!";
        }
    }
}