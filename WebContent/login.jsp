<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login/Cadastre-se</title>
    
    
    <link rel="stylesheet" href="css/normalizeLogin.css">

    <link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

        <link rel="stylesheet" href="css/styleLogin.css">
		
		<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
		<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
		<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
		<script type="text/javascript" src="js/cufon-yui.js"></script>
		<script type="text/javascript" src="js/cufon-replace.js"></script> 
			<script type="text/javascript" src="js/jquery.mask.min.js" ></script>
		<script type="text/javascript" src="js/Myriad_Pro_italic_600.font.js"></script>
		<script type="text/javascript" src="js/Myriad_Pro_italic_400.font.js"></script>
		<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
  </head>

  <body>
  
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
  <div class="logmod">
  <br>
  <div class="logmod__wrapper">
    <div class="logmod__container">
      <ul class="logmod__tabs">
        <li data-tabtar="lgm-2"><a href="#">Login</a></li>
        <li data-tabtar="lgm-1"><a id="cadastro" href="#">Cadastre-se</a></li>
      </ul>
      <div class="logmod__tab-wrapper">
      <div class="logmod__tab lgm-1">
        <div class="logmod__heading">
          <span class="logmod__heading-subtitle">Entre com seus Dados <strong>para Criar uma Conta</strong></span>
		  <br>
		  <div style="font-size:10px;text-align:right;padding-right:10px"><strong>*TODAS</strong> as informações são obrigatórias</div>
        </div>
        <div class="logmod__form">
		
          <form accept-charset="utf-8" action="${pageContext.request.contextPath}/ClienteController?controle=registrar" id="formulario"class="simform" method="POST">
			<div class="sminputs" style="border-bottom:none;padding-top:20px;padding-bottom:20px">
				<div class="input full" style="height:50px;text-align:center;font-size=12px;">
					<label class="string optional" for="user-name">Informações Pessoais:</label>
				</div>
			</div>

			 <div class="sminputs">
              <div class="input string optional">
                <label class="string optional" for="user-pw">Primeiro Nome</label>
                <input class="string optional" maxlength="255" name="nome" placeholder="Primeiro Nome" type="text" size="50" />
              </div>
              <div class="input string optional">
                <label class="string optional" for="user-pw-repeat">Sobrenome</label>
                <input class="string optional" maxlength="255" name="sobrenome" placeholder="Sobrenome" type="text" size="50" />
              </div>
            </div>
			
			 <div class="sminputs">
				  <div class="input string optional" style="width:37%">
					<label class="string optional" for="user-pw">Nascimento</label>
					<input class="string optional" maxlength="10" name="dtNascimento" placeholder="Data de Nascimento" type="date" size="10" />
				  </div>
				  <div class="input string optional" style="width:33%">
					<label class="string optional" for="user-tratamento">Tratamento</label>
					<select name="tratamento">
					  <option value="sr">Sr.</option>
					  <option value="sra">Sra.</option>
					</select>
				  </div>
				  <div class="input string optional" style="width:30%;padding-bottom:60px;">
					<label class="string optional" for="user-tratamento">Tipo</label>
					<select name="tipo">
						<option value="bebê">Bebê</option>
						<option value="criança">Criança</option>
						<option value="adulto">Adulto</option>
					</select>
				  </div>
            </div>
			
			<div class="sminputs" style="border-bottom:none;padding-top:20px">
				<div class="input full" style="height:50px;text-align:center;font-size:12px;">
					<label class="string optional" for="user-name">Informações de Contato:</label>
				</div>
			</div>
            <div class="sminputs">
              <div class="input full">
                <label class="string optional" for="user-name">E-mail</label>
                <input class="string optional" maxlength="255" name="e-mail" placeholder="E-mail" type="email" size="50" />
              </div>
            </div>
			 <div class="sminputs">
              <div class="input full">
                <label class="string optional" for="user-name">Confirme seu e-mail</label>
                <input class="string optional" maxlength="255" id="user-email" placeholder="Confirme seu e-mail" type="email" size="50" />
              </div>
            </div>
			
			<div class="sminputs">
              <div class="input full">
                <label class="string optional" for="user-name">DDD Telefone</label>
                <input class="string optional" maxlength="20" id="telefone" name="telefone" placeholder="DD99999999" type="text" size="20" />
              </div>
            </div>
			
            <div class="sminputs">
              <div class="input string optional">
                <label class="string optional" for="user-pw">Senha</label>
                <input class="string optional" maxlength="255" name="senha1" placeholder="Senha" type="password" size="50" />
              </div>
              <div class="input string optional">
                <label class="string optional" for="user-pw-repeat">Repita a Senha</label>
                <input class="string optional" maxlength="255" id="user-pw-repeat" placeholder="Repita a Senha" type="password" size="50" />
              </div>
            </div>
            <div class="simform__actions">
			  <br>
              <input class="sumbit" id="commit" name="commit" style="margin-top:20px" type="sumbit" value="Criar Conta" />
              <span class="simform__actions-sidetext">Criando uma Conta você afirma que Aceitou os <a class="special" href="#" target="_blank" role="link">Termos de Privacidade</a></span>
            </div> 
          </form>
        </div> 
      </div>
	  
	  <!-- LOGIN-->
	  
      <div class="logmod__tab lgm-2">
			<div class="logmod__heading">
			  <span class="logmod__heading-subtitle">Digite seu E-mail e Senha <strong>para Entrar</strong></span>
			   <br>
			  <div style="font-size:10px;text-align:right;padding-right:10px"><strong>*TODAS</strong> as informações são obrigatórias</div>
			</div> 
			<div class="logmod__form">
			  <form accept-charset="utf-8" action="ControleLogin" method="post" class="simform">
				<div class="sminputs">
				  <div class="input full">
					<label class="string optional" for="user-name">E-mail*</label>
					<input class="string optional" maxlength="255" name="user-email" id="user-email" placeholder="E-mail" type="email" size="50" />
				  </div>
				</div>
				<div class="sminputs">
				  <div class="input full">
					<label class="string optional" for="user-pw">Senha *</label>
					<input class="string optional" maxlength="255" name="user-pw" id="user-pw" placeholder="Senha" type="password" size="50" />
					<span class="hide-password">Mostrar</span>
				  </div>
				</div>
				<div class="simform__actions">
				  <input class="sumbit" name="commit" type="submit" value="Entrar" />
				  <span class="simform__actions-sidetext"><a class="special" role="link" href="#">Esqueceu sua Senha?<br>Clique Aqui</a></span>
				</div> 
			  </form>
			</div> 
       </div>
     </div>
    </div>
  </div>
  
  <br><br><br><br><br><br><br><br><br>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="js/indexLogin.js"></script>
	<script type="text/javascript">
		$.urlParam = function(name){
			var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
			if (results==null){
			   return null;
			}
			else{
			   return results[1] || 0;
			}
		}
		$(function(){
			cadastro = $.urlParam('cadastro');
			if(cadastro != null){
				$("#cadastro").click();
			}
		});
		
		$("#commit").click(function(){
			$("#formulario").submit();
		});


	</script>
    
    
    
  </body>
</html>
