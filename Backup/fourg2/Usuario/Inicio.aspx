<%@ Page Title="FourG - Início" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebApplication1.Usuario.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Intro -->
    <div id="conteudo">
        <div class="main">
            <div class="titulo">
                <asp:Label ID="Label1" allign="center" runat="server" Text="Label">	<header>
								<h1>Frequência.</h1>
							</header></asp:Label>
            </div>
            <div class="inserirfreq">
                <asp:DropDownList ID="ddMaterias" class="dropdowninicio" runat="server" load="”ddMaterias_Load”">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="ddMaterias"></asp:RequiredFieldValidator>
                <div class="input-group">
                    <span class="input-group-addon">
                        <img src="../images/calendar.png" />
                    </span>
                    <asp:TextBox ID="inserirdata" class="textlogado" placeholder="Data" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="inserirdata"></asp:RequiredFieldValidator>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <img src="../images/clock.png" />
                    </span>
                    <asp:TextBox ID="inserirhoras" class="textlogado" placeholder="Horas" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="inserirhoras"></asp:RequiredFieldValidator>
                </div>
                <asp:Button ID="inserepresenca" class="iconebutao btn btn-default" runat="server"
                    OnClick="inserepresenca_Click" />
            </div>
            <div class="dentro">
                <div id="infotabela">
                    <div id="fechador">
                        <a id="fechar" href="#">
                            <img src="../images/cancelar.png" /></a></div>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </div>
                <div class="tabelausuarios">
                    <asp:GridView ID="InicioGridView" runat="server" AutoGenerateColumns="False" 
                        CssClass=" table table-hover" style="margin: 0 auto;">
                    <Columns>
                        <asp:TemplateField HeaderText="Disciplina">
                        <ItemTemplate>
                                <%#Eval("nome") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtnomemateria" runat="server" Text='<%#Eval("m.nome") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Frêquencia">
                        <ItemTemplate>
                                <%#Eval("frequencia") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtfrequencia" runat="server" Text='<%#Eval("frequencia") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Professor(a)">
                        <ItemTemplate>
                                <%#Eval("nome_prof") %>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtnomeprofessor" runat="server" Text='<%#Eval("m.nome_prof") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:ButtonField ButtonType="Button" HeaderText="Ver Detalhes" 
                            Text="Detalhes" ControlStyle-CssClass="btn btn-default" />
                    </Columns>
                </asp:GridView>
                </div>
            </div>
        </div>
    </div>



    <script>
        $(function () {
            $("#ContentPlaceHolder1_inserirdata").datepicker({
                dateFormat: 'dd/mm/yy',
                dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'],
                dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
                dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
                monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
                monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez']
            });
        });
</script>
</asp:Content>
