<%@ Page Title="Contato" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Contato.aspx.cs" Inherits="fourg2.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="conteudo">
        <div id="paginacanvascontato">
            <div class="contatowrapper">
                <h2>
                    Envie sua mensagem.</h2>
                <form runat="server">
                <div class="emailnome">
                    <asp:TextBox ID="contatonome" runat="server" placeholder="Nome" CssClass="form-control textcontatoemailnome"></asp:TextBox>
                    <asp:TextBox ID="contatoemail" runat="server" placeholder="Email" CssClass="form-control textcontatoemailnome"></asp:TextBox>
                </div>
                <asp:TextBox ID="contatoassunto" runat="server" placeholder="Assunto" CssClass="form-control textassunto"></asp:TextBox>
                <asp:TextBox ID="contatomensagem" Rows="5" cols="10" placeholder="Mensagem" class="form-control textmsg"
                    runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:Button ID="enviarmsg" runat="server" Text="Enviar" CssClass="btn btn-primary"
                    OnClick="enviarmsg_Click" Style="margin-left: 6px;" />
                </form>
            </div>
            <div class="footercontato">
                <p class="linkparacadastrar">
                    Deseja voltar? Basta clicar <a href="Default.aspx">aqui!</a>
                </p>
                <p class="linkparaajuda">
                    Não sabe como funciona? Nós te ajudamos. <a href="Guia.aspx">Suporte.</a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
