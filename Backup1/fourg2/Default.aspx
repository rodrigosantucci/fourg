<%@ Page Title="FourG" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="fourg2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">



    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image: url('http://msalx.revistaescola.abril.com.br/2014/09/22/1525/LfC4j/primeiro-ministro-da-escocia-alex-salmond-renuncia-ao-cargo-apos-resultado-do-plebiscito-sobre-independencia-foto-scottish-government-201409190006.jpeg?1411866711769');"></div>
                <div class="carousel-caption">
                    <p>
                        <a style="color: #fff!important;" href="Guia.aspx" target="_blank">

                            <br>
                            Entenda o funcionamento do <strong>FourG</strong>, e saiba como ele poderá te ajudar na sua vida escolar.
                        </a>
                    </p>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('http://msalx.revistaescola.abril.com.br/2014/09/22/1525/LfC4j/primeiro-ministro-da-escocia-alex-salmond-renuncia-ao-cargo-apos-resultado-do-plebiscito-sobre-independencia-foto-scottish-government-201409190006.jpeg?1411866711769');"></div>
                <div class="carousel-caption">
                    <p>
                        <a style="color: #fff!important;" href="http://revistaescola.abril.com.br/ensino-medio/cinco-perguntas-respostas-independencia-escocia-801597.shtml" target="_blank">
                            <strong>História | 5 perguntas sobre a independência da Escócia</strong>
                            <br>
                            Entenda o que o plebiscito representa para o país e para o contexto internacional
                        </a>
                    </p>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('http://msalx.revistaescola.abril.com.br/2014/09/15/1958/LfC4j/drogas-sanatorio-bicho-sete-cabecas-rodrigo-santoro.jpeg');"></div>
                <div class="carousel-caption">
                    <p>
                        <a style="color: #fff!important;" href="/ensino-medio/prezi-apresentacao-drogas-como-lidar-esse-problema-800154.shtml" target="_blank">
                            <strong>Sociologia | Drogas: como lidar com esse problema?</strong>
                            <br>
                            Entenda algumas das correntes usadas no tratamento dos usuários de drogas
                        </a>
                    </p>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image: url('http://msalx.revistaescola.abril.com.br/2014/02/17/1556/LfC4j/ditadura-militar-no-brasil-historia-especial.jpeg');"></div>
                <div class="carousel-caption">
                    <p>
                        <a style="color: #fff!important;" href="/ditadura-militar/" target="_blank">
                            <strong>História | Ditadura militar no Brasil</strong>
                            <br>
                            Especial multimídia mostra como trabalhar ditadura em sala de aula
                        </a>
                    </p>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->

        <div class="row">

            <div class="col-md-4" style="width: 750px;">
                <div></div>
                <form class="form-horizontal" runat="server" role="form">
                    <h2>Entrar.</h2>
                    <div class="form-group">

                        <div class="col-sm-10">
                            <asp:TextBox ID="Username1" runat="server" type="email" class="form-control" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">

                        <div class="col-sm-10">
                            <asp:TextBox ID="Password1" runat="server" type="password" class="form-control" placeholder="Senha"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10" style="margin-left: 0px;">
                            <asp:Button ID="Button1" runat="server" Text="Entrar" class="btn btn-default" Style="width: 250px; margin-right: 10px;" OnClick="Button1_Click" />
                            <label style="margin-right: 5px;">
                                <asp:CheckBox ID="RememberMe" runat="server" />
                                Lembrar-me
                            </label>
                            <a href="#">Esqueceu sua senha?</a>
                        </div>
                    </div>
                </form>
            </div>

            <div class="col-md-4">
                <div class="panel panel-default">
                    <!-- Default panel contents -->
                    <div class="panel-heading">Fique Ligado</div>


                    <!-- List group -->
                    <ul class="list-group">
                        <li class="list-group-item"><a href="http://alunoonline.educacao.rj.gov.br/alunoonline/Seguranca/Identificacao.aspx?ReturnUrl=%2fAlunoOnline%2fdefault.aspx">Boletim Online SEEDUC</a></li>
                        <li class="list-group-item"><a href="http://www.concursosnobrasil.com.br/">Concursos Públicos</a></li>
                        <li class="list-group-item"><a href="http://www.vestibulandoweb.com.br/">VestibulandoWeb</a></li>
                        <li class="list-group-item"><a href="http://pronatec.mec.gov.br/">PRONATEC</a></li>
                        <li class="list-group-item"><a href="http://www.ciee.org.br/portal/index.asp">CIEE</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <script>
            $('.carousel').carousel({
                interval: 5000 //changes the speed
            })
        </script>
</asp:Content>
