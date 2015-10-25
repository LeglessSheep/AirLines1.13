<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Pagina Inicial</title>
<meta charset="utf-8">
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
							<li><a href="login.jsp?cadastro=yeah">Não tem Cadastro? Cadastre-se</a></li>
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
						
						<br><br><br><br><br><a  href="resultados-de-voos.jsp" class="button2" ">Pesquisar</a>
					</div>
				</form>
				<h2>Noticias Recentes</h2>
				<p class="under"><a href="http://noticias.r7.com/brasil/frota-de-avioes-brasileira-e-uma-das-mais-novas-do-mundo-04102015" class="link1">Frota de aviões brasileira é uma das mais novas do mundo</a><br>4 Outubro, 2015</p>
				<p class="under"><a href="http://todosabordo.blogosfera.uol.com.br/2015/10/04/novos-projetos-imaginam-aviao-com-assentos-deslizantes-e-poltronas-beliche/" class="link1">Novos projetos imaginam avião com assentos deslizantes e poltronas beliche</a><br>4 Outubro, 2015</p>

			</div>
		</article>
		<article class="col2 pad_left1">
			<h2>Bem-vindo ao nosso Website!</h2>
			
			<div style="margin-right:10px;margin-top:20px;margin-bottom:20px">
			<div class="marker">
				<div class="wrapper">
					<p class="pad_bot2"><strong>Conheça nossa História</strong></p>
					<p class="pad_bot2">A companhia aérea surgiu em Marília, no interior de São Paulo, depois da associação de dez pilotos; hoje ela opera em 115 destinos em 23 países a Airlines Linhas Aéreas é a maior companhia do Brasil. Em 2009, a empresa... </p>
				</div>
			</div>
			
			<div class="wrapper pad_bot2"><a href="nossa-historia.html" class="button1">Leia Mais</a></div>

			</div>
			<div class="wrapper" style="padding-top:50px">
				<article class="cols" style="width:49%">
					<h2>Nossa Visao</h2>
					<p><strong>"Trabalhar com Espírito de Servir</strong> 
					<br>faz as pessoas mais felizes."</p>
					
					<h2>Nossos Valores</h2>
					<div style="line-height:14px;font-size:12px">
						<li><p>Compromisso e responsabilidade;</p></li>
						<li><p>Competência e inovação;</p></li>
						<li><p>Interação sócio-ambiental;</p></li>
						<li><p>Parceria de respeito com clientes e colaboradores;</p></li>
						<li><p>Foco nos resultados;</p></li>
						<li><p>Estratégia e competitividade ética.</p></li>
					</div>	
				</article>
				<div class="box1">
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
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>