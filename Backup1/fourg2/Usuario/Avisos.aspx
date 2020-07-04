<%@ Page Title="FourG - Avisos" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Avisos.aspx.cs" Inherits="WebApplication1.Usuario.Avisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Avisos -->
    <div id="main">
        <div class="container" style="padding-right: 350px;">
            <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h2>Notificações</h2>
							</header></asp:Label>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th align="justify" style="font-family: 'Arial Black'">
                            Disciplina
                        </th>
                        <th align="justify" style="font-family: 'Arial Black'">
                            Frequencia
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="error">
                        <td align="justify" bgcolor="White">
                            Portugues
                        </td>
                        <td align="justify" bgcolor="White">
                            50%
                        </td>
                    </tr>
                    <tr class="error">
                        <td align="justify" bgcolor="White">
                            Geografia
                        </td>
                        <td align="justify" bgcolor="White">
                            10%
                        </td>
                    </tr>
                    <tr class="error">
                        <td align="justify" bgcolor="White">
                            Historia
                        </td>
                        <td align="justify" bgcolor="White">
                            30%
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
