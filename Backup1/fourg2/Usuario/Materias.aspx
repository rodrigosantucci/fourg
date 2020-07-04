<%@ Page Title="FourG - Início" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Materias.aspx.cs" Inherits="WebApplication1.Usuario.Materias" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <div class="container" style="padding-right: 350px;">
            <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h2>Matérias </h2>
							</header>
                
            </asp:Label>
<span>
    <asp:Label ID="Label2" runat="server" Text="Nova Matéria"></asp:Label>
    <asp:TextBox ID="materia" placeholder="Matéria" runat="server"></asp:TextBox>
    <asp:TextBox ID="cargah" placeholder="Carga Horária" runat="server"></asp:TextBox>
    <asp:TextBox ID="professor" placeholder="Professor" runat="server"></asp:TextBox>
    <asp:Button ID="insertmateria" runat="server" Text="Inserir Matéria" OnClick="insertmateria_Click" /></span>

                            <asp:GridView ID="ClienteGridView" runat="server" AutoGenerateColumns="False"
    DataKeyNames="idmateria" onrowcancelingedit="ClienteGridView_RowCancelingEdit" 
            onrowdatabound="ClienteGridView_RowDataBound" 
            onrowdeleting="ClienteGridView_RowDeleting" 
            onrowediting="ClienteGridView_RowEditing" onrowupdating="ClienteGridView_RowUpdating" 
 CssClass=" table table-hover" EditRowStyle-CssClass="centered" EditRowStyle-HorizontalAlign="Center">
       
                                <AlternatingRowStyle HorizontalAlign="Center" />
       
    <Columns>
    <asp:TemplateField HeaderText="Cod.">
    <ItemTemplate>    <%#Container.DataItemIndex+1 %>    </ItemTemplate>
        <HeaderStyle Font-Bold="True" />
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Disciplina">
    <ItemTemplate>    <%#Eval("nome") %>    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtnome" runat="server" Text='<%#Eval("nome") %>'></asp:TextBox>
    </EditItemTemplate>
        <HeaderStyle Font-Bold="True" />
    </asp:TemplateField>    
     <asp:TemplateField HeaderText="Carga Horária (H)">
    <ItemTemplate>    <%#Eval("carga_horaria") %>    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtendereco" runat="server" Text='<%#Eval("carga_horaria") %>'></asp:TextBox>
    </EditItemTemplate>
         <HeaderStyle Font-Bold="True" />
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Professor">
    <ItemTemplate>    <%#Eval("nome_prof") %>    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtemail" runat="server" Text='<%#Eval("nome_prof") %>'></asp:TextBox>
    </EditItemTemplate>
         <HeaderStyle Font-Bold="True" />
    </asp:TemplateField>
    <asp:CommandField ShowEditButton="true" ButtonType ="button"  HeaderText="Editar" 
            UpdateText="Atualizar" CancelText="Cancelar" DeleteText="Deletar" 
            EditText="Editar" >
        <HeaderStyle Font-Bold="True" />
        </asp:CommandField>
    <asp:CommandField ShowDeleteButton="true" ButtonType="button"  HeaderText="Deletar" 
            DeleteText="Deletar"  >  
        <HeaderStyle Font-Bold="True" />
        </asp:CommandField>
    </Columns>

<EditRowStyle HorizontalAlign="Center" CssClass="centered"></EditRowStyle>
                                <RowStyle HorizontalAlign="Center" />
    </asp:GridView>
                            
						</div>
					</div>
</asp:Content>
