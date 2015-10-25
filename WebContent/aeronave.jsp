<%@page import="com.airlines.beans.Aeronave"%>
<%@page import="com.airlines.TO.AeronaveTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Aeronave</title>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="css/styleLogin.css">
<link rel="stylesheet" href="css/normalizeLogin.css"> -->

<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script> 
<script type="text/javascript" src="js/Myriad_Pro_italic_600.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_italic_400.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<!--[if lt IE 9]>
	<script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script>
	<script type="text/javascript" src="js/html5.js"></script>
<![endif]-->
</head>
<body id="page1">

<% 
 	Aeronave aeronave = null;
	if(request.getAttribute("aeronaves") != null){
		AeronaveTO a = (AeronaveTO)request.getAttribute("aeronaves"); 
		if(a.getAeronaves().size() > 0){
			aeronave = a.getAeronaves().get(0);	
		}
		else{
			aeronave = new Aeronave();
			aeronave.setModelo("");
			aeronave.setCodigo(0);
			aeronave.setNome("");
			aeronave.setQtPassageiros(0);
			aeronave.setTipo("");
		}
		
	}
	else
	{
		aeronave = new Aeronave();
		aeronave.setModelo("");
		aeronave.setCodigo(0);
		aeronave.setNome("");
		aeronave.setQtPassageiros(0);
		aeronave.setTipo("");
	}
%>
<div class="body1">
	<div class="main">
<!-- header -->
		<header>
			<div class="wrapper">
				<h1>
					<a href="index.html" id="logo">Air Sheeeeep</a><span id="slogan">Viagens Internacionais</span>
				</h1>
				<div class="right">
					<nav>
						<ul id="menu2">
							<li><a href="indexLogin.html">Fazer Login</a></li>
							<li><a href="indexLogin.html">Não tem Cadastro? Cadastre-se</a></li>
						</ul>
						<ul id="top_nav">
							<li><a href="index.html"><img src="images/img1.gif" alt=""></a></li>
							<li><a href="index-4.html"><img src="images/img2.gif" alt=""></a></li>
						</ul>
					</nav>
					<nav>
						<ul id="menu">
							<li id="menu_active"><a href="index.html">Home</a></li>
							<li><a href="index-1.html">Viadagens</a></li>
							<li><a href="index-2.html">Bacon</a></li>
							<li><a href="index-3.html">Potato</a></li>
							<li><a href="index-4.html">Contato</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
	</div>
</div>
<div class="main">
	<div id="banner">
		<div class="text1">
			CONFORTO<span>Garantido</span><p>"Aquele que ama ou exerce ou deseja a dor, pode ocasionalmente adquirir algum prazer na labuta."</p>
		</div>
		<a href="#" class="button_top">COMPRE SUAS PASSAGENS</a>
	</div>
