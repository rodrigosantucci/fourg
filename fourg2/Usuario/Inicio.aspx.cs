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
    public partial class Inicio : System.Web.UI.Page
    {
        materia objmateria = new materia();
        inicio objinicio = new inicio();
        detalhes objdetalhes= new detalhes();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                objmateria.idusuario = int.Parse(Session["idusuario"].ToString());
                CarregaDropDownList();
                preencheGrid();
            }
        }

        private void CarregaDropDownList()
        {
            ddMaterias.DataSource = objmateria.BuscarMateria();
            ddMaterias.DataValueField = "idmateria";
            ddMaterias.DataTextField = "Nome";

            ddMaterias.DataBind();
            ddMaterias.Items.Add(new ListItem("Selecione:", "0"));
            ddMaterias.SelectedValue = "0";
        }

        protected void inserepresenca_Click(object sender, EventArgs e)
        {
            objinicio.data = inserirdata.Text;
            objinicio.hora = inserirhoras.Text;
            objinicio.idmateria = int.Parse(ddMaterias.SelectedItem.Value.ToString());
            objinicio.idusuario = int.Parse(Session["idusuario"].ToString());
            objinicio.InserirPauta();
            Response.Write("<script language=javascript>alert('Presença inserida com sucesso.')</script>");
            preencheGrid();
        }

        public void preencheGrid()
        {
            objinicio.idusuario = int.Parse(Session["idusuario"].ToString());

            InicioGridView.DataSource = objinicio.BuscarInicio();
            InicioGridView.DataBind();
            DetalhesGridView.DataSource = objinicio.BuscarDetalhes();
            DetalhesGridView.DataBind();
        }
    }
}