<%@page import="util.DateFormatter"%>
<%@page import="com.airlines.beans.Cliente"%>
<%@page import="com.airlines.beans.Passagem"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Dados da Passagem</title>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styleLogin.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/normalizeLogin.css"> -->

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
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/html5.js"></script>
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
							<li><a href="login.html">Fazer Login</a></li>
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
			<div class="pad_1" style="margin-bottom:34px">
				<div class="wrapper">
					<article class="cols" style="width:100%">
						<h2> Sinta prazer em servir!</h2>
						<br><br>
						<p style="font-size:17px;text-align:center"><strong>Atender é Servir</strong> </p>
						<p>A equipe de atendimento ao passagem deve ser uma unidade transformadora dentro da empresa, onde os problemas e dúvidas são transformados em satisfação e fidelização.</p>
					
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
			<h2>
			<br>Informacoes sobre o Pedido:</h2>
			
			<article class="colcol">
				<div class="passagem">
					<form id="form_1" action="" method="post">
						<div class="strongg">
						<div class="wrapper"> <!-- wrapper some com o texto -->
							<div style="width:33%;float:left">
							<p class="pad_bot2"><strong>Código do Voo:</strong></p>							
							<div class="bg-right" style="width:90%;"">
								<input type="text" name="codVoo" id="codPassagem" class="input input01" value="Código do Voo" onblur="if(this.value=='') this.value='Código da Voo'" onFocus="if(this.value =='Código do Voo' ) this.value=''">	
							</div></div>
							
							<div style="width:33%;float:left">
							<p class="pad_bot2"><strong>Código da Aeronave:</strong></p>							
							<div class="bg-right" style="width:90%;">
								<input type="text" name="codAeronave" id="codAeronave" class="input input01" value="Código da Aeronave" onblur="if(this.value=='') this.value='Código da Passagem'" onFocus="if(this.value =='Código da Aeronave' ) this.value=''">	
							</div></div>
						</div>			

						<div class="wrapper" style="width:100%"> <!-- wrapper some com o texto -->
							<div style="width:33%;float:left">
								<p class="pad_bot2"><strong>Código do Cliente:</strong></p>
								<div class="bg-right" style="width:90%;float:left;margin-right:23px">
									<input type="text" name="codCliente" id="codCliente" class="input input01" value="Código do Cliente" onblur="if(this.value=='') this.value='Código do Cliente'" onFocus="if(this.value =='Código do Cliente' ) this.value=''">	
								</div>
							</div>
							
							<div style="width:67%;float:left">
							<p class="pad_bot2"><strong>Nome do Cliente:</strong></p>
								<div class="bg-right" style="width:96%;float:left">
									<input type="text" name="nomeCliente" id="nomeCliente" class="input input01" value="Nome do Cliente" onFocus="if(this.value =='Nome do Cliente' ) this.value=''">	
								</div>
							</div>
						</div>					
						
						<div class="wrapper" style="width:100%">
							<div class="wrapper" style="width:50%;float:left">
								<p class="pad_bot2"><strong>Origem:</strong></p>
								<div class="bg-right" style="width:95%">
									<input type="text" name="origem" id="origem" style="width:100%" class="input input01" value="Entre com o Nome da Cidade" onblur="if(this.value=='') this.value='Entre com o Nome da Cidade'" onFocus="if(this.value =='Entre com o Nome da Cidade' ) this.value=''">	
								</div>
							</div>
						
							<div class="wrapper" style="width:50%;float:left">
								<p class="pad_bot2"><strong>Destino:</strong></p>
								<div class="bg-right" style="width:95%">
									<input type="text" name="destino" id="destino" style="width:100%" class="input input01" value="Entre com o Sobrenome da Cidade" onblur="if(this.value=='') this.value='Entre com o Sobrenome da Cidade'" onFocus="if(this.value =='Entre com o Sobrenome da Cidade' ) this.value=''">	
								</div>
							</div>	
						</div>
						
						<div class="wrapper">
							<div class="wrapper" style="float:left;width:50%">
								<p class="pad_bot2"><strong>Data e Hora da Ida:</strong></p>
								<div class="wrapper">
									<div class="bg left" style="float:left;width:49%">
										<input type="text" style="float:left;width:100%" class="input input2" name="dtIda" id="dtIda" value="dd/mm/aaaa " onblur="if(this.value=='') this.value='dd/mm/aaaa '" onFocus="if(this.value =='dd/mm/aaaa ' ) this.value=''">
									</div>
									<div class="bg right" style="float:right;width:33%;margin-right:13px">
										<input type="text" style="float:left;width:100%" class="input input2" name="hrIda" id="hrIda"value="12:00am" onblur="if(this.value=='') this.value='12:00am'" onFocus="if(this.value =='12:00am' ) this.value=''">
									</div>
								</div>
							</div>
							<div class="wrapper" style="float:left;width:50%">
								<p class="pad_bot2"><strong>Data e Hora da Chegada:</strong></p>
								<div class="wrapper">
									<div class="bg left" style="float:left;width:49%">
										<input type="text" style="float:left;width:100%" class="input input2" name="dtChegada" id="dtChegada" value="dd/mm/aaaa " onblur="if(this.value=='') this.value='dd/mm/aaaa '" onFocus="if(this.value =='dd/mm/aaaa ' ) this.value=''">
									</div>
									<div class="bg right" style="float:right;width:33%;margin-right:13px">
										<input type="text" style="float:left;width:100%" class="input input2" name="dtChegada" id="dtChegada" value="12:00am" onblur="if(this.value=='') this.value='12:00am'" onFocus="if(this.value =='12:00am' ) this.value=''">
									</div>
								</div>
							</div>
						</div>
						</div>					
						<div class="wrapper">
						<br>
							<div class="passageirosPag" style="width:50%;float:left">
								<p class="pad_bot2"><strong>Passageiro(s):</strong></p>
								<br>
								<div class="passageiros01">
									<p class="pad_bot2"><strong>Adultos</strong></p>
									<br>
									<div class="bgleft">
										<input type="number" name="qtdAdulto" id="qtdAdulto" class="input input3" min="0" step="1" value="1">
									</div>
								</div>
								
								<div class="passageiros02">
									<p class="pad_bot2"><strong>Crianças</strong></p>
									<p style="font-size:10px">2 a 11 anos</p>
									<div class="bgleft">
										<input type="number" name="qtdCrianca" id="qtdCrianca" class="input input3" min="0" step="1" value="0">
									</div>
								</div>
								
								<div class="passageiros03">
									<p class="pad_bot2"><strong>Bebês</strong></p>
									<p style="font-size:10px">0 a 23 meses</p>
									<div class="bgleft">
										<input type="number" name="qtdBebe" id="qtdBebe" class="input input3" min="0" step="1" value="0">
									</div>
								</div>
							</div>
							<div class="passageirosPag" style="width:50%;float:left">
							<p class="pad_bot2"><strong>Preço da Passagem por Perfil:</strong></p>
							<br>
								<div class="passageiros01">
									<p class="pad_bot2"><strong>Adultos</strong></p>
									<br>
									<div>
										<strong><label name="precoAdulto" id="precoAdulto">R$ 120,00</label></strong>
									</div>
								</div>
								
								<div class="passageiros02">
									<p class="pad_bot2"><strong>Crianças</strong></p>
									<br>
									<div>
										<strong><label type="number" name="precoCrianca" id="precoCrianca">R$ 80,00</label></strong>
									</div>
								</div>
								
								<div class="passageiros03">
									<p class="pad_bot2"><strong>Bebês</strong></p>
									<br>
									<div>
										<strong><label type="number" name="precoBebe" id="precoBebe">R$40,00</label></strong>
									</div>
								</div>
							</div>
						</div>
						<div class="wrapper">
							<br><br>
							<div class="wrapper" style="width:60%;float:left">
								<div style="width:100%;font-size:14px">
								<p class="pad_bot2" style="width:50%;float:left"><strong>Custo das Passagens:</strong></p>
								<div class="bg-right" style="width:30%;float:left">
									<label name="custoPassagem" id="custoPassagem" style="width:100%" class="input input01">R$5000,00</label>	
								</div>
								</div>
							</div>
							
							<div class="wrapper" style="width:32%;float:left">
								<div style="width:100%">
								<p class="pad_bot2" style="float:left;width:70%;font-size:13px"><strong>Check-in efetuado?</strong></p>
								<select name="checkIn" id="checkIn" style="float:right;width:28%" >
									<option value="não">Não</option>
									<option value="sim">Sim</option>
								</select>
								</div>
								<br>
							</div>
							<div>
								<a href="check-in online.html #check" class="button3" name="fazerCheck" id="fazerCheck" onClick="document.getElementById('form_1').submit()">Realizar Check-in</a>
							</div>
						</div>							
						
						<div class="wrapper">
							<br><br>
							<div class="wrapper" style="width:60%;float:left">
								<div style="width:100%;font-size:14px">
								<p class="pad_bot2" style="width:50%;float:left"><strong>Total da Tarifa:</strong></p>
								<div class="bg-right" style="width:30%;float:left">
									<label name="custoTarifa" id="custoTarifa" style="width:100%" class="input input01">R$5000,00</label>	
								</div>
								</div>
							</div>
							
							<div class="wrapper" style="width:40%;float:left">
								<div style="width:100%">
								<p class="pad_bot2" style="float:left;width:70%;font-size:15px"><strong>TOTAL À PAGAR:</strong></p>
								<BR><br>
								<label name="total" id="total" style="float:right;width:70%;font-size:20px">R$800000,00</label>
								</div>
								<br>
							</div>
						</div>						
							<div style="width:100%;margin-top:50px;margin-bottom:110px">
								<div style="float:left;width:40%;margin-left:-125px">
									<a href="index.html" class="button1" name="excluir" id="excluir" onClick="document.getElementById('form_1').excluir()">Excluir</a>
								</div>
								<div style="float:right;width:40%;margin-right:0px">
									<a href="passagem.html" class="button2" name="confirmar" id="confirmar" style="margin-top:0px;" onClick="document.getElementById('form_1').confirmar()">Confirmar</a>	
								</div>
							</div>							
							
							
							<div style="margin-bottom:190px">
								<a href="#" class="button1" name="limpar" id="limpar" style="margin-top:20px;" onClick="document.getElementById('form_1').confirmar()">Limpar Dados</a>
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
<% 
	Passagem p = (Passagem) request.getAttribute("passagem");
	Cliente c = (Cliente) request.getSession().getAttribute("logado");
