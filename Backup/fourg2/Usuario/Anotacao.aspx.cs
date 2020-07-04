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

namespace fourg2.Usuario
{
    public partial class Anotacao : System.Web.UI.Page
    {
        banco objbanco = new banco();
        anotacao objanotacao = new anotacao();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                preencheGrid();
            }

        }

        public List<Anotacao> ListAnotacao
        {
            get
            {
                if (ViewState["ListaAnotacao"] == null)
                    ViewState["ListaAnotacao"] = new List<Anotacao>();

                return (List<Anotacao>)ViewState["ListaAnotacao"];
            }
            set { ViewState["ListaAnotacao"] = value; }
        }


        public void preencheGrid()
        {
            objanotacao.idusuario = int.Parse(Session["idusuario"].ToString());

            AnotacaoGridView.DataSource = objanotacao.BuscarAnotacao();
            AnotacaoGridView.DataBind();
        }









        protected void InserirAnotacao_Click(object sender, EventArgs e)
        {
            objanotacao.nome = assunto.Text;
            objanotacao.conteudo = anota.Text;

            objanotacao.idusuario = int.Parse(Session["idusuario"].ToString());

            if (Session["idusuario"] != string.Empty)
            {

                int resultado = objanotacao.InserirAnotacao();

                if (resultado == 1)
                {
                    Response.Write("<script language=javascript>alert('Anotação inserida com sucesso')</script>");
                }
            }
            else
            {

                Response.Write("<script language=javascript>alert('Anotação não inserida, falha na conexão com o bando de dados.')</script>");
            }

            assunto.Text = "";
            anota.Text = "";

        }

        protected void AnotacaoGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            AnotacaoGridView.EditIndex = e.NewEditIndex;
            preencheGrid();
        }

        protected void AnotacaoGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            objanotacao.idanotacao = Convert.ToInt32(AnotacaoGridView.DataKeys[e.RowIndex].Value.ToString());
            if (objanotacao.DeletaAnotacao() > 0)
            {
                AnotacaoGridView.EditIndex = -1;
                preencheGrid();
            }
            else
            {
                Response.Write("<script language=javascript>alert('Erro ao deletar informações.')</script>");
            }

        }

        protected void AnotacaoGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            objanotacao.idanotacao = Convert.ToInt32(AnotacaoGridView.DataKeys[e.RowIndex].Value.ToString());
            objanotacao.nome = ((TextBox)AnotacaoGridView.Rows[e.RowIndex].FindControl("txtassunto")).Text;
            objanotacao.conteudo = ((TextBox)AnotacaoGridView.Rows[e.RowIndex].FindControl("txtconteudo")).Text;
            objanotacao.idusuario = int.Parse(Session["idusuario"].ToString());

            if (objanotacao.AtualizarAnotacao() > 0)
            {
                AnotacaoGridView.EditIndex = -1;
                preencheGrid();
            }
            else
            {
                Response.Write("<script language=javascript>alert('Erro ao alterar informações.')</script>"); 
            }
        }

        protected void AnotacaoGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            AnotacaoGridView.EditIndex = -1;
            preencheGrid();
        }
    }
}