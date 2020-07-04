<%@ Page Title="FourG - Anotações" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Anotacao.aspx.cs" Inherits="fourg2.Usuario.Anotacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="conteudo">
        <div class="main">
            <div class="titulo">
                <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h1>Anotações. </h1>
							</header>
                </asp:Label>
            </div>
            <div class="inseriranota">
                <div class="input-group">
                    <span class="input-group-addon">
                        <img src="../images/assunto.png" />
                    </span>
                    <asp:TextBox ID="assunto" class="textlogado" placeholder="Assunto" runat="server"></asp:TextBox>

                </div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <img src="../images/anota.png" />
                    </span>
                    <asp:TextBox ID="anota" class="textlogado" placeholder="Anotação" runat="server" Style="width: 400px;"></asp:TextBox>

                </div>
                <asp:Button ID="btnAnotacao" class="iconebutao btn btn-default" runat="server" Text="Inserir Anotação"
                    src="fa-play" OnClick="InserirAnotacao_Click" />
            </div>
            <div class="dentro">
                <asp:GridView ID="AnotacaoGridView" runat="server" AutoGenerateColumns="False"
                    DataKeyNames="idanotacao"
                    OnRowCancelingEdit="AnotacaoGridView_RowCancelingEdit"
                    OnRowDeleting="AnotacaoGridView_RowDeleting"
                    OnRowEditing="AnotacaoGridView_RowEditing"
                    OnRowUpdating="AnotacaoGridView_RowUpdating" CssClass="table table-hover" style="margin: 0 auto;">
                    <Columns>
                        <asp:TemplateField HeaderText="Cod.">
                            <ItemTemplate>
                                <%#Container.DataItemIndex+1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Assunto">
                            <ItemTemplate>
                                <%#Eval("nome") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtassunto" runat="server" Text='<%#Eval("nome") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Anotação">
                            <ItemTemplate>
                                <%#Eval("conteudo") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtconteudo" runat="server" Text='<%#Eval("conteudo") %>'></asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="true" ButtonType="Button"
                            HeaderText="Editar" ControlStyle-CssClass="btn btn-default" />
                        <asp:CommandField ShowDeleteButton="true" ButtonType="Button"
                            HeaderText="Deletar" ControlStyle-CssClass="btn btn-default"/>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