%>

$("#codPassagem").val('<%= p.getVoo().getCodigo()%>');
$("#codAeronave").val('<%= p.getVoo().getCodigoAeronave()%>');
$("#codCliente").val('<%= c.getCodCliente()%>');
$("#nomeCliente").val('<%= c.getNome()+ " "+ c.getSobrenome()%>');
$("#origem").val('<%= p.getVoo().getOrigem()%>');
$("#destino").val('<%= p.getVoo().getDestino()%>');
$("#dtIda").val('<%= DateFormatter.formatarDataUser(p.getVoo().getDataHoraSaida().substring(0,10))%>');
$("#hrIda").val('<%= DateFormatter.formatarHora(p.getVoo().getDataHoraSaida().substring(10,19))%>');
$("#dtChegada").val('<%= DateFormatter.formatarDataUser(p.getVoo().getDataHoraChegada().substring(0,10))%>');
$("#hrChegada").val('<%= DateFormatter.formatarHora(p.getVoo().getDataHoraChegada().substring(10,19))%>');
$("#qtdAdulto").val('<%= request.getAttribute("qtdA")%>');
$("#qtdCrianca").val('<%=  request.getAttribute("qtdB")%>');
$("#qtdBebe").val('<%=  request.getAttribute("qtdC")%>');
$("#precoAdulto").text("R$"+'<%= p.getPreco()%>');
$("#precoCrianca").text("R$"+<%=p.getPreco()* 0.7%>.toFixed(2));
$("#precoBebe").text("R$"+<%=p.getPreco() * 0.3%>.toFixed(2));
$("#custoPassagem").text("R$"+<%= (p.getPreco() *(Integer)request.getAttribute("qtdA")) + ((p.getPreco()*0.7) * (Integer)request.getAttribute("qtdB")) + ((p.getPreco()*0.3) * (Integer)request.getAttribute("qtdC")) %>.toFixed(2));
$("#custoTarifa").text("R$"+<%= p.getTaxa()%>.toFixed(2));
$("#total").text("R$"+<%=p.getTaxa()+(p.getPreco() *(Integer)request.getAttribute("qtdA")) + ((p.getPreco()*0.7) * (Integer)request.getAttribute("qtdB")) + ((p.getPreco()*0.3) * (Integer)request.getAttribute("qtdC"))%>.toFixed(2));

</script>
</body>
</html>