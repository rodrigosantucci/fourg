<%@ Page Title="FourG - Início" Language="C#" MasterPageFile="~/Usuario/Site1.Master"
    AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebApplication1.Usuario.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Intro -->
    <div id="conteudo">
        <div class="main">
            <div class="titulo">
                <asp:Label ID="Label1" allign="center" runat="server" Text="Label"> <header>
								<h1>Frequência.</h1></header></asp:Label>
            </div>
            <div class="inserirfreq">
                <asp:DropDownList ID="ddMaterias" class="dropdowninicio" runat="server" load="”ddMaterias_Load”">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                     ForeColor="Red" ControlToValidate="ddMaterias"></asp:RequiredFieldValidator>
                <div class="input-group">
                    <span class="input-group-addon">
                        <img src="../images/calendar.png" />
                    </span>
                    <asp:TextBox ID="inserirdata" class="textlogado" placeholder="Data" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                        ForeColor="Red"  ControlToValidate="inserirdata"></asp:RequiredFieldValidator>
                </div>
                <div class="input-group">
                    <span class="input-group-addon">
                        <img src="../images/clock.png" />
                    </span>
                    <asp:TextBox ID="inserirhoras" style="width: 180px;" class="textlogado" placeholder="Horas Assistidas" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
                        ForeColor="Red" ControlToValidate="inserirhoras"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ForeColor="Red" ErrorMessage="*" MaximumValue="99" MinimumValue="1" ControlToValidate="inserirhoras" Type="Integer"></asp:RangeValidator>
                </div>
                <asp:Button ID="inserepresenca" class="iconebutao btn btn-default" runat="server"
                    OnClick="inserepresenca_Click" />
            </div>
            <div style="font-size:12px; color:red; width:400px; margin:0 auto;"><p>Obs: O campo HORAS somente deverá ser preenchido com um valor inteiro.</p></div>
            <div class="dentro">
                <div class="detalhes">
                    <div id="fechador">
                        <a id="fechar" href="#">
                            <img src="../images/cancelar.png" />
                        </a>
                    </div>
                    <asp:GridView ID="DetalhesGridView" runat="server" CssClass=" table table-hover"
                        AutoGenerateColumns="False" Style="margin: 0 auto; overflow: scroll;">
                        <Columns>
                            <asp:BoundField DataField="nome" HeaderText="Disciplina" />
                            <asp:BoundField DataField="data" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Data" />
                            <asp:BoundField DataField="horas" HeaderText="Horas Assistidas" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div class="tabelausuarios">
                    <asp:GridView ID="InicioGridView" runat="server" AutoGenerateColumns="False" CssClass=" table table-hover"
                        Style="margin: 0 auto;">
                        <Columns>
                            <asp:BoundField DataField="nome" HeaderText="Disciplina" />
                            <asp:BoundField DataField="frequencia" HeaderText="Frequência" DataFormatString="{0:p}" />
                            <asp:BoundField DataField="nome_prof" HeaderText="Professor(a)" />
                        </Columns>
                    </asp:GridView>
                    <div style="width:436px; margin:0 auto;">
                    <a id="vDetalhes"  style="width:410px;" class="btn btn-default">Ver Detalhes</a>
                  </div>
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
