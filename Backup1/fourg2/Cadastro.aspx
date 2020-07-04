<%@ Page Title="Cadastre-se" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="fourg2.Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">



    <div id="conteudo">
        <div id="paginacanvascad">
            <div class="cadastrowrapper">
                <h2>Faça seu cadastro.
                </h2>
                <form class="formcadastro" runat="server">


                    <div class="formulariocadastro">
                        <div class="cadastrotextbox">
                            <div class="labelformcadastro">
                                <asp:Label ID="Label1" runat="server" Text="Nome Completo" Font-Bold="True"></asp:Label>
                                <div class="textboxformcadastro">
                                    <div class="validadorlateral">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Insira seu Nome*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <img src="images/user.png" />
                                        </span>
                                        <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Nome completo" runat="server"></asp:TextBox>
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
                                        <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="Celular" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="cadastrotextbox">
                            <div class="labelformcadastro">
                                <asp:Label ID="Label2" runat="server" Text="Endereço de Email" Font-Bold="True"></asp:Label>
                                <div class="textboxformcadastro">
                                    <div class="validadorlateral">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Insira seu endereço de Email*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <img src="images/envelope.png" />
                                        </span>
                                        <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Endereço de Email" type="email" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="cadastrotextbox">
                            <div class="labelformcadastro">
                                <asp:Label ID="Label3" runat="server" Text="Senha" Font-Bold="True"></asp:Label>
                                <div class="textboxformcadastro">
                                    <div class="validadorlateral">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Insira uma senha válida*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <img src="images/key.png" />
                                        </span>
                                        <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Senha" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="cadastrotextbox">
                            <div class="labelformcadastro">
                                <asp:Label ID="Label4" runat="server" Text="Confirmação de Senha" Font-Bold="True"></asp:Label>
                                <div class="textboxformcadastro">
                                    <div class="validadorlateral">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Insira a sua confirmação de Senha*" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Confirmação de senha inválida." ControlToCompare="TextBox3" ControlToValidate="TextBox4"></asp:CompareValidator>
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-addon">
                                            <img src="images/key.png" />
                                        </span>
                                        <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Confirmação de Senha" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>






                    <div class="faca">
                        <div class="caixafaca">
                            <asp:Button ID="Button3" runat="server" CssClass="botaocadastrar" Text="Criar minha conta" Font-Bold="True" OnClick="Button3_Click" />
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
