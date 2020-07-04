<%@ Page Title="FourG" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="fourg2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="all">
        <section id="one">
            <div class="jumbotron">
                    <img style="height: 300px; width: 950px; display: block; position:absolute;" src="images/logofourg.jpg">
            </div>
        </section>
        <section id="two">
            <div class="ladoum">
          
                    <div class="col-md-4" style="width: 600px;">
                        <div></div>
                        <form id="Form1" class="form-horizontal" runat="server" role="form">
                            <h2 style="margin-bottom: 10px;">Entrar.</h2>
                            <div class="form-group">

                                <div class="col-sm-10">
                                    <asp:TextBox ID="Username1" runat="server" type="email" class="form-control" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">

                                <div class="col-sm-10">
                                    <asp:TextBox ID="Password1" runat="server" type="password" class="form-control"
                                        placeholder="Senha" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10" style="margin-left: 0px;">
                                    <asp:Button ID="Button1" runat="server" Text="Entrar" class="btn btn-default" Style="width: 200px; margin-right: 10px; height: 36px;" OnClick="Button1_Click" />
                                    <label style="margin-right: 5px;">
                                        <asp:CheckBox ID="RememberMe" runat="server" />
                                        Lembrar-me
                                    </label>
                                    <a href="#">Esqueceu sua senha?</a>
                                </div>
                            </div>
                        </form>
                    </div>
             
            </div>
            <div class="ladodois">
                <blockquote style="padding-top: 95px;">
                    <p>O insucesso é apenas uma oportunidade para recomeçar de novo com mais inteligência.</p>
                    <footer>Henry Ford</footer>
                </blockquote>
            </div>
        </section>
        <section id="three">
            <div class="page-header">
                <h1 style="margin-top:100px;">Fique Ligado</h1>
            </div>


            <div class="row">

                <div class="col-sm-6 col-md-6">
                    <div class="thumbnail">
                        <img src="images/seeduc.jpg" alt="100%x200" data-holder-rendered="true" style="height: 175px; width: 100%; display: block;">
                        <div class="caption">
                            <h3>Boletim Online</h3>
                            <p style="height: 60px;">Boletim oficial online para estudantes da rede do estado do RJ.</p>
                            <p><a href="http://alunoonline.educacao.rj.gov.br/alunoonline/Seguranca/Identificacao.aspx?ReturnUrl=%2fAlunoOnline%2fdefault.aspx" class="btn btn-primary" role="button">Mais</a> </p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-6">
                    <div class="thumbnail">
                        <img src="images/ciee.png" alt="100%x200" data-holder-rendered="true" style="height: 175px; width: 100%; display: block;">
                        <div class="caption">
                            <h3>CIEE</h3>
                            <p style="height: 60px;">Promove estágios e cursos profissionalizantes.</p>
                            <p><a href="http://www.ciee.org.br/portal/index.asp" class="btn btn-primary" role="button">Mais</a> </p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-6">
                    <div class="thumbnail">
                        <img src="images/descomplica.jpg" alt="100%x200" data-holder-rendered="true" style="height: 175px; width: 100%; display: block;">
                        <div class="caption">
                            <h3>Descomplica</h3>
                            <p style="height: 60px;">Conteúdo didático escolar em video aulas gratuitas.</p>
                            <p><a href="http://descomplica.com.br/" class="btn btn-primary" role="button">Mais</a></p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-6">
                    <div class="thumbnail">
                        <img src="images/pronatec.jpg" alt="100%x200" data-holder-rendered="true" style="height: 175px; width: 100%; display: block;">
                        <div class="caption">
                            <h3>Pronatec</h3>
                            <p style="height: 60px;">Disponibiliza cursos profissionalizantes gratuitamente.</p>
                            <p><a href="http://pronatec.mec.gov.br/" class="btn btn-primary" role="button">Mais</a></p>
                        </div>
                    </div>
                </div>

            </div>

        </section>
			<div id="footer">
			
				
					<ul class="actions">
						<li><a href="#" class="fa fa-twitter solo"><span>Twitter</span></a></li>
						<li><a href="#" class="fa fa-facebook solo"><span>Facebook</span></a></li>

					</ul>

				<!-- Menu -->
					<ul class="menu">
						<li>&copy; 2014 @ FourG - Todos os direitos reservados</li>
						<li>Design: <a>Grupo 4</a></li>
					</ul>
			
			</div>
</asp:Content>
