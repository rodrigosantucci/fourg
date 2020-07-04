<%@ Page Title="FourG - Início" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Config.aspx.cs" Inherits="WebApplication1.Usuario.Config" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <script>        $(function () {
            $("#ContentPlaceHolder1_celularconta").mask("(99) 99999-9999");
        });</script>

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
                                <asp:TextBox ID="nomeconta" class="textlogado2" CssClass="form-control" runat="server"
                                    MaxLength="100" Enabled="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="emailconta" class="textlogado2" CssClass="form-control" type="email"
                                    runat="server" MaxLength="100" Enabled="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Celular:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="celularconta" class="textlogado2" CssClass="form-control" runat="server"
                                    MaxLength="11" Enabled="False"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="padding-right: 150px; padding-left: 150px">
                                <asp:Button ID="alterar1" runat="server" Text="Alterar" CssClass="editaconta btn btn-default"
                                    OnClick="alterar1_Click" />
                                <asp:Button ID="salvar1" runat="server" Text="Salvar" CssClass="salvaconta btn btn-default"
                                    OnClick="salvar1_Click" />
                                <asp:Button ID="cancelar1" runat="server" Text="Cancelar" CssClass="cancelaedit btn btn-default"
                                    OnClick="cancelar1_Click" />
                                <a href="#" class="altsenha">Alterar senha?</a>
                                <a href="#" class="excconta">Excluir conta?</a></td>
                        </tr>
                    </table>





                    <table id="trocadesenha" class="minhacontatable table">
                        <tr>
                            <td>
                                <asp:Label ID="Label5" class="formatolabel" runat="server" Text="Senha atual:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="senhaatual" class="textlogado2" CssClass="form-control" placeholder="Insira sua senha atual." runat="server" TextMode="Password"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" class="formatolabel" runat="server" Text="Nova senha:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="novasenha" class="textlogado2" placeholder="Digite uma nova senha." CssClass="form-control" runat="server" MaxLength="12" Enabled="True" TextMode="Password"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label7" class="formatolabel" runat="server" Text="Confirmação de Senha:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="confirmacaosenha" class="textlogado2" placeholder="Digite a confirmação de senha." CssClass="form-control" runat="server" Enabled="True" TextMode="Password"></asp:TextBox></td>

                            <td style="padding-left: 25px">
                                <asp:CompareValidator ID="meupai" runat="server" ErrorMessage="*Senhas divergentes."
                                    ForeColor="Red" ControlToCompare="novasenha" ControlToValidate="confirmacaosenha"
                                    Enabled="True" Font-Size="Small"></asp:CompareValidator></td>
                        </tr>
                        <tr>
                            <td colspan="3" style="padding-right: 225px; padding-left: 225px">
                                <asp:Button ID="salvarms" CssClass="salvaconta btn btn-default" runat="server" Text="Salvar" OnClick="salvarms_Click" />
                                <asp:Button ID="cancelarms" CssClass="cancelaedit btn btn-default" runat="server" Text="Cancelar" OnClick="cancelarms_Click" />
                                <a id="fecharts" href="#">Voltar</a></td>

                        </tr>
                    </table>


                    <div id="excluiconta">

                    <table  class="minhacontatable table">
                        <tr>
                            <td>
                                <asp:Label ID="Label8" class="formatolabel" runat="server" Text="Senha atual:"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="exclui" class="textlogado2" CssClass="form-control" placeholder="Insira sua senha atual." runat="server" TextMode="Password"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td colspan="3" style="padding-right: 225px; padding-left: 225px">
                                <asp:Button ID="Button1" CssClass="salvaconta btn btn-default" runat="server" Text="Excluir" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" CssClass="editaconta btn btn-default" runat="server" Text="Voltar" />
                                
                        </tr>
                    </table>
</div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
