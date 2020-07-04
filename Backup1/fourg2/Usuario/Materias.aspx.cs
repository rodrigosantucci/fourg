using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


namespace WebApplication1.Usuario
{
    public partial class Materias : System.Web.UI.Page
    {
        string strCon = null;

 
        protected void Page_Load(object sender, EventArgs e)
        {      
               string strCon = " server=localhost;uid=root;pwd=12345;database=fg ";
                //chama apenas na primeira carga da pagina
                if (!Page.IsPostBack)
                {
                    preencheGrid();
                }         
        }


        public void preencheGrid()
        {
            string strCon = " server=localhost;uid=root;pwd=12345;database=fg ";
            //cria uma conexão usando a string de conexão definida
            MySqlConnection con = new MySqlConnection(strCon);
            //abre a conexão
            con.Open();
            //define um objeto Command que usa a stored procedure na conexão criada
            MySqlCommand cmd = new MySqlCommand("select idmateria,nome,carga_horaria,nome_prof from cad_materia", con);
            //realizar um acesso somente-leitura no banco de dados
            MySqlDataReader dr = cmd.ExecuteReader();
            //cria um datatable que conterá os dados
            DataTable dt = new DataTable();
            //carrega o datatable com os dados do datareader
            dt.Load(dr);
            //exibe os dados no GridView
            ClienteGridView.DataSource = dt;
            ClienteGridView.DataBind();
        }


        protected void ClienteGridView_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            string strCon = " server=localhost;uid=root;pwd=12345;database=fg ";
            ClienteGridView.EditIndex = -1;
            preencheGrid();
        }


        protected void ClienteGridView_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            string strCon = " server=localhost;uid=root;pwd=12345;database=fg ";
            ClienteGridView.EditIndex = e.NewEditIndex;
            preencheGrid();
        }


        protected void ClienteGridView_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            string strCon = " server=localhost;uid=root;pwd=12345;database=fg ";
            //Obtem cada valor único do DataKeyNames
            int idmateria = Convert.ToInt32(ClienteGridView.DataKeys[e.RowIndex].Value.ToString());
            //Obtem o valor do TextBox no EditItemTemplet da linha clicada
            string nome = ((TextBox)ClienteGridView.Rows[e.RowIndex].FindControl("txtnome")).Text;
            string carga_horaria = ((TextBox)ClienteGridView.Rows[e.RowIndex].FindControl("txtendereco")).Text;
            string nome_prof = ((TextBox)ClienteGridView.Rows[e.RowIndex].FindControl("txtemail")).Text;
            //abre a conexão
            MySqlConnection con = new MySqlConnection(strCon);
            con.Open();
            //Utiliza a stored procedure sproc_AtualizaCliente na conexão
            MySqlCommand cmd = new MySqlCommand("(  @idmateria int,  @nome varchar(45), @carga_horaria int(11), @nome_prof char(45)) AS update Cliente set nome=nome, carga_horaria=@carga_horaria, nome_prof=@nome_prof where idmateria=@idmateria", con);
            //define o tipo de comando 
            cmd.CommandType = CommandType.StoredProcedure;
            //passa os parâmetros para a stored procedure
            cmd.Parameters.AddWithValue("@idmateria ", idmateria);
            cmd.Parameters.AddWithValue("@nome ", nome);
            cmd.Parameters.AddWithValue("@carga_horaria ", carga_horaria);
            cmd.Parameters.AddWithValue("@nome_prof ", nome_prof);
            //Método que retorna as linhas afetadas
            cmd.ExecuteNonQuery();
            //nenhuma linha no modo de edição
            ClienteGridView.EditIndex = -1;
            //preenche o grid nomvanete
            preencheGrid();
        }



        protected void ClienteGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string strCon = " server=localhost;uid=root;pwd=12345;database=fg ";
            int idmateria = Convert.ToInt32(ClienteGridView.DataKeys[e.RowIndex].Value.ToString());
            MySqlConnection con = new MySqlConnection(strCon);
            con.Open();
            MySqlCommand cmd = new MySqlCommand("(@idmateria int ) AS Delete from cad_materia where idmateria = @idmateria", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idmateria ", idmateria);
            cmd.ExecuteNonQuery();
            preencheGrid();
        }





        protected void ClienteGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            string strCon = " server=localhost;uid=root;pwd=12345;database=fg ";
            if (e.Row.RowState == (DataControlRowState.Edit | DataControlRowState.Alternate) | e.Row.RowState == DataControlRowState.Edit)
            {
                return;
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //Referencia ao linkbutton delete
                Button deleteButton = (Button)e.Row.Cells[5].Controls[0];
                deleteButton.OnClientClick = "if (!window.confirm('Confirma a exclusão deste registro ?')) return false;";
            }
        }

        protected void insertmateria_Click(object sender, EventArgs e)
        {

            MySqlConnection conn;
            string conexao = " server=localhost;uid=root;pwd=12345;database=fg ";
            conn = new MySqlConnection(conexao);



            string comando = "INSERT INTO cad_materia(nome,carga_horaria,nome_prof) ";
            comando += " Values('" + materia.Text + "','" + cargah.Text + "','" + professor.Text + "');";

            MySqlCommand cmd = new MySqlCommand(comando);
            cmd.Connection = conn;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();


            materia.Text = "";
            cargah.Text = "";
            professor.Text = "";
        }



    }
}