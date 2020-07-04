using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace fourg2
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {


            string senha1 = TextBox3.Text;
            string senha2 = TextBox4.Text;
            MySqlConnection conn;
            string conexao = " server=localhost;uid=root;pwd=12345;database=fg ";
            conn = new MySqlConnection(conexao);



            string comando = "INSERT INTO cad_usuario(nomecompleto,email,senha,celular) ";
            comando += " Values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox5.Text + "');";

            MySqlCommand cmd = new MySqlCommand(comando);
            cmd.Connection = conn;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

            MessageBox.Show("Cadastro efetuado com sucesso!!!", "FourG", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
    }
}