$(function () { 
	
	
   
   $("#abre").click(function(){
	    $("#conteudo").slideDown(1000, function() {
			$(".fechar").fadeIn();
		});
	});


	$(".fechar").click(function(){
		$(".fechar").fadeOut(1000, function() {
			$("#conteudo").slideUp(1000, function() {
				$("#tutorial").slideDown(2000, function() {
					$("#abre").fadeIn();
				});
			});
		});
	});
  
   $("#abre2").click(function(){
	    $("#conteudo2").slideDown(1000, function() {
			$(".fechar2").fadeIn();
		});
	});


	$(".fechar2").click(function(){
		$(".fechar2").fadeOut(1000, function() {
			$("#conteudo2").slideUp(1000, function() {
				$("#tutorial2").slideDown(2000, function() {
					$("#abre2").fadeIn();
				});
			});
		});
	});
  
	$("#abre3").click(function(){
	    $("#conteudo3").slideDown(1000, function() {
			$(".fechar3").fadeIn();
		});
	});


	$(".fechar3").click(function(){
		$(".fechar3").fadeOut(1000, function() {
			$("#conteudo3").slideUp(1000, function() {
				$("#tutorial3").slideDown(2000, function() {
					$("#abre3").fadeIn();
				});
			});
		});
	});
	
	$("#abre4").click(function(){
	    $("#conteudo4").slideDown(1000, function() {
			$(".fechar4").fadeIn();
		});
	});


	$(".fechar4").click(function(){
		$(".fechar4").fadeOut(1000, function() {
			$("#conteudo4").slideUp(1000, function() {
				$("#tutorial4").slideDown(2000, function() {
					$("#abre4").fadeIn();
				});
			});
		});
	});
	
	$("#abre5").click(function(){
	    $("#conteudo5").slideDown(1000, function() {
			$(".fechar5").fadeIn();
		});
	});


	$(".fechar5").click(function(){
		$(".fechar5").fadeOut(1000, function() {
			$("#conteudo5").slideUp(1000, function() {
				$("#tutorial5").slideDown(2000, function() {
					$("#abre5").fadeIn();
				});
			});
		});
	});
	
	$("#abre6").click(function(){
	    $("#conteudo6").slideDown(1000, function() {
			$(".fechar6").fadeIn();
		});
	});


	$(".fechar6").click(function(){
		$(".fechar6").fadeOut(1000, function() {
			$("#conteudo6").slideUp(1000, function() {
				$("#tutorial6").slideDown(2000, function() {
					$("#abre6").fadeIn();
				});
			});
		});
	});
	
	$("#abre7").click(function(){
	    $("#conteudo7").slideDown(1000, function() {
			$(".fechar7").fadeIn();
		});
	});


	$(".fechar7").click(function(){
		$(".fechar7").fadeOut(1000, function() {
			$("#conteudo7").slideUp(1000, function() {
				$("#tutorial7").slideDown(2000, function() {
					$("#abre2").fadeIn();
				});
			});
		});
	});
  


});