<%@page import="util.DateFormatter"%>
<%@page import="com.airlines.beans.Voo"%>
<%@page import="com.airlines.TO.VooTO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Resultado de Voos</title>
<meta charset="utf-8">
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
				<form id="form_1" action="${pageContext.request.contextPath}/VooController" method="GET">
					<div class="wrapper">
						<label class="pesquisa">Origem:</label>
						<div class="bg"><input type="text" id="origem" name="origem" class="input input1" value="Entre com o Nome da Cidade" onblur="if(this.value=='') this.value='Entre com o Nome da Cidade'" onFocus="if(this.value =='Entre com o Nome da Cidade' ) this.value=''"></div>
					</div>
					<div class="wrapper">
						<label class="pesquisa">Destino:</label>
						<div class="bg"><input type="text" id="destino" name="destino" class="input input1" value="Entre com o Nome da Cidade" onblur="if(this.value=='') this.value='Entre com o Nome da Cidade'" onFocus="if(this.value =='Entre com o Nome da Cidade' ) this.value=''"></div>
					</div>
					<div class="wrapper">
						<div class="wrapper" style="width:50%;float:left">
							<label class="pesquisa">Data da Ida:</label>
							<div class="wrapper">
								<div class="bg left"><input type="date" maxlength="10" id="data" name="data" class="input input2" value="dd/mm/aaaa " onblur="if(this.value=='') this.value='dd/mm/aaaa '" onFocus="if(this.value =='dd/mm/aaaa ' ) this.value=''" style="width:auto;"></div>
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
							<div class="bgleft"><input type="number" id="qtdA" name="qtdA" class="input input3" min="0" step="1" value="1"></div>
							</div>
							
							<div class="passageiros02">
							<p>Crianças</p>
							<p style="font-size:10px">2 a 11 anos</p>
							<div class="bgleft"><input type="number" id="qtdC" name="qtdC" class="input input3" min="0" step="1" value="0"></div>
							</div>
							
							<div class="passageiros03">
							Bebês
							<p style="font-size:10px">0 a 23 meses</p>
							<div class="bgleft"><input type="number" id="qtdB" name="qtdB" class="input input3" min="0" step="1" value="0"></div>
							</div>
						</div>
						
						<br><br><br><br><br><a href="javascript:consultar();" class="button2" >Pesquisar</a>
					</div>
					<input type="hidden" value="pesquisaVoos" name="pesquisa"/>
				</form>
				<h2>Noticias Recentes</h2>
				<p class="under"><a href="http://noticias.r7.com/brasil/frota-de-avioes-brasileira-e-uma-das-mais-novas-do-mundo-04102015" class="link1">Frota de aviões brasileira é uma das mais novas do mundo</a><br>4 Outubro, 2015</p>
				<p class="under"><a href="http://todosabordo.blogosfera.uol.com.br/2015/10/04/novos-projetos-imaginam-aviao-com-assentos-deslizantes-e-poltronas-beliche/" class="link1">Novos projetos imaginam avião com assentos deslizantes e poltronas beliche</a><br>4 Outubro, 2015</p>

			</div>
		</article>

		<article class="col2 pad_left1" style="width:60%;float:left">
			<h2><center>Selecione seu Voo abaixo:</center></h2>
			<div class="resultados01">
				<form id="form_2" method="GET" action="${pageContext.request.contextPath}/PassagemController">
					<table class="tg" width="600px">
					  <%
					  	if(request.getAttribute("voos") != null && !request.getAttribute("voos").equals("null")){
					  		VooTO voos = (VooTO) request.getAttribute("voos");
					  		int passageiros = (Integer) request.getAttribute("passageiros");
					  		out.println("<tr>");
				  			out.println("<th colspan='2'><strong>Data: <label name='dataIda' id='dataIda'>" + DateFormatter.formatarDataUser(request.getParameter("data")) + "</label></Strong></th>");
				  			out.println("<th colspan='1'><strong>Origem</strong></th>");
				  			out.println("<th colspan='1'><strong>Destino</strong></th>");
				  			out.println("<th colspan='1'><strong></strong></th>");
				  			out.println("</tr>");
					  		for(Voo v: voos.getVoos()){
								if(passageiros <= +v.getAssento()){
						  			out.println("<tr class='listarVoos'>");
								  	out.println("<th class='tg-n61b' colspan='2'>");
								  	out.println("<label name= 'lblcodVoo' id='lblcodVoo' class='listarVoos' style='padding:0px;margin;0px'>");
								  	out.println("Código do Voo");
								  	out.println("</label>");
								  	out.println("<th class='tg-n61b'>");		  	
								  	out.println("<label name='lblOrigem' id='lblOrigem' class='listarVoos'>");		  	
								  	out.println(v.getOrigem());		  	
								  	out.println("</label>");		  	
								  	out.println("<th class='tg-n61b'>");		  	
								  	out.println("<label name='lblDestino' id='lblDestino' class='listarVoos'>");		  	
								  	out.println(v.getDestino());		  	
								  	out.println("</label>");		  	
								  	out.println("</th>");		  	
								  	out.println("<th class='tg-n61b'>");		  	
								  	out.println("Assentos <br>Disponivéis");		  			  	
								  	out.println("</th>");		  	
								  	out.println("<tr/>");
									out.println("<tr>");
									out.println("<td class='tg-baqh'>");
									out.println("<div class='radioIda'>");
									out.println("<input type='radio' name='optionIda' id='optionIda'value = '" + v.getCodigo() + "'/>");
									out.println("</div>");
									out.println("</td>");
									out.println("<td class='tg-yw4l'>");
									out.println("<label name='codVoo' id='codVoo' style='font-size:13px;padding:0px;margin:0px;text-align: center;'>" + v.getCodigo() + "</label></td>");
									out.println("<td class='tg-yw4l'>");
									out.println("<label name='hrVooPartida' id='hrVooPartida'><b>"+ DateFormatter.formatarHora(v.getDataHoraSaida().substring(10,19)) +"</b></label></td>");
									out.println("<td class='tg-yw4l'>");
									out.println("<label name='hrVooChegada' id='hrVooChegada'><b>"+ DateFormatter.formatarHora(v.getDataHoraChegada().substring(10,19)) +"</b></label></td>");
									out.println("<td class='tg-yw4l'>");
									out.println("<label name='lblAssentosDisp' id='lblAssentosDisp' style='color:red'>"+v.getAssento()+"</td>");
									out.println("<tr/>");
								}
					  			
					  		}
					  		
					  	}  	
					  	%>  
					</table>
					<input type="hidden" value="consultaPassagem" name="consultaPassagem"/>
					<input type="hidden" value="${param.qtdA}" name="qtdA"/>
					<input type="hidden" value="${param.qtdB}" name="qtdB"/>
					<input type="hidden" value="${param.qtdC}" name="qtdC"/>
				</form>
			</div>
			
			<div style="width:100%;margin-top:250px;margin-bottom:800px">
				<div style="float:left;width:40%;margin-left:-150px">
					<a href="javascript:history.go(-1)" class="button1" name="voltar" id="voltar" onClick="document.getElementById('form_1').excluir()">Voltar</a>
				</div>
				<div style="float:right;width:40%;margin-right:10px">
					<a href="javascript:passagem();" class="button2" name="confirmar" id="confirmar" style="margin-top:0px;" onClick="document.getElementById('form_1').confirmar()">Confirmar Compra</a>	
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
<script type="text/javascript"> 
	
	Cufon.now(); 
	
	function consultar(){
		if($("#qtdA").val() > 0){
			$("#form_1").submit();
		}
		
	}
	
	function passagem(){
		if($("#optionIda").val() > 0){
			$("#form_2").submit();
		}
		
	}
	
	$(function(){
		if('${param.origem}') $("#origem").val('${param.origem}');
		if('${param.destino}') $("#destino").val('${param.destino}');
		if('${param.data}') $("#data").val('${param.data}');
		if('${param.qtdA}') $("#qtdA").val('${param.qtdA}');
		if('${param.qtdB}') $("#qtdB").val('${param.qtdB}');
		if('${param.qtdC}') $("#qtdC").val('${param.qtdC}');
		
		$('#optionIda:first').attr('checked', true);
	})
	
</script>
</body>
</html>