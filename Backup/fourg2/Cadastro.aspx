<%@ Page Title="Cadastre-se" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Cadastro.aspx.cs" Inherits="fourg2.Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <script>        $(function () {
            $("#MainContent_txtCel").mask("(99) 99999-9999");
        });</script>
    <div class="conteudo">
        <div id="paginacanvascad">
            <div class="cadastrowrapper">
                <h2>
                    Faça seu cadastro.
                </h2>
                <form class="formcadastro" runat="server">
                <div class="formulariocadastro">
                    <div class="cadastrotextbox">
                        <div class="labelformcadastro">
                            <asp:Label ID="Label1" runat="server" Text="Nome completo" Font-Bold="True"></asp:Label>
                            <div class="textboxformcadastro">
                                <div class="validadorlateral">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Insira seu Nome*"
                                        ControlToValidate="txtNome" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <img src="images/user.png" />
                                    </span>
                                    <asp:TextBox ID="txtNome" CssClass="form-control" runat="server" MaxLength="80"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cadastrotextbox">
                        <div class="labelformcadastro">
                            <asp:Label ID="Label5" runat="server" Text="Celular" Font-Bold="True"></asp:Label>
                            <div class="textboxformcadastro">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <img src="images/cell.png" />
                                    </span>
                                    <asp:TextBox ID="txtCel" CssClass="form-control" runat="server" MaxLength="11"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cadastrotextbox">
                        <div class="labelformcadastro">
                            <asp:Label ID="Label2" runat="server" Text="Endereço de Email" Font-Bold="True"></asp:Label>
                            <div class="textboxformcadastro">
                                <div class="validadorlateral">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server"
                                        ErrorMessage="Insira seu endereço de Email*" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <img src="images/at.png" />
                                    </span>
                                    <asp:TextBox ID="txtEmail" CssClass="form-control" type="email" runat="server" MaxLength="60"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cadastrotextbox">
                        <div class="labelformcadastro">
                            <asp:Label ID="Label3" runat="server" Text="Senha" Font-Bold="True"></asp:Label>
                            <div class="textboxformcadastro">
                                <div class="validadorlateral">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server"
                                        ErrorMessage="Insira uma senha válida*" ControlToValidate="txtSenha"></asp:RequiredFieldValidator>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <img src="images/key.png" />
                                    </span>
                                    <asp:TextBox ID="txtSenha" CssClass="form-control" runat="server" type="Password"
                                        TextMode="Password" MaxLength="12"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cadastrotextbox">
                        <div class="labelformcadastro">
                            <asp:Label ID="Label4" runat="server" Text="Confirmação de Senha" Font-Bold="True"></asp:Label>
                            <div class="textboxformcadastro">
                                <div class="validadorlateral">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server"
                                        ErrorMessage="Insira a sua confirmação de Senha*" ControlToValidate="txtConfSenha"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ForeColor="Red" ErrorMessage="Confirmação de senha inválida."
                                        ControlToCompare="txtSenha" ControlToValidate="txtConfSenha"></asp:CompareValidator>
                                </div>
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <img src="images/key.png" />
                                    </span>
                                    <asp:TextBox ID="txtConfSenha" type="Password" CssClass="form-control" runat="server"
                                        TextMode="Password" MaxLength="12"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="faca">
                    <div class="caixafaca">
                        <asp:Button ID="btnCadastrar" runat="server" CssClass="botaocadastrar" Text="Criar minha conta"
                            Font-Bold="True" onclick="btnCadastrar_Click1"/>
                    </div>
                </div>
                </form>
                <div class="footercadastro">
                    <p class="linkparacadastrar">
                        Deseja voltar? Basta clicar <a href="Default.aspx">aqui!</a>
                    </p>
                    <p class="linkparaajuda">
                        Não sabe como funciona? Nós te ajudamos. <a href="Guia.aspx">Suporte.</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