</div>
<!-- / header -->
<div class="main">
<!-- content -->
	<section id="content">
		<article class="col1">
			<div class="pad_1">
				<div class="wrapper">
				<article class="cols" style="width:100%">
					<h2> Sinta prazer em servir!</h2>
					<br><br>
					<p style="font-size:17px;text-align:center"><strong>Atender é Servir</strong> </p>
					<p>A equipe de atendimento ao cliente deve ser uma unidade transformadora dentro da empresa, onde os problemas e dúvidas são transformados em satisfação e fidelização.</p>
				
				</article>
				<div class="box1" style="width:230px;">
					<div class="pad_1">
						<div class="wrapper">
							<p class="pad_bot2">
								<center>Nossa Missão</center>
								<br>
								Ser a companhia aérea preferida das pessoas, com alegria, criatividade, respeito e responsabilidade.
							</p>
							<p><span class="right">Sr. Thomas Lloyd<br><div style="font-size:9px;float:right;">- Presidente da Airlines</div> </span>&nbsp;<br></p>
						</div>
					</div>
				</div>
			</div>
				<h2>Noticias Recentes</h2>
				<p class="under"><a href="http://noticias.r7.com/brasil/frota-de-avioes-brasileira-e-uma-das-mais-novas-do-mundo-04102015" class="link1">Frota de aviões brasileira é uma das mais novas do mundo</a><br>4 Outubro, 2015</p>
				<p class="under"><a href="http://todosabordo.blogosfera.uol.com.br/2015/10/04/novos-projetos-imaginam-aviao-com-assentos-deslizantes-e-poltronas-beliche/" class="link1">Novos projetos imaginam avião com assentos deslizantes e poltronas beliche</a><br>4 Outubro, 2015</p>

			</div>
		</article>
		<article class="col2 pad_left1">
			<h2><center>Pagina do Funcionario</center>
			<br>Aeronave</h2>
			
			<article class="colcol">
				<form id="form" action="AeronaveController" method="get">
					<div class="marker">
						<div class="wrapper">
							<p class="pad_bot2"><strong>Código da Aeronave:</strong></p>
							<div class="bg-right">
								<input type="text" name="codAeronave" class="input input01" value="Entre com o Código da Aeronave" onblur="if(this.value=='') this.value='Entre com o Código da Passagem'" onFocus="if(this.value =='Entre com o Código da Passagem' ) this.value=''">	
							</div>
							<div class="wrapper pad_bot2"><a href="javascript:consultar();" name="consultar" class="button1">Pesquisar Outra</a></div>
	
						</div>
					</div>
					<input type="hidden" value="" name="controle" id="controlepesquisa"/>
				</form>
				
				<div class="aeronave">
				
					<h2>Informacoes sobre a Aeronave:</h2>
					<form id="form_1" action="AeronaveController" method="post">
						
						<div class="wrapper"> <!-- wrapper some com o texto -->
							<p class="pad_bot2"><strong>Código da Aeronave:</strong></p>
							<div class="bg-right">
								<input type="text" id="codAeronave" name="codAeronave" class="input input01" value="<%= aeronave.getCodigo()%>" onblur="if(this.value=='') this.value='Entre com o Código da Aeronave'" onFocus="if(this.value =='Entre com o Código da Aeronave' ) this.value=''" >	
							</div>
						</div>
						
						<div class="wrapper">
							<p class="pad_bot2"><strong>Modelo:</strong></p>
							<div class="bg-right">
								<input type="text" id="modelo" name="modelo" class="input input01" value="<%= aeronave.getModelo() %>" required="required">	
							</div>
						</div>
						
						<div class="wrapper">
							<p class="pad_bot2"><strong>Tipo:</strong></p>
							<div class="bg-right">
								<input type="text" id="tipo" name="tipo" class="input input01" value="<%= aeronave.getTipo() %>" onblur="if(this.value=='') this.value='Entre com o Tipo da Aeronave'" onFocus="if(this.value =='Entre com o Tipo da Aeronave' ) this.value=''">	
							</div>
						</div>
						
						
						<div class="wrapper" style="width:100%">
							
							<div style="float:left;width:60%">
							<p class="pad_bot2"><strong>Data de aquisição:</strong></p>
								<div class="bgleft" style="width:50%;float:left">
									<input class="input input1" name="dtAquisicao" style="width:90%"  maxlength="10" placeholder="Data de Nascimento" type="date" size="10" />
								</div>
							</div>	
							
							<div style="float:left;width:40%">							
							<p class="pad_bot2"><strong>Qtd. de Assentos:</strong></p>
							
								<div class="qtd01">
									<div class="bgleft" style="width:60%;float:left">
										<input type="number" id="qtd" name="qtd" style="width:79%" class="input input1" min="0" step="1" value="<%= aeronave.getQtPassageiros() %>">
									</div>
								</div>
							</div>	
						</div>
						
						<div class="wrapper" style="margin-bottom:33px">
							<br><br>
							<a href="javascript:deletar();" class="button1" name="excluir">Excluir</a>
							<a href="javascript:cadastrar();" class="button2" name="confirmar" style="margin-top:0px">Confirmar</a>
						</div>
						<input type="hidden" value="" name="controle" id="controle"/>
					</form>
				</div>	
			
			<br><br>
			</article>
		</article>
	</section>
<!-- / content -->
</div>
<div class="body2">
	<div class="main">
<!-- footer -->
		<footer>
			Website template designed by <a href="http://www.templatemonster.com/" target="_blank" rel="nofollow">www.templatemonster.com</a><br>
			3D Models provided by <a href="http://www.templates.com/product/3d-models/" target="_blank" rel="nofollow">www.templates.com</a>
		</footer>
<!-- / footer -->
	</div>
</div>
<script type="text/javascript">
	Cufon.now(); 

	function cadastrar(){
		if($("#codAeronave").val() > 0){
			$('#controle').val("alterar");
		}
		else $('#controle').val("cadastrar");
		$("#form_1").submit();
	}
	
	function deletar(){
		if($("#codAeronave").val() > 0){
			$('#controle').val("deletar");
			$("#form_1").submit();
		}
		else alert("Código inválido!");
		
	}
	
	function consultar(){
		$("#form").submit();
	}
	
	$(function(){
		mensagem ='<%= request.getAttribute("mensagem") %>';
		if(mensagem != "null" && mensagem != null){
			alert(mensagem);
		}
		
	});
</script>
</body>
</html>