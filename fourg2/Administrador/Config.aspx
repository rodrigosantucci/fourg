﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Site2.Master" AutoEventWireup="true"
    CodeBehind="Config.aspx.cs" Inherits="fourg2.Administrador.Config" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="conteudo">
        <div class="main">
            <div class="titulo">

                <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h1>Minha Conta.</h1>		
                    		</header></asp:Label>
            </div>
            <div class="dentro">
                <div id="centro">

                    <table id="tabelamc" class="minhacontatable table">
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Nome:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="nomecontaadm" class="textlogado2" CssClass="form-control" runat="server"
                                    MaxLength="100" Enabled="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="emailcontaadm" class="textlogado2" CssClass="form-control" type="email"
                                    runat="server" MaxLength="100" Enabled="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="padding-right: 225px; padding-left: 225px">
                                <asp:Button ID="alterar1" runat="server" Text="Alterar" CssClass="editaconta btn btn-default" OnClick="alterar1_Click1" />
                                <asp:Button ID="salvar1" runat="server" Text="Salvar" CssClass="salvaconta btn btn-default" OnClick="salvar1_Click1" />
                                <asp:Button ID="cancelar1" runat="server" Text="Cancelar" CssClass="cancelaedit btn btn-default" OnClick="cancelar1_Click1" />
                                <a href="#" class="altsenha">Alterar senha?</a></td>
                        </tr>
                    </table>





                    <table id="trocadesenha" class="minhacontatable table">
                        <tr>
                            <td>
                                <asp:Label ID="Label5" class="formatolabel" runat="server" Text="Senha atual:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="senhaatualadm" class="textlogado2" CssClass="form-control" placeholder="Insira sua senha atual." runat="server" TextMode="Password"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" class="formatolabel" runat="server" Text="Nova senha:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="novasenhaadm" class="textlogado2" placeholder="Digite uma nova senha." CssClass="form-control" runat="server" MaxLength="12" Enabled="True" TextMode="Password"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" class="formatolabel" runat="server" Text="Confirmação de Senha:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="confirmacaosenhaadm" class="textlogado2" placeholder="Digite a confirmação de senha." CssClass="form-control" runat="server" Enabled="True" TextMode="Password"></asp:TextBox></td>

                            <td style="padding-left: 25px">
                                <asp:CompareValidator ID="meupai" runat="server" ErrorMessage="*Senhas divergentes."
                                    ForeColor="Red" ControlToCompare="novasenhaadm" ControlToValidate="confirmacaosenhaadm"
                                    Enabled="True" Font-Size="Small"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="padding-right: 225px; padding-left: 225px">
                                <asp:Button ID="salvarms" CssClass="salvaconta btn btn-default" runat="server" Text="Salvar" OnClick="salvarms_Click" />
                                <asp:Button ID="cancelarms" CssClass="cancelaedit btn btn-default" runat="server" Text="Cancelar" OnClick="cancelarms_Click" />
                                <a id="fecharts" href="#">Voltar</a></td>

                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
