<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/Site2.Master" AutoEventWireup="true" CodeBehind="Relatorios.aspx.cs" Inherits="fourg2.Administrador.Relatorios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div id="conteudo">
        <div class="main">
            <div class="titulo">
            <h1>Relatório de Cadastros.</h1>
            </div>



                        <div class="dentro" id="scroll">
                <asp:GridView ID="UsuarioGridView" runat="server" AutoGenerateColumns="False" 
                    CssClass=" table table-hover" EditRowStyle-CssClass="centered"
                    EditRowStyle-HorizontalAlign="Center" style="margin: 0 auto;">
                    <AlternatingRowStyle HorizontalAlign="Center" />
                    <Columns>
                        <asp:TemplateField HeaderText="Nome">
                            <ItemTemplate>
                                <%#Eval("nomecompleto") %>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <%#Eval("email") %>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Celular">
                            <ItemTemplate>
                                <%#Eval("celular") %>
                            </ItemTemplate>
                            <HeaderStyle Font-Bold="True" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle HorizontalAlign="Center" CssClass="centered"></EditRowStyle>
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>
            </div>


        </div>
    </div>

</asp:Content>
