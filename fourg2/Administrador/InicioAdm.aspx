<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Site2.Master" AutoEventWireup="true" CodeBehind="InicioAdm.aspx.cs" Inherits="fourg2.Administrador.InicioAdm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="conteudo">
        <div class="main">

            <div class="titulo">
                <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h1>Feedback de Usuários.</h1>
							</header></asp:Label>
            </div>
            <div class="inserirmat" style="margin:0 auto; width:510px;">

                    <asp:TextBox ID="txtMailServer" Text="pop3.live.com" runat="server" />

                    <asp:TextBox ID="txtEmail" runat="server" Text="projeto-final@hotmail.com" />
 
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Text="projeto123" />

                    <asp:TextBox ID="txtPort" runat="server" Text="995" />

                    <asp:CheckBox ID="chkSSL" Checked="true" runat="server" />

                <asp:Button ID="btnReadEmails" runat="server" Text="FEEDBACK" OnClick="Read_Emails" style="width:500px;" CssClass="btn btn-default" />

            </div>

            <div class="dentro" style="height:500px; overflow-y:scroll;">
                <asp:GridView ID="gvEmails" runat="server" AutoGenerateColumns="false" CssClass="table table-hover" style="margin:0 auto;">
                    <Columns>
                        <asp:BoundField HeaderText="From" DataField="From" />
                        <asp:HyperLinkField HeaderText="Subject" DataNavigateUrlFields="MessageNumber"
                            DataNavigateUrlFormatString="~/Administrador/VerMensagem.aspx?MessageNumber={0}"
                            DataTextField="Subject" />
                        <asp:BoundField HeaderText="Date" DataField="DateSent" />
                    </Columns>
                </asp:GridView>
            </div>






        </div>
    </div>
</asp:Content>
