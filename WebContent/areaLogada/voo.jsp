<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.airlines.beans.Voo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Voo</title>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/cssstyleLogin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/cssnormalizeLogin.css"> -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" media="all">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cufon-yui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/cufon-replace.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Myriad_Pro_italic_600.font.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Myriad_Pro_italic_400.font.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/Myriad_Pro_400.font.js"></script>
<!--[if lt IE 9]>
	<script type="text/javascript" src="http://info.template-help.com/files/ie6_warning/ie6_script_other.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/jshtml5.js"></script>
<![endif]-->
</head>
<body id="page1">
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
			<div class="pad_1" style="margin-bottom:34px">
				<div class="wrapper">
					<article class="cols" style="width:100%">
						<h2> Sinta prazer em servir!</h2>
						<br><br>
						<p style="font-size:17px;text-align:center"><strong>Atender é Servir</strong> </p>
						<p>A equipe de atendimento ao Voo deve ser uma unidade transformadora dentro da empresa, onde os problemas e dúvidas são transformados em satisfação e fidelização.</p>
					
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
				<h2 style="margin-top:25px">Noticias Recentes</h2>
				<p class="under"><a href="http://noticias.r7.com/brasil/frota-de-avioes-brasileira-e-uma-das-mais-novas-do-mundo-04102015" class="link1">Frota de aviões brasileira é uma das mais novas do mundo</a><br>4 Outubro, 2015</p>
				<p class="under"><a href="http://todosabordo.blogosfera.uol.com.br/2015/10/04/novos-projetos-imaginam-aviao-com-assentos-deslizantes-e-poltronas-beliche/" class="link1">Novos projetos imaginam avião com assentos deslizantes e poltronas beliche</a><br>4 Outubro, 2015</p>

			</div>
		</article>
		<article class="col2 pad_left1">
			<h2><center>Pagina do Funcionario</center>
			<br>Voo</h2>
			
			<article class="colcol">
				<form id="form" action="${pageContext.request.contextPath}/VooController" method="GET" >
					<div class="marker">
						<div class="wrapper">
							<p class="pad_bot2"><strong>Código do Voo:</strong></p>
							<div class="bg-right">
								<input type="text" id="codigo" name="codigo" class="input input01" value="Entre com o Código do Voo" onblur="if(this.value=='') this.value='Entre com o Código do Voo'" onFocus="if(this.value =='Entre com o Código do Voo' ) this.value=''">	
							</div>
							<div class="wrapper pad_bot2"><a href="javascript:consultar();" name="consultar" class="button1">Pesquisar Outro</a></div>
							<input type="hidden" value="" name="pesquisa" id="pesquisa"/>
						</div>
					</div>
				</form>
				<div class="voo">
				
					<h2>Informacoes sobre o Voo:</h2>
					<form id="form_1" action="${pageContext.request.contextPath}/VooController" method="post">
					<div class="wrapper" style="width:100%">
						<div class="wrapper" style="width:50%;float:left"> <!-- wrapper some com o texto -->
							<p class="pad_bot2"><strong>Código do Voo:</strong></p>
							<div class="bg-right" style="width:95%">
								<input type="text" id="codVoo"name="codVoo" class="input input01" value="Código do Voo" onblur="if(this.value=='') this.value='Código do Voo'" onFocus="if(this.value =='Código do Voo' ) this.value=''">	
							</div>
						</div>				

						<div class="wrapper" style="width:50%;float:left"> <!-- wrapper some com o texto -->
							<p class="pad_bot2"><strong>Código da Aeronave:</strong></p>
							<div class="bg-right" style="width:95%">
								<input type="text" id="codAeronave" name="codAeronave" class="input input01" value="Código da Aeronave" onblur="if(this.value=='') this.value='Código da Aeronave'" onFocus="if(this.value =='Código da Aeronave' ) this.value=''">	
							</div>
						</div>
					</div>	
						
						<div class="wrapper" style="width:100%">
							
							<div class="wrapper" style="width:50%;float:left">
								<p class="pad_bot2"><strong>Origem:</strong></p>
								<div class="bg-right" style="width:95%">
									<input type="text" id="origem" name="origem" style="width:100%" class="input input01" value="Entre com a Origem do Voo" onblur="if(this.value=='') this.value='Entre com a Origem do Voo'" onFocus="if(this.value =='Entre com a Origem do Voo' ) this.value=''">	
								</div>
							</div>
						
							<div class="wrapper" style="width:50%;float:left">
								<p class="pad_bot2"><strong>Destino:</strong></p>
								<div class="bg-right" style="width:95%">
									<input type="text" id="destino" name="destino" style="width:100%" class="input input01" value="Entre com o Destino do Voo" onblur="if(this.value=='') this.value='Entre com o Destino do Voo'" onFocus="if(this.value =='Entre com o Destino do Voo' ) this.value=''">	
								</div>
							</div>	
						</div>
						
						<div class="wrapper" name="ida">
							  <div class="wrapper" style="width:45%;float:left">
								<p class="pad_bot2"><strong>Data da Ida:</strong></p>
								<div class="bg-right">
									<input class="input" id="dtIda" name="dtIda" style="width:91%" maxlength="10" placeholder="Data da Ida" type="date" size="10" />
								</div>
							  </div>
							  <div class="wrapper" style="width:25%;float:left">
								<p class="pad_bot2"><strong>Hora da Ida:</strong></p>
								<div class="bg-right">
									<input type="time" id="horaIda" name="horaIda" style="width:82%" class="input" value="12:00am" onblur="if(this.value=='') this.value='12:00am'" onFocus="if(this.value =='12:00am' ) this.value=''">
								</div>
							  </div>
						</div>
						
						<div class="wrapper" name="chegada">
							  <div class="wrapper" style="width:45%;float:left">
								<p class="pad_bot2"><strong>Data da Chegada:</strong></p>
								<div class="bg-right">
									<input class="input" id="dtChegada" name="dtChegada" style="width:91%" maxlength="10" placeholder="Data da Ida" type="date" size="10" />
								</div>
							  </div>
							  <div class="wrapper" style="width:25%;float:left">
								<p class="pad_bot2"><strong>Hora da Chegada:</strong></p>
								<div class="bg-right">
									<input type="time" id="horaChegada" name="horaChegada" style="width:82%" class="input"">
								</div>
							  </div>
						</div>
						
						<div class="wrapper" style="width:100%;float:left">
								<p class="pad_bot2"><strong>Situação</strong></p>
								<select id="situacao" name="situacao">
									<option value="Não Iniciado">		Não Iniciado</option>
									<option value="Embarque Imediato">	Embarque Imediato</option>
									<option value="Em Voo">				Em Voo </option>
									<option value="No Pátio">			No Pátio </option>
									<option value="Desembarque">		Desembarque </option>
									<option value="Finalizado">			Finalizado</option>
								</select>
						</div>
												
						<div class="wrapper" style="margin-bottom:33px">
							<br><br>
							<a href="javascript:deletar();" class="button1" name="excluir">Excluir</a>
							<a href="javascript:cadastrar()" class="button2" name="confirmar" style="margin-top:0px" >Confirmar</a>
						</div>
						
						<div style="margin-bottom:90px">
							<a href="#" class="button2" name="limpar" style="margin-top:20px;" onClick="document.getElementById('form_1').confirmar()">Limpar Dados</a>
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
		if($("#codVoo").val() > 0){
			if($("#codAeronave").val() > 0)
				$('#controle').val("alterar");
			$("#form_1").submit();
		}
		else if($("#codAeronave").val() > 0){
			$('#controle').val("cadastrar");
			$("#form_1").submit();
		}
		
		else alert("Ambos os códigos do voo e da aeronave devem ser maiores do que zero!");
	}
	
	function deletar(){
		if($("#codVoo").val() > 0){
				$('#controle').val("deletar");
			$("#form_1").submit();
		}
		
	}
	
	function consultar(){
		if($("#codigo").val() > 0){
				$('#pesquisa').val("pesquisa");
			$("#form").submit();
		}
		
	}
	
	$(function(){
		mensagem ='<%= request.getAttribute("mensagem") %>';
		if(mensagem != "null" && mensagem != null){
			alert(mensagem);
		}
		
	});

	
	$(function(){
		<% 
			Voo v= new Voo();
			if(request.getAttribute("voo") != null){ 
				v = (Voo) request.getAttribute("voo");
			}
			else{
				v = new Voo();
			}
		
		%>

		if(<%=v.getCodigo()%> > 0){
			$("#codVoo").val('<%= v.getCodigo()%>');
			$("#codAeronave").val('<%= v.getCodigoAeronave() %>');
			$("#origem").val('<%= v.getOrigem()%>');
			$("#destino").val('<%= v.getDestino()%>');
			$("#situacao").val('<%= v.getSituacao()%>');
			
			<% 
			if(v.getCodigo() > 0){
				//SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm");
				//Calendar c = Calendar.getInstance();
				//c.setTime(sdf.parse(v.getDataHoraChegada()));
				//v.setDataHoraChegada(sdf.format(c.getTime()));
				
				//c = null;
				//c = Calendar.getInstance();
				//c.setTime(sdf.parse(v.getDataHoraSaida()));
				//v.setDataHoraChegada(sdf.format(c.getTime()));
			}
			
			else{
				v.setDataHoraChegada("0000000000000000000000000000000");
				v.setDataHoraSaida("0000000000000000000000000000000");
			}
			%>
			$("#dtIda").val('<%= v.getDataHoraSaida().substring(0,10)%>');
			$("#dtChegada").val('<%= v.getDataHoraChegada().substring(0,10)%>');
			$("#horaIda").val("<%= v.getDataHoraSaida().substring(11,16) %>");
			$("#horaChegada").val("<%= v.getDataHoraChegada().substring(11,16) %>")
		}
	});

</script>
</body>
</html>