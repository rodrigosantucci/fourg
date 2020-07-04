<%@ Page Title="FourG - Notificações" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Avisos.aspx.cs" Inherits="WebApplication1.Usuario.Avisos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Avisos -->
    <div id="conteudo">
        <div class="main">
            <div class="titulo">
                <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h1>Notificações.</h1>
							</header></asp:Label>
            </div>
            <div class="dentro">
                <asp:GridView ID="AvisosGridView" runat="server" AutoGenerateColumns="False"
                    CssClass="table table-hover" style="margin: 0 auto;" OnRowDataBound="AvisosGridView_DataBound">
                    <Columns>
                        <asp:BoundField DataField="nome" HeaderText="Disciplina" />
                        <asp:BoundField DataField="frequencia" HeaderText="Frequencia" DataFormatString="{0:P}" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
