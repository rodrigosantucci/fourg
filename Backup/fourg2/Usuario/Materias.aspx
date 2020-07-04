<%@ Page Title="FourG - Início" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Materias.aspx.cs" Inherits="WebApplication1.Usuario.Materias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="conteudo">
        <div class="main">
            <div class="titulo">
                <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h1>Matérias.</h1>
							</header>                
                </asp:Label>
            </div>
            <div class="inserirmat">

                <div class="input-group">
                    <span class="input-group-addon">
                        <img src="../images/livro.png" />
                    </span>
                    <asp:TextBox ID="materia" class="textlogado" placeholder="Matéria" runat="server"></asp:TextBox>

                </div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <img src="../images/clock.png" />
                    </span>
                    <asp:TextBox ID="cargah" class="textlogado" placeholder="Carga Horária" runat="server"></asp:TextBox>

                </div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <img src="../images/professor.png" />
                    </span>
                    <asp:TextBox ID="professor" class="textlogado" placeholder="Professor" runat="server"></asp:TextBox>

                </div>
                <asp:Button ID="insertmateria" class="iconebutao btn btn-default" runat="server"
                    OnClick="insertmateria_Click" />
            </div>
            <div class="dentro">
                <asp:GridView ID="MateriasGridView" runat="server" AutoGenerateColumns="False"
                    DataKeyNames="idmateria"
                    CssClass=" table table-hover"
                    OnRowCancelingEdit="MateriasGridView_RowCancelingEdit"
                    OnRowDeleting="MateriasGridView_RowDeleting"
                    OnRowEditing="MateriasGridView_RowEditing"
                    OnRowUpdating="MateriasGridView_RowUpdating" style="margin: 0 auto;">
                    <Columns>
                        <asp:TemplateField HeaderText="Cod.">
                            <ItemTemplate>
                                <%#Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Disciplina">
                            <ItemTemplate>
                                <%#Eval("nome") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtmateria" runat="server" Text='<%#Eval("nome") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Carga Horária">
                            <ItemTemplate>
                                <%#Eval("carga_horaria") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtcargah" runat="server" Text='<%#Eval("carga_horaria") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Professor(a)">
                            <ItemTemplate>
                                <%#Eval("nome_prof") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtprofessor" runat="server" Text='<%#Eval("nome_prof") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Button" CancelText="Cancelar"
                            DeleteText="Deletar" EditText="Editar" HeaderText="Editar"
                            ShowEditButton="True" UpdateText="Atualizar" ControlStyle-CssClass="btn btn-default">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                        <asp:CommandField ButtonType="Button" CancelText="Cancelar"
                            DeleteText="Deletar" EditText="Editar" HeaderText="Deletar"
                            ShowDeleteButton="True" UpdateText="Atualizar" ControlStyle-CssClass="btn btn-default">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
