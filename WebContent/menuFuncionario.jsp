<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Menu do Funcionário</title>
<meta charset="UTF-8">
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
							<li><a href="login.jsp">Fazer Login</a></li>
							<li><a href="login.html">Não tem Cadastro? Cadastre-se</a></li>
						</ul>
						<ul id="top_nav">
							<li><a href="index.html"><img src="images/img1.gif" alt=""></a></li>
							<li><a href="contato.html"><img src="images/img2.gif" alt=""></a></li>
						</ul>
					</nav>
					<nav>
						<ul id="menu">
							<li id="menu_active"><a href="index.html">Home</a></li>
							<li><a href="nossa-historia.html">Nossa História</a></li>
							
							
							<li><a href="contato.html">Contato</a></li>
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
				<h2 style="margin-bottom:5px">Seu Planejador de Voo:</h2>
				<form id="form_1" action="" method="post">
					<div class="#">
						<label class="pesquisa"><b><center>Preencha os campos abaixo</b></center></label>
					</div>
					<div class="wrapper">
						<label class="pesquisa">Origem:</label>
						<div class="bg"><input type="text" class="input input1" value="Entre com o Nome da Cidade" onblur="if(this.value=='') this.value='Entre com o Nome da Cidade'" onFocus="if(this.value =='Entre com o Nome da Cidade' ) this.value=''"></div>
					</div>
					<div class="wrapper">
						<label class="pesquisa">Destino:</label>
						<div class="bg"><input type="text" class="input input1" value="Entre com o Nome da Cidade" onblur="if(this.value=='') this.value='Entre com o Nome da Cidade'" onFocus="if(this.value =='Entre com o Nome da Cidade' ) this.value=''"></div>
					</div>
					<div class="wrapper">
						<div class="wrapper" style="width:50%;float:left">
							<label class="pesquisa">Data da Ida:</label>
							<div class="wrapper">
								<div class="bg left"><input type="text" class="input input2" value="dd/mm/aaaa " onblur="if(this.value=='') this.value='dd/mm/aaaa '" onFocus="if(this.value =='dd/mm/aaaa ' ) this.value=''"></div>
							</div>
						</div>
					</div>
					<div class="wrapper">
						<br>
						<p>Passageiro(s):</p>
						<br>
						
						<div class="passageiros">
							
							<div class="passageiros01">
							Adultos
							<br><br>
							<div class="bgleft"><input type="number" name="qtd" class="input input3" min="0" step="1" value="1"></div>
							</div>
							
							<div class="passageiros02">
							<p>Crianças</p>
							<p style="font-size:10px">2 a 11 anos</p>
							<div class="bgleft"><input type="number" name="qtd" class="input input3" min="0" step="1" value="0"></div>
							</div>
							
							<div class="passageiros03">
							Bebês
							<p style="font-size:10px">0 a 23 meses</p>
							<div class="bgleft"><input type="number" name="qtd" class="input input3" min="0" step="1" value="0"></div>
							</div>
						</div>
						
						<br><br><br><br><br><a href="resultados-de-voos.html" class="button2" onClick="document.getElementById('form_1').submit()">Pesquisar</a>
					</div>
				</form>
				<h2>Noticias Recentes</h2>
				<p class="under"><a href="http://noticias.r7.com/brasil/frota-de-avioes-brasileira-e-uma-das-mais-novas-do-mundo-04102015" class="link1">Frota de aviões brasileira é uma das mais novas do mundo</a><br>4 Outubro, 2015</p>
				<p class="under"><a href="http://todosabordo.blogosfera.uol.com.br/2015/10/04/novos-projetos-imaginam-aviao-com-assentos-deslizantes-e-poltronas-beliche/" class="link1">Novos projetos imaginam avião com assentos deslizantes e poltronas beliche</a><br>4 Outubro, 2015</p>

			</div>
		</article>
		<article class="col2 pad_left1">
			<h2>
			<br>Bem-vindo ao nosso Website!</h2>
			
			<article class="colcol">
			<div class="marker">
				<div class="wrapper">
					<p class="pad_bot2"><strong>Pesquisa de Passagem:</strong></p>
					<div class="bg-right">
						<input type="text" class="input input01" value="Entre com o Código da Passagem" onblur="if(this.value=='') this.value='Entre com o Código da Passagem'" onFocus="if(this.value =='Entre com o Código da Passagem' ) this.value=''">	
					</div>
					<div class="wrapper pad_bot2"><a href="passagem.html" class="button1">Pesquisar</a></div>

				</div>
			</div>
			
			
			<div class="marker">
				<div class="wrapper">
					<p class="pad_bot2"><strong>Pesquisa de Voo:</strong></p>
					<div class="bg-right">
						<form id="formVoo" method="get" action="VooController">
							<input type="text" id="codVoo" name="codigo" class="input input01" value="Entre com o Código do Voo" onblur="if(this.value=='') this.value='Entre com o Código do Voo'" onFocus="if(this.value =='Entre com o Código do Voo' ) this.value=''">	
							<input type="hidden" value="pesquisa" name="pesquisa" />
						</form>
					</div>
					<div class="wrapper pad_bot2">
						<a href="voo.jsp" class="button1">Cadastrar</a>
						<a href="javascript:pesquisarVoo();" class="button2">Pesquisar</a>
					</div>
				</div>
			</div>
			
			<div class="marker">
				<div class="wrapper">
					<p class="pad_bot2"><strong>Pesquisa de Aeronave:</strong></p>
					<div class="bg-right">
						<form id="formAeronave" method="get" action="AeronaveController">
							<input type="text" id="codAeronave" name="codAeronave" class="input input01" value="Entre com o Código da Aeronave" onblur="if(this.value=='') this.value='Entre com o Código da Aeronave'" onFocus="if(this.value =='Entre com o Código da Aeronave' ) this.value=''">	
						</form>
					</div>
					<div class="wrapper pad_bot2">
						<a href="aeronave.jsp" class="button1">Cadastrar</a>
						<a href="javascript:pesquisarAeronave();" class="button2">Pesquisar</a>
					</div>
				</div>
			</div>			
			
			<div class="marker">
				<div class="wrapper">
					<p class="pad_bot2"><strong>Pesquisa de Cliente:</strong></p>
					<div class="bg-right">
						<form id="formCliente" method="get" action="ClienteController">
							<input id="codCliente" name="codCliente" type="text" class="input input01" value="Entre com o Código do Cliente" onblur="if(this.value=='') this.value='Entre com o Código do Cliente'" onFocus="if(this.value =='Entre com o Código do Cliente' ) this.value=''">	
						</form>
					</div>
					<div class="wrapper pad_bot2">
						<a href="cliente.jsp" class="button1">Cadastrar</a>
						<a href="javascript:consultarCliente();" class="button2">Pesquisar</a>
					</div>
				</div>
			</div>
			
			<div class="wrapper">
				<article class="cols" style="width:45%">
					<h2> Sinta prazer em servir</h2>
					<p><strong>Atender é Servir</strong> </p>
					<p>A equipe de atendimento ao cliente deve ser uma unidade transformadora dentro da empresa, onde os problemas e dúvidas são transformados em satisfação e fidelização.</p>
				
				</article>
				<div class="box1" style="width:45%">
					<div class="pad_1">
						<div class="wrapper">
							<p class="pad_bot2">
								<center>Nossa Missão</center>
								<br>
								Ser a companhia aérea preferida das pessoas, com alegria, criatividade, respeito e responsabilidade.
							</p>
							<p><span class="right">Sr. Thomas Lloyd</span>&nbsp;<br></p>
						</div>
					</div>
				</div>
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
		<div style="float:left;width:40%;font-size:14px">
			<b>@2015 Airlines Linhas Aéreas S.A.</b><br>
			<p style="margin-top:8px">Proibida reprodução total ou parcial sem autorização</P><br>
		</div>
		<div style="float:left;width:60%;">
			<img src="images/rodape.jpg" alt="" style="height:50px;float:right">
		</div>
		</footer>
<!-- / footer -->
	</div>
</div>
<script type="text/javascript"> 
	Cufon.now(); 
	
	function pesquisarVoo(){
		if($("#codVoo").val() > 0){
			$('#formVoo').submit();
		}
		else alert("Código inválido!");
	}
	
	function pesquisarAeronave(){
		if($("#codAeronave").val() > 0){
			$('#formAeronave').submit();
		}
		else alert("Código inválido!");
	}
	function consultarCliente(){
		if($("#codCliente").val() > 0){
			$('#formCliente').submit();
		}
		else alert("Código inválido!");
	}
</script>
</body>
</html>