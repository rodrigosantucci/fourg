<%@ Page Title="FourG - Início" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Config.aspx.cs" Inherits="WebApplication1.Usuario.Config" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <div class="container" style="padding-right: 350px;">
            <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h2>Minha Conta</h2>
							</header></asp:Label>

            <table class="table table-responsive">
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Sexo"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Telefone"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    <td></td>
                </tr>

                <tr>
                    <td> <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label></td>
                    <td> <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                    <td></td>
                </tr>

                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Senha"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
                    <td><a>Alterar senha?</a></td>
                </tr>
            </table>
            
            
            






        </div>
    </div>
</asp:Content>
