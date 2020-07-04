using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using fourg2.classes;
using System.Drawing;


namespace WebApplication1.Usuario
{
    public partial class Avisos : System.Web.UI.Page
    {
        alertas objalertas = new alertas();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                objalertas.idusuario = int.Parse(Session["idusuario"].ToString());
                preencheGrid();
            }
        }

        public void preencheGrid()
        {

            objalertas.idusuario = int.Parse(Session["idusuario"].ToString());

            AvisosGridView.DataSource = objalertas.BuscarAlerta();
            AvisosGridView.DataBind();
        }

        protected void AvisosGridView_DataBound(object sender, GridViewRowEventArgs e)
        {
            // quando montar as linhas do tipo DADOS
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // pega os campos tipo e propriedade
                string frequencia = DataBinder.Eval(e.Row.DataItem, "frequencia").ToString();
                // cores para aprovação

                if (frequencia == null)
                {
                    e.Row.BackColor = Color.Red;
                }
               
            }
        }
    }
}