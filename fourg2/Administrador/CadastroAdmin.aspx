<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Site2.Master" AutoEventWireup="true" CodeBehind="CadastroAdmin.aspx.cs" Inherits="fourg2.Administrador.CadastroAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 65px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="conteudo">
        <div class="main">

            <div class="titulo">
                <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h1>Cadastrar Administrador</h1>
							</header></asp:Label>
            </div>

            <div class="dentro">

                <table id="cadadmin" class="table table-hover" style="border: 0; margin: 0 auto; width: 650px; text-align: center;">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Nome:"></asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtnomeadm" class="textlogado" runat="server" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator  ForeColor="Red" ID="RequiredFieldValidator1"  runat="server" ErrorMessage="*" ControlToValidate="txtnomeadm"></asp:RequiredFieldValidator></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtemailadm" class="textlogado" runat="server" MaxLength="100"></asp:TextBox>
                            <asp:RequiredFieldValidator  ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtemailadm"></asp:RequiredFieldValidator></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Senha:"></asp:Label></td>
                        <td colspan="2">
                            <asp:TextBox ID="txtsenhaadm" class="textlogado" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator  ForeColor="Red" ID="RequiredFieldValidator3"  runat="server" ErrorMessage="*" ControlToValidate="txtsenhaadm"></asp:RequiredFieldValidator></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="auto-style2" >
                            <asp:Label ID="Label5" runat="server" Text="C.Senha:"></asp:Label></td>
                        <td class="auto-style2" colspan="2">
                            <asp:TextBox ID="txtconfsenhaadm" class="textlogado" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator  ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtconfsenhaadm"></asp:RequiredFieldValidator></td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator1" ForeColor="Red" runat="server" class="validator" ErrorMessage="Senhas divergentes" ControlToCompare="txtsenhaadm" ControlToValidate="txtconfsenhaadm"></asp:CompareValidator></td>
                    </tr>
                    <tr>
                        <td colspan="3" style="text-align: center;">
                            <asp:Button ID="Button1" runat="server" CssClass="botaocadastraradmin" Text="Cadastrar" OnClick="Button1_Click" />
                            <td></td>
                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
</asp:Content>
