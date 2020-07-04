<%@ Page Title="FourG - Início" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebApplication1.Usuario.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Intro -->
    <div id="main">
        <div class="container" style="padding-right: 350px;">
            <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h2>Início</h2>
							</header></asp:Label>
            <p>
                <table border="1" class=" table table-hover" 
                    style="padding: inherit; margin: auto" align="center">
                    <tr align="justify">
                        <th style="font-family: 'Arial Black'">Disciplina
                            
                        </th>
                        <th style="font-family: 'Arial Black'">Carga Horária
                            
                        </th>
                        <th bgcolor="White" style="font-family: 'Arial Black'">Presença(H)
                            
                        </th>
                        <th style="font-family: 'Arial Black'">Frequencia
                            
                        </th>
                    </tr>
                    </thead><tbody><tr align="justify">
                        <td>
                            Portugues
                        </td>
                        <td>
                            20
                        </td>
                        <td>
                            14
                        </td>
                        <td>
                            50%
                        </td>
                    </tr>
                        <tr align="justify">
                            <td>
                                Matematica
                            </td>
                            <td>
                                20
                            </td>
                            <td>
                               10 
                            </td>
                            <td>
                                70%
                            </td>
                        </tr>
                        <tr align="justify">
                            <td>
                                Geografia
                            </td>
                            <td>
                                25
                            </td>
                            <td>
                                20
                            </td>
                            <td>
                                10%
                            </td>
                        </tr>
                        <tr align="justify">
                            <td>
                                Historia
                            </td>
                            <td>
                                25
                            </td>
                            <td>
                                20
                            </td>
                            <td>
                                30%
                            </td>
                        </tr>
                        <tr align="justify">
                            <td>
                                Biologia
                            </td>
                            <td>
                                25
                            </td>
                            <td>
                                17
                            </td>
                            <td>
                                85%
                            </td>
                        </tr>
                </table>
            </p>
        </div>
    </div>
</asp:Content>
