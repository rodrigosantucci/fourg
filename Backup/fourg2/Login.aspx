<%@ Page Title="Acesse sua Conta" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="fourg2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="conteudo">
        <div id="paginacanvaslogin">
            <div class="loginwrapper">
                <h2>
                    Entre com sua conta.</h2>
                <form class="formlogin" runat="server">
                <fieldset>
                    <legend class="dentrodofieldset">Entrar</legend>
                    <div class="input-group margin-bottom-sm">
                        <span class="input-group-addon">
                            <img src="images/at.png" />
                        </span>
                        <asp:TextBox ID="Username2" runat="server" type="email" placeholder="E-mail" CssClass="form-control"
                            Style="width: 250px; top: 0px; left: 0px;"></asp:TextBox>
                        <div class="validadorlaterallogin">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" ErrorMessage="Informe seu Email*"
                                ControlToValidate="Username2"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <p>
                    </p>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <img src="images/key.png" />
                        </span>
                        <asp:TextBox ID="Password2" runat="server" placeholder="Senha" CssClass="form-control"
                            TextMode="Password" Style="width: 250px;"></asp:TextBox>
                   
                    <div class="validadorlaterallogin">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="Informe sua Senha*"
                            ControlToValidate="Password2"></asp:RequiredFieldValidator>
                    </div>
                    </div>
                </fieldset>
                <div class="botaolembraresquece" style="padding-left: 11px;">
                    <asp:Button ID="btnlogar" runat="server" CssClass="btn btn-primary" Text="Entrar"
                        Font-Bold="True" OnClick="btnlogar_Click" />
                    <div class="lembraresquece">
                        <asp:Label ID="RememberMeLabel" runat="server" CssClass="inline">
                            <asp:CheckBox ID="RememberMe" runat="server" /><strong> Lembrar-me</strong></asp:Label>
                        <span class="separador">.</span> <a href="esqueceusenha.aspx">Esqueceu sua senha?</a>
                    </div>
                </div>
                </form>
            </div>
            <div class="footerlogin">
                <p class="linkparacadastrar">
                    Não tem conta ainda? <a href="cadastro.aspx">Cadastre-se agora.</a>
                </p>
                <p class="linkparaajuda">
                    Não sabe como funciona? Nós te ajudamos. <a href="guia.aspx">Suporte.</a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
