<%@page import="com.airlines.beans.Cliente"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Dados do Cliente</title>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="css/styleLogin.css">
<link rel="stylesheet" href="css/normalizeLogin.css"> -->

<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="js/jquery.mask.min.js" ></script>
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
	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String hoje = dateFormat.format(cal.getTime());
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
			<div class="pad_1" style="margin-bottom:34px">
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
				<h2 style="margin-top:25px">Noticias Recentes</h2>
				<p class="under"><a href="http://noticias.r7.com/brasil/frota-de-avioes-brasileira-e-uma-das-mais-novas-do-mundo-04102015" class="link1">Frota de aviões brasileira é uma das mais novas do mundo</a><br>4 Outubro, 2015</p>
				<p class="under"><a href="http://todosabordo.blogosfera.uol.com.br/2015/10/04/novos-projetos-imaginam-aviao-com-assentos-deslizantes-e-poltronas-beliche/" class="link1">Novos projetos imaginam avião com assentos deslizantes e poltronas beliche</a><br>4 Outubro, 2015</p>

			</div>
		</article>
		<article class="col2 pad_left1">
			<h2><center>Pagina do Funcionario</center>
			<br>Cliente</h2>
			
			<article class="colcol">
				<form name="form" id ="form" method="get" action="ClienteController" >
					<div class="marker">
						<div class="wrapper">
							<p class="pad_bot2"><strong>Código da Cliente:</strong></p>
							<div class="bg-right">
								<input type="text" id="codCliente" name="codCliente" class="input input01" value="Entre com o Código do Cliente" onblur="if(this.value=='') this.value='Entre com o Código do Cliente'" onFocus="if(this.value =='Entre com o Código do Cliente' ) this.value=''">	
							</div>
							<div class="wrapper pad_bot2"><a href="javascript:consultar();" name="consultar" class="button1">Pesquisar Outro</a></div>
	
						</div>
					</div>
				</form>
				
				<div class="cliente">
				
					<h2>Informacoes sobre o Cliente:</h2>
					<form id="form_1" action="ClienteController" method="post">
						
						<div class="wrapper"> <!-- wrapper some com o texto -->
							<p class="pad_bot2"><strong>Código do Cliente:</strong></p>
							<div class="bg-right" style="width:47%;">
								<input type="text" id ="cod" name="cod" class="input input01" value="Código do Cliente" onblur="if(this.value=='') this.value='Código do Cliente'" onFocus="if(this.value =='Código do Cliente' ) this.value=''">	
							</div>
						</div>
						
						<div class="wrapper" style="width:100%">
							
							<div class="wrapper" style="width:50%;float:left">
								<p class="pad_bot2"><strong>Primeiro Nome:</strong></p>
								<div class="bg-right" style="width:95%">
									<input type="text" id="nome" name="nome" style="width:100%" class="input input01" value="Entre com o Nome do Cliente" onblur="if(this.value=='') this.value='Entre com o Nome do Cliente'" onFocus="if(this.value =='Entre com o Nome do Cliente' ) this.value=''">	
								</div>
							</div>
						
							<div class="wrapper" style="width:50%;float:left">
								<p class="pad_bot2"><strong>Sobrenome:</strong></p>
								<div class="bg-right" style="width:95%">
									<input type="text" id="sobrenome" name="sobrenome" style="width:100%" class="input input01" value="Entre com o Sobrenome do Cliente" onblur="if(this.value=='') this.value='Entre com o Sobrenome do Cliente'" onFocus="if(this.value =='Entre com o Sobrenome do Cliente' ) this.value=''">	
								</div>
							</div>	
						</div>
						
						<div class="wrapper">
							  <div class="wrapper" style="width:40%;float:left">
								<p class="pad_bot2"><strong>Nascimento</strong></p>
								<div class="bg-right">
									<input class="input" id="dtNascimento" name="dtNascimento" maxlength="10" placeholder="Data de Nascimento" type="date" size="10" min="1900-01-02" max="<%= hoje %>" />
								</div>
							  </div>
							  <div class="wrapper" style="width:32%;float:left">
								<p class="pad_bot2"><strong>Tratamento</strong></p>
								<select id="tratamento" name="tratamento">
								  <option value="sr">Sr.</option>
								  <option value="sra">Sra.</option>
								</select>
							  </div>
							  <div class="wrapper" style="width:28%;float:left">
								<p class="pad_bot2"><strong>Tipo</strong></p>
								<select id="tipo" name="tipo">
									<option value="bebê">Bebê</option>
									<option value="criança">Criança</option>
									<option value="adulto">Adulto</option>
								</select>
							  </div>
						</div>
						
						<div class="wrapper">
							<p class="pad_bot2"><strong>E-mail:</strong></p>
							<div class="bg-right">
								<input type="email" id="e-mail" name="e-mail" class="input input01" value="Entre com o E-mail do Cliente" onblur="if(this.value=='') this.value='Entre com o E-mail do Cliente'" onFocus="if(this.value =='Entre com o E-mail do Cliente' ) this.value=''">	
							</div>
						</div>
						
						<div class="wrapper" style="width:80%">
							<p class="pad_bot2"><strong>Telefone:</strong></p>
							<div class="bg-right">
								<input id="telefone" name="telefone" class="input input01" value="">	
							</div>
						</div>
						
						<div class="wrapper" style="margin-bottom:33px">
							<br><br>
							<a href="javascript:deletar();" class="button1" name="excluir" ">Excluir</a>
							<a href="javascript:cadastrar();" class="button2" name="confirmar" style="margin-top:0px" >Confirmar</a>
						</div>
						<input type="hidden" value="" name="controle" id="controle"/>
						<div style="margin-bottom:90px">
							<a href="#" class="button2" name="limpar" style="margin-top:20px;" onClick="document.getElementById('form_1').confirmar()">Limpar Dados</a>
						</div>
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
			if($("#cod").val() > 0){
				$('#controle').val("alterar");
			}
			else $('#controle').val("cadastrar");
			var phone, element;
		    element = $("#telefone");
		    element.unmask();
		    phone = element.val().replace(/\D/g, '');
		    element.mask("9999999999?9");
			$("#form_1").submit();
		}
		
		function deletar(){
			if($("#cod").val() > 0){
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
			$("#telefone").mask("(99)999999999", {placeholder:""});
		});
		
		$('#telefone').focusout(function(){
		    var phone, element;
		    element = $(this);
		    element.unmask();
		    phone = element.val().replace(/\D/g, '');
		    if(phone.length > 10) {
		        element.mask("(99)99999-999?9");
		    } else {
		        element.mask("(99)9999-9999?9");
		    }
		}).trigger("foscusout");
		
		
		
		
		$(function(){
			<% 
				Cliente c = null;
				if(request.getAttribute("cliente") != null){ 
					c = (Cliente) request.getAttribute("cliente");
				}
				else{
					c = new Cliente();
				}
			
			%>

			if(<%=c.getCodCliente()%> > 0){
				$("#cod").val('<%= c.getCodCliente()%>');
				$("#nome").val('<%= c.getNome()%>');
				$("#sobrenome").val('<%= c.getSobrenome()%>');
				$("#dtNascimento").val('<%= c.getDtNascimento()%>');
				$("#tratamento").val('<%= c.getTratamento()%>');
				$("#tipo").val('<%= c.getTipo()%>');
				$("#e-mail").val('<%= c.getEmail()%>');
				$("#telefone").val('<%= c.getDdd() + "" + c.getCelular()%>');
			}
		});
		
</script>
</body>
</html>