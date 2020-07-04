<%@ Page Title="Guia de Ajuda" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Guia.aspx.cs" Inherits="fourg2.Guia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div id="allguia">
        <h2 style="margin: 20px auto; width: 300px;">Tutorial.</h2>
        <ul class="nav nav-pills nav-stacked">
            <li id="tutorial" role="presentation"><a id="abre" href="#">Cadastrando</a>
                <section id="conteudo">
                    <div class="fechabrasil" style="z-index:50;">
                        <a class="fechar" href="#">
                            <img src="images/cancelar.png" /></a>
                    </div>

                    <div class="rowzao" style="margin: 0 auto; position:relative; width: 1000px;">
                        <header id="myCarousel" style="width: 999px; margin: 0 auto; height: 450px;" class="carousel slide">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for Slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <!-- Set the first background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/cad1.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Passo 1</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the second background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/cad2.png');"></div>
                                    <div class="carousel-caption">
                                        <h3>Passo 2</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the third background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/cad3.png');"></div>
                                    <div class="carousel-caption">
                                        <h3>Passo 3</h3>
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
                    </div>

                </section>
            </li>
            <li id="tutorial2" role="presentation"><a id="abre2" href="#">Fazendo Login</a>
                <section id="conteudo2">
                      <div class="fechabrasil" style="z-index:50;">
                        <a class="fechar2" href="#">
                            <img src="images/cancelar.png" /></a>
                    </div>

                    <div class="rowzao" style="margin: 0 auto; position:relative; width: 1000px;">
                        <header id="Header1" style="width: 999px; margin: 0 auto; height: 450px;" class="carousel slide">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Header1" data-slide-to="0" class="active"></li>
                                <li data-target="#Header1" data-slide-to="1"></li>
                                <li data-target="#Header1" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for Slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <!-- Set the first background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/login.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Passo 1</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the second background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/login2.png');"></div>
                                    <div class="carousel-caption">
                                        <h3>Passo 2</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the third background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/login3.png');"></div>
                                    <div class="carousel-caption">
                                        <h3>Passo 3</h3>
                                    </div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#Header1" data-slide="prev">
                                <span class="icon-prev"></span>
                            </a>
                            <a class="right carousel-control" href="#Header1" data-slide="next">
                                <span class="icon-next"></span>
                            </a>

                        </header>
                    </div>
                </section>
            </li>
            <li id="tutorial3" role="presentation"><a id="abre3" href="#">Inserindo Matérias e Anotações</a>
                <section id="conteudo3">
                    <div class="fechabrasil" style="z-index:50;">
                        <a class="fechar3" href="#">
                            <img src="images/cancelar.png" /></a>
                    </div>

                    <div class="rowzao" style="margin: 0 auto; position:relative; width: 1000px;">
                        <header id="Header2" style="width: 999px; margin: 0 auto; height: 450px;" class="carousel slide">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Header2" data-slide-to="0" class="active"></li>
                                <li data-target="#Header2" data-slide-to="1"></li>
                            </ol>

                            <!-- Wrapper for Slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <!-- Set the first background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/cadastrarmateria.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Cadastrando matéria</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the second background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/anota.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>criando anotações</h3>
                                    </div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#Header2" data-slide="prev">
                                <span class="icon-prev"></span>
                            </a>
                            <a class="right carousel-control" href="#Header2" data-slide="next">
                                <span class="icon-next"></span>
                            </a>

                        </header>
                    </div>
                </section>
            </li>
            <li id="tutorial4" role="presentation"><a id="abre4" href="#">Inserindo presença na materia desejada e verificando detalhes.</a>
                <section id="conteudo4">
                   <div class="fechabrasil" style="z-index:50;">
                        <a class="fechar4" href="#">
                            <img src="images/cancelar.png" /></a>
                    </div>

                    <div class="rowzao" style="margin: 0 auto; position:relative; width: 1000px;">
                        <header id="Header3" style="width: 999px; margin: 0 auto; height: 450px;" class="carousel slide">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Header3" data-slide-to="0" class="active"></li>
                                <li data-target="#Header3" data-slide-to="1"></li>
                            </ol>

                            <!-- Wrapper for Slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <!-- Set the first background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/inicio.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Inserindo presença</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the second background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/detalhes.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Verificando detalhes</h3>
                                    </div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#Header3" data-slide="prev">
                                <span class="icon-prev"></span>
                            </a>
                            <a class="right carousel-control" href="#Header3" data-slide="next">
                                <span class="icon-next"></span>
                            </a>

                        </header>
                    </div>
                </section>
            </li>
            <li id="tutorial5" role="presentation"><a id="abre5" href="#">Excluindo, editando e Atualizando Matéria</a>
                <section id="conteudo5">
                   <div class="fechabrasil" style="z-index:50;">
                        <a class="fechar5" href="#">
                            <img src="images/cancelar.png" /></a>
                    </div>

                    <div class="rowzao" style="margin: 0 auto; position:relative; width: 1000px;">
                        <header id="Header4" style="width: 999px; margin: 0 auto; height: 450px;" class="carousel slide">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Header4" data-slide-to="0" class="active"></li>
                                <li data-target="#Header4" data-slide-to="1"></li>
                                <li data-target="#Header4" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for Slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <!-- Set the first background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/editarmateria.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Editando e Atualizando Matéria</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the second background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/deletarmat.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Deletar materia</h3>
                                    </div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#Header4" data-slide="prev">
                                <span class="icon-prev"></span>
                            </a>
                            <a class="right carousel-control" href="#Header4" data-slide="next">
                                <span class="icon-next"></span>
                            </a>

                        </header>
                    </div>
                </section>
            </li>
            <li id="tutorial6" role="presentation"><a id="abre6" href="#">Identificando avisos.</a>
                <section id="conteudo6">
                    <div class="fechabrasil" style="z-index:50;">
                        <a class="fechar6" href="#">
                            <img src="images/cancelar.png" /></a>
                    </div>

                    <div class="rowzao" style="margin: 0 auto; position:relative; width: 1000px;">
                        <header id="Header5" style="width: 999px; margin: 0 auto; height: 450px;" class="carousel slide">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Header5" data-slide-to="0" class="active"></li>
                                <li data-target="#Header5" data-slide-to="1"></li>
                                <li data-target="#Header5" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for Slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <!-- Set the first background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/notificacoes.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Avisos</h3>
                                    </div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#Header5" data-slide="prev">
                                <span class="icon-prev"></span>
                            </a>
                            <a class="right carousel-control" href="#Header5" data-slide="next">
                                <span class="icon-next"></span>
                            </a>

                        </header>
                    </div>
                </section>
            </li>
            <li id="tutorial7" role="presentation"><a id="abre7" href="#">Atualizando dados da conta.</a>
                <section id="conteudo7">
                    <div class="fechabrasil" style="z-index:50;">
                        <a class="fechar7" href="#">
                            <img src="images/cancelar.png" /></a>
                    </div>

                    <div class="rowzao" style="margin: 0 auto; position:relative; width: 1000px;">
                        <header id="Header6" style="width: 999px; margin: 0 auto; height: 450px;" class="carousel slide">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#Header6" data-slide-to="0" class="active"></li>
                                <li data-target="#Header6" data-slide-to="1"></li>
                                <li data-target="#Header6" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for Slides -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <!-- Set the first background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/configdados.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Atualizando dados</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the second background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/config.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Atualizando senha</h3>
                                    </div>
                                </div>
                                <div class="item">
                                    <!-- Set the third background image using inline CSS below. -->
                                    <div class="fill" style="background-image: url('Guia/deletarconta.jpg');"></div>
                                    <div class="carousel-caption">
                                        <h3>Deletando conta</h3>
                                    </div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#Header6" data-slide="prev">
                                <span class="icon-prev"></span>
                            </a>
                            <a class="right carousel-control" href="#Header6" data-slide="next">
                                <span class="icon-next"></span>
                            </a>

                        </header>
                    </div>
                </section>
            </li>
        </ul>
        <div class="footerguia">
            <p class="linkparacadastrar">
                Ainda com duvidas? mande-nos um <a href="contato.aspx">Email.</a>
            </p>
            <p class="linkparaajuda">
                Ja sabe como funciona? Faça seu <a href="login.aspx">Login</a>
            </p>
        </div>
    </div>
</asp:Content>
