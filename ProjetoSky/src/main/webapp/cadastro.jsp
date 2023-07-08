<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Homepage - Sky IFSP</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<!-- Bootstrap CSS -->
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles1.css" rel="stylesheet" />
<link href="css/footer.css" rel="stylesheet" />

<style>
.textInput {
	width: 85%;
	height: 50px;
	border-radius: 3pt;
	border-width: 0.3;
}

.buttonCadastra {
	width: 85%;
	height: 50px;
	background-color: #212529;
	color: white;
	border-radius: 4pt;
	border-width: 0ch;
	transition: 1s
}

.buttonCadastra:hover {
	width: 85%;
	height: 50px;
	background-color: white;
	transition: 1s;
	color: black;
	border-radius: 4pt;
	border-width: 1pt;
	border-color: black;
	border-inline-color: black;
}
</style>

</head>

<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light dark">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand text-white ms-1" href="index.jsp">Sky IFSP</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon text-white ms-1"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4 ">
					<li class="nav-item"><a
						class="nav-link active text-white ms-1" aria-current="page"
						href="index.jsp">Home</a></li>
				</ul>
				<span class=" text-dark ms-1"></span>
				<button class="btn btn-outline-dark" type="submit">
					<a href="verificarLogin" class=" text-white ms-1"> Login </a>
				</button>

			</div>

		</div>
	</nav>
	<!-- Header-->
	<div class="container-fluid">
		<div class="row" style="background-image: url('./images/back.jpeg')">
			<div class="col-lg-12">
				<center>
					<br>
					<br>
					<br>
					<div class="modal-xl" id="modalExemplo" tabindex="-1" role="dialog"
						aria-labelledby="exampleModalLabel" aria-hidden="false">
						<div class="modal-dialog" role="document">
							<div class="modal-content">

								<div class="modal-body">
									<br>
									<form style="height: 100%;" action="cadastraUsuario">
										<span
											style="font-size: 16pt; font-weight: bold; font-family: Arial, Helvetica, sans-serif;">Cadastre-se
											e faça uma viagem tranquila</span> <br>
										<br>
										<br> <input type="text" class="textInput"
											placeholder="Nome:" name="HTML_nome_USUARIO" required>
										<br>
										<br> <label></label> <input type="email" class="textInput"
											placeholder="Email:" name="HTML_email_USUARIO" required>
										<br>
										<br> <label></label> <input type="number" class="textInput"
											placeholder="CPF:" name="HTML_cpf_USUARIO" required>
										<br>
										<br> <label></label> <input type="number" class="textInput"
											placeholder="Telefone:" name="HTML_telefone_USUARIO" required>
										<br>
										<br> <label></label> <input type="text" class="textInput"
											placeholder="endereço:" name="HTML_endereco_USUARIO" required>
										<br>
										<br> <label></label> <input type="password"
											class="textInput" placeholder="Password:" id="inputSenha"
											name="HTML_password_USUARIO" pattern=".{6,45}" required
											title="O tamanho da senha de ser de 6 a 45 caracteres">
										<br>
										<br> <input type="password" class="textInput"
											placeholder="Confirm your password:" id="inputSenha2"
											required> <br>
										<br> <input class="buttonCadastra" type="submit"
											id="inputSubmit" value="Cadastrar-se">
										</button>
										<br>
										<br>
									</form>
									<script
										src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
									<script>
										$(function() {
											$("#inputSubmit")
													.click(
															function() {
																var senha = $(
																		"#inputSenha")
																		.val();
																var senha2 = $(
																		"#inputSenha2")
																		.val();
																if (senha != senha2) {
																	event
																			.preventDefault();
																	alert("As senhas não são iguais!");
																}
															});
										});
									</script>
								</div>
							</div>
						</div>
					</div>
				</center>
				<br>
				<br>
				<br>
			</div>
		</div>
	</div>
	<footer class="main_footer container2">

		<div class="content">

			<div class="colfooter">

				<h3 class="titleFooter">Menu</h3>

				<ul>

					<li><a href="#" title="Página Inícial">Página Inícial</a></li>
					<li><a href="#" title="Sobre a Empresa">Sobre a Empresa</a></li>
					<li><a href="#" title="Galeria de Fotos">Galeria de Fotos</a></li>
					<li><a href="#" title="Fale Conosco">Fale Conosco</a></li>

				</ul>

			</div>
			<!--Col Footer 1-->

			<div class="colfooter">

				<h3 class="titleFooter">Contato</h3>
				<p>
					<i class="icon icon-mail"></i> contato@seusite.com.br
				</p>
				<p>
					<i class="icon icon-phone"></i> 21 90000-0000
				</p>
				<p>
					<i class="icon icon-whatsapp"></i> 21 90000-0000
				</p>

			</div>
			<!--Col Footer 2-->

			<div class="colfooter">

				<h3 class="titleFooter">Redes Sociais</h3>

				<a href="#" class="botao"><span> <i
						class="icon icon-facebook"></i>
				</span></a> <a href="#" class="botao"><span> <i
						class="icon icon-instagram"></i>
				</span></a> <a href="#" class="botao"><span> <i
						class="icon icon-twitter"></i>
				</span></a> <a href="#" class="botao"><span> <i
						class="icon icon-pinterest"></i>
				</span></a>

			</div>
			<!--Col Footer 3-->


			<div class="clear"></div>

		</div>
		<!--Contant-->

		<div class="main_footer_copy">

			<p class="m-b-footer">Seusite - 2021, todos os direitos
				reservados.</p>
			<p class="by">
				<i class="icon icon-heart-3"></i> Desenvolvido por: <a href="#"
					title="Seu nome">Gabriel Camargo, Gabriel Novato e Leonardo
					Gomes</a>
			</p>

		</div>

	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</body>
</html>