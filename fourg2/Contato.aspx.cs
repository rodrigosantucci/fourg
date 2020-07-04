using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Windows.Forms;
using System.Net;

namespace fourg2
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void SendMail()
        {
            // Gmail Address from where you send the mail
            var fromAddress = "Rodrigo_santucci@hotmail.com";
            // any address where the email will be sending
            var toAddress = contatoemail.Text.ToString();
            //Password of your gmail address
            const string fromPassword = "6o4r1g45A.";
            // Passing the values and make a email formate to display
            string subject = contatoassunto.Text.ToString();
            string body = "From: " + contatonome.Text + "\n";
            body += "Email: " + contatoemail.Text + "\n";
            body += "Subject: " + contatoassunto.Text + "\n";
            body += "Question: \n" + contatomensagem.Text + "\n";
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.live.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }


        protected void enviarmsg_Click(object sender, EventArgs e)
        {
            try
            {
                //here on button click what will done 
                SendMail();
                Response.Write("<script language=javascript>alert('Mensagem enviada com sucesso')</script>");
                contatoassunto.Text = "";
                contatoemail.Text = "";
                contatonome.Text = "";
                contatomensagem.Text = "";
            }
            catch (Exception)
            {
                Response.Write("<script language=javascript>alert('Falha ao enviar mensagem.')</script>");
            }

        }
    }
}