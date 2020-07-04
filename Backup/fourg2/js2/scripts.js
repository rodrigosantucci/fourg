$(function () {

    $(".info").click(function () {
        $(".tabelausuarios").fadeOut(900, function () {
            $("#infotabela").slideDown(900, function () {
                $("#fechar").fadeIn();
            });
        });
    });


    $("#fechar").click(function () {
        $("#fechar").fadeOut(900, function () {
            $("#infotabela").slideUp(900, function () {
                $(".tabelausuarios").fadeIn();
            });
        });
    });



    $(".altsenha").click(function () {
        $("#tabelamc").fadeOut(900, function () {
            $("#trocadesenha").slideDown(900, function () {
                $("#fecharts").fadeIn();
            });
        });
    });


    $("#fecharts").click(function () {
        $("#fecharts").fadeOut(900, function () {
            $("#trocadesenha").slideUp(900, function () {
                $("#tabelamc").fadeIn();
            });
        });
    });

    $(".deletasenha").click(function () {
        $("#tabelamc").fadeOut(900, function () {
            $("#deletarsenha").slideDown(900, function () {
                $("#fechardeletar").fadeIn();
            });
        });
    });


    $("#fechardeletar").click(function () {
        $("#fechardeletar").fadeOut(900, function () {
            $("#deletarsenha").slideUp(900, function () {
                $("#tabelamc").fadeIn();
            });
        });
    });



});