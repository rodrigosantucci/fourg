using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using fourg2.classes;

namespace fourg2.Administrador
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nomeadm"] != string.Empty)
            {
                lblnomeadm.Text = Session["nomeadm"].ToString();

            }
            else lblnomeadm.Text = "ERRO!";
        }
    }
}