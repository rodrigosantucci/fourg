using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using fourg2.classes;


namespace WebApplication1.Usuario
{
    public partial class Materias : System.Web.UI.Page
    {
        string strCon = null;
        banco objbanco = new banco();
        materia objmateria = new materia();
        login objlogin = new login();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                preencheGrid();
            }
        }

        public void preencheGrid()
        {
            objmateria.idusuario = int.Parse(Session["idusuario"].ToString());

            MateriasGridView.DataSource = objmateria.BuscarMateria();
            MateriasGridView.DataBind();
        }

        protected void insertmateria_Click(object sender, EventArgs e)
        {
            objmateria.nome = materia.Text;
            objmateria.carga_horaria = cargah.Text;
            objmateria.nome_prof = professor.Text;
            objmateria.idusuario = int.Parse(Session["idusuario"].ToString());

            if (Session["idusuario"] != string.Empty)
            {
                int resultado = objmateria.InserirMateria();

                if (resultado == 1)
                {
                    preencheGrid();
                    Response.Write("<script language=javascript>alert('Matéria inserida.')</script>");
                    
                }
            }
            else
            {
                Response.Write("<script language=javascript>alert('Erro! Falha na conexão com o bando de dados.')</script>");
            }

            materia.Text = "";
            cargah.Text = "";
            professor.Text = "";
            
        }

        protected void MateriasGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            objmateria.idmateria = Convert.ToInt32(MateriasGridView.DataKeys[e.RowIndex].Value.ToString());
            if (objmateria.DeletaMateria() > 0)
            {
                MateriasGridView.EditIndex = -1;
                preencheGrid();
                Response.Write("<script language=javascript>alert('Matéria deletada.')</script>");
            }
            else
            { Response.Write("<script language=javascript>alert('Erro!')</script>"); }
        }

        protected void MateriasGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            objmateria.idmateria = Convert.ToInt32(MateriasGridView.DataKeys[e.RowIndex].Value.ToString());
            //preciso pegar os dados da  grid da linha usada para a edição......

            objmateria.nome = ((TextBox)MateriasGridView.Rows[e.RowIndex].FindControl("txtmateria")).Text;
            objmateria.carga_horaria = ((TextBox)MateriasGridView.Rows[e.RowIndex].FindControl("txtcargah")).Text;
            objmateria.nome_prof = ((TextBox)MateriasGridView.Rows[e.RowIndex].FindControl("txtprofessor")).Text;
            objmateria.idusuario = int.Parse(Session["idusuario"].ToString());

            if (objmateria.AtualizarMaterias() > 0)
            {
                MateriasGridView.EditIndex = -1;
                preencheGrid();
            }
            else
            { Response.Write("<script language=javascript>alert('Erro!')</script>"); }
        }

        protected void MateriasGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            MateriasGridView.EditIndex = e.NewEditIndex;
            preencheGrid();
        }

        protected void MateriasGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            MateriasGridView.EditIndex = -1;
            preencheGrid();
        }
    }
}