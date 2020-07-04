using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using fourg2.classes;

namespace fourg2.Administrador
{
    public partial class Relatorios : System.Web.UI.Page
    {
        banco objbanco = new banco();
        materia objmateria = new materia();
        login objlogin = new login();
        relatorio objrelatorio = new relatorio();

        protected void Page_Load(object sender, EventArgs e)
        {
            string strCon = " server=localhost;uid=aluno;pwd=aluno;database=fg ";
            //chama apenas na primeira carga da pagina
            if (!Page.IsPostBack)
            {
                preencheGrid();
            }
        }
        public void preencheGrid()
        {
            UsuarioGridView.DataSource = objrelatorio.BuscarUsuarios();
            UsuarioGridView.DataBind();
        }




    }
}