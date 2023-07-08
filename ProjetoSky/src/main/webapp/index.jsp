<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Homepage - Sky IFSP</title>

<meta charset="utf-8">

<!--====== Title ======-->
<title>Smash - Bootstrap Business Template</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--====== Favicon Icon ======-->
<link rel="shortcut icon" href="codigos_index/images/favicon.png"
	type="image/png">

<!--====== Magnific Popup CSS ======-->
<link rel="stylesheet" href="codigos_index/css/magnific-popup.css">

<!--====== Slick CSS ======-->
<link rel="stylesheet" href="codigos_index/css/slick.css">

<!--====== Line Icons CSS ======-->
<link rel="stylesheet" href="codigos_index/css/LineIcons.css">

<!--====== Bootstrap CSS ======-->
<link rel="stylesheet" href="codigos_index/css/bootstrap.min.css">

<!--====== Default CSS ======-->
<link rel="stylesheet" href="codigos_index/css/default.css">

<!--====== Style CSS ======-->
<link rel="stylesheet" href="codigos_index/css/style.css">

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
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assetss/img/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles1.css" rel="stylesheet" />
<link href="css/footer.css" rel="stylesheet" />
<style>
input {
	border-radius: 4px;
}

label {
	font-weight: bold;
}

.boxee {
	width: 110%;
	background-color: white;
	border: 2px solid black;
	border-radius: 20px;
	align-content: normal;
	box-shadow: inset 0 0 20px gray;
	/* sombra interna cinza, com blur de 20px. */
}

.botaoProcura {
	width: 20%;
	background-color: black;
	color: white;
	border: none;
	transition: 1s;
	border-radius: 5px;
	height: 45px
}

.botaoProcura:hover {
	width: 20%;
	background-color: white;
	color: black;
	border-color: black;
	transition: 1s;
	border-bottom-style: dashed;
	border-radius: 5px;
	height: 45px
}
</style>
</head>

<body>
	<!-- Navigation-->
	<header>
		<nav class="navbar navbar-expand-lg navbar-light dark">
			<div class="container px-4 px-lg-5">
				<a class="navbar-brand text-white ms-1" href="index.jsp">Sky
					IFSP</a>
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
					<span class=" text-dark ms-1">aa</span>
					<button class="btn btn-outline-dark" type="submit">
						<a href="verificarLogin" class=" text-white ms-1"> Login </a>
					</button>
				</div>
			</div>
		</nav>
	</header>
	<!-- Header-->
	<div class="bg-dark py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div>
				<center>
					<h1 class="display-4 fw-bolder">
						<span style="color: black">Viaje com Sky IFSP</span>
					</h1>
					<p class="lead fw-normal  mb-0">
						<span style="color: black">Melhor viagem não tem</span>
					</p>
				</center>
				<br>
				<div class="boxee">
					<br>
					<form action="buscaVoo">

						<center>
							<span style="font-size: 20pt; font-weight: bold;">Consulte
								as passagens aéreas:</span> <br> <br>
							<br> <label>Local de Partida:</label> <select
								name="HTML_localorigem_VOO" required>
								<option value="Guarulhos (GRU)">Guarulhos (GRU)</option>
								<option value="Congonhas (SP)">Congonhas (SP)</option>
								<option value="Tom Jobim (RJ)">Tom Jobim (RJ)</option>
							</select> <label>Local de Destino:</label><select
								name="HTML_localdestino_VOO" required>
								<option value="Guarulhos (GRU)">Guarulhos (GRU)</option>
								<option value="Congonhas (SP)">Congonhas (SP)</option>
								<option value="Tom Jobim (RJ)">Tom Jobim (RJ)</option>
							</select> <label>Data de Partida:</label> <select name="HTML_data_VOO"
								required>
								<option value="01/01/2023">01/01/2023</option>
								<option value="02/02/2023">02/02/2023</option>
								<option value="03/03/2023">03/03/2023</option>
								<option value="04/04/2023">04/04/2023</option>
								<option value="05/05/2023">05/05/2023</option>
								<option value="06/06/2023">06/06/2023</option>
							</select> <label>Quantidade de Passageiros: </label><input type="text"
								name="HTML_quantidadePassageiro_VOO"
								placeholder="Quantos passageiros?" required> <br> <br>
							<br> <input type="submit" value="Procurar"
								class="botaoProcura"> <br>
							<br>
						</center>

					</form>

					<br>
				</div>

			</div>
		</div>
	</div>
	<!--[if IE]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
  <![endif]-->

	<!--====== PRELOADER PART START ======-->

	<div class="preloader">
		<div class="loader">
			<div class="ytp-spinner">
				<div class="ytp-spinner-container">
					<div class="ytp-spinner-rotator">
						<div class="ytp-spinner-left">
							<div class="ytp-spinner-circle"></div>
						</div>
						<div class="ytp-spinner-right">
							<div class="ytp-spinner-circle"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--====== FEATRES TWO PART START ======-->

	<section id="services" class="features-area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 col-md-10">
					<div class="section-title text-center pb-10">
						<h3 class="title">Nossos serviços</h3>
						<p class="text">Pare de perder tempo e dinheiro escolhendo
							sites de passagens ruins, a felicidade te espera!</p>
					</div>
					<!-- row -->
				</div>
			</div>
			<!-- row -->
			<div class="row justify-content-center">
				<div class="col-lg-4 col-md-7 col-sm-9">
					<div class="single-features mt-40">
						<div class="features-title-icon d-flex justify-content-between">
							<h4 class="features-title">
								<a href="#">Graphics Design</a>
							</h4>
							<div class="features-icon">
								<i class="lni lni-brush"></i> <img class="shape"
									src="codigos_index/images/f-shape-1.svg" alt="Shape">
							</div>
						</div>
						<div class="features-content">
							<p class="text">Corrija suas informações a qualquer momento,
								e caso queira, cancele suas reservas a qualquer momento, passe
								um corretivo e seja feliz!</p>
						</div>
					</div>
					<!-- single features -->
				</div>
				<div class="col-lg-4 col-md-7 col-sm-9">
					<div class="single-features mt-40">
						<div class="features-title-icon d-flex justify-content-between">
							<h4 class="features-title">
								<a href="#">Website Design</a>
							</h4>
							<div class="features-icon">
								<i class="lni lni-layout"></i> <img class="shape"
									src="codigos_index/images/f-shape-1.svg" alt="Shape">
							</div>
						</div>
						<div class="features-content">
							<br>
							<p class="text">Suas passagens a qualquer momento, sempre que
								quiser vê-las</p>

						</div>
					</div>
					<!-- single features -->
				</div>
				<div class="col-lg-4 col-md-7 col-sm-9">
					<div class="single-features mt-40">
						<div class="features-title-icon d-flex justify-content-between">
							<h4 class="features-title">
								<a href="#">Digital Marketing</a>
							</h4>
							<div class="features-icon">
								<i class="lni lni-bolt"></i> <img class="shape"
									src="codigos_index/images/f-shape-1.svg" alt="Shape">
							</div>
						</div>
						<div class="features-content">
							<p class="text">Agilidade em reservar suas passagens.</p>
						</div>
					</div>
					<!-- single features -->
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</section>

	<!--====== FEATRES TWO PART ENDS ======-->

	<!--====== PORTFOLIO PART START ======-->

	<section id="portfolio" class="portfolio-area portfolio-four pb-100">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 col-md-10">
					<div class="section-title text-center pb-10">
						<h3 class="title">Exemplos destinos que você pode ir:</h3>
						<br>
						<p class="text"></p>
					</div>
					<!-- section title -->
				</div>
			</div>
			<!-- row -->
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<div class="portfolio-menu text-center mt-50">
						<ul>
							<li data-filter="*" class="active">Exemplos de Voos:</li>

						</ul>
					</div>
					<!-- portfolio menu -->
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="row no-gutters grid mt-50">
						<div class="col-lg-4 col-sm-6 branding-4 planning-4">
							<div class="single-portfolio">
								<div class="portfolio-image">
									<img src="codigos_index/images/portfolio/portogalinhas.jpg"
										alt="" height="240px">
									<div
										class="portfolio-overlay d-flex align-items-center justify-content-center">
										<div class="portfolio-content">
											<div class="portfolio-icon">
												<a class="image-popup"
													href="codigos_index/images/portfolio/portogalinhas.jpg"><i
													class="lni lni-zoom-in"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
											<div class="portfolio-icon">
												<a href="#"><i class="lni lni-link"></i></a> <img
													src="codigos_index/images/portfolio.svg" alt="shape"
													class="shape">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single portfolio -->
						</div>
						<div class="col-lg-4 col-sm-6 marketing-4 research-4">
							<div class="single-portfolio">
								<div class="portfolio-image">
									<img src="codigos_index/images/portfolio/inglaterra2.jpg"
										alt="" height="240px">
									<div
										class="portfolio-overlay d-flex align-items-center justify-content-center">
										<div class="portfolio-content">
											<div class="portfolio-icon">
												<a class="image-popup"
													href="codigos_index/images/portfolio/inglaterra2.jpg"><i
													class="lni lni-zoom-in"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
											<div class="portfolio-icon">
												<a href="#"><i class="lni lni-link"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single portfolio -->
						</div>
						<div class="col-lg-4 col-sm-6 branding-4 marketing-4">
							<div class="single-portfolio">
								<div class="portfolio-image">
									<img src="codigos_index/images/portfolio/paris.jpg" alt=""
										height="240px">
									<div
										class="portfolio-overlay d-flex align-items-center justify-content-center">
										<div class="portfolio-content">
											<div class="portfolio-icon">
												<a class="image-popup"
													href="codigos_index/images/portfolio/paris.jpg"><i
													class="lni lni-zoom-in"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
											<div class="portfolio-icon">
												<a href="#"><i class="lni lni-link"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single portfolio -->
						</div>
						<div class="col-lg-4 col-sm-6 planning-4 research-4">
							<div class="single-portfolio">
								<div class="portfolio-image">
									<img src="codigos_index/images/portfolio/alemanha.jpeg" alt=""
										height="240px">
									<div
										class="portfolio-overlay d-flex align-items-center justify-content-center">
										<div class="portfolio-content">
											<div class="portfolio-icon">
												<a class="image-popup"
													href="codigos_index/images/portfolio/alemanha.jpeg"><i
													class="lni lni-zoom-in"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
											<div class="portfolio-icon">
												<a href="#"><i class="lni lni-link"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single portfolio -->
						</div>
						<div class="col-lg-4 col-sm-6 marketing-4">
							<div class="single-portfolio">
								<div class="portfolio-image">
									<img src="codigos_index/images/portfolio/duMare.jpg" alt=""
										height="240px">
									<div
										class="portfolio-overlay d-flex align-items-center justify-content-center">
										<div class="portfolio-content">
											<div class="portfolio-icon">
												<a class="image-popup"
													href="codigos_index/images/portfolio/duMare.jpg"><i
													class="lni lni-zoom-in"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
											<div class="portfolio-icon">
												<a href="#"><i class="lni lni-link"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single portfolio -->
						</div>
						<div class="col-lg-4 col-sm-6 planning-4">
							<div class="single-portfolio">
								<div class="portfolio-image">
									<img src="codigos_index/images/portfolio/inglaterra.jpg" alt=""
										height="240px">
									<div
										class="portfolio-overlay d-flex align-items-center justify-content-center">
										<div class="portfolio-content">
											<div class="portfolio-icon">
												<a class="image-popup"
													href="codigos_index/images/portfolio/inglaterra.jpg"><i
													class="lni lni-zoom-in"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
											<div class="portfolio-icon">
												<a href="#"><i class="lni lni-link"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single portfolio -->
						</div>
						<div class="col-lg-4 col-sm-6 research-4">
							<div class="single-portfolio">
								<div class="portfolio-image">
									<img src="codigos_index/images/portfolio/bariloche.jpg" alt=""
										height="240px">
									<div
										class="portfolio-overlay d-flex align-items-center justify-content-center">
										<div class="portfolio-content">
											<div class="portfolio-icon">
												<a class="image-popup"
													href="codigos_index/images/portfolio/bariloche.jpg"><i
													class="lni lni-zoom-in"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
											<div class="portfolio-icon">
												<a href="#"><i class="lni lni-link"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single portfolio -->
						</div>
						<div class="col-lg-4 col-sm-6 branding-4 planning-4">
							<div class="single-portfolio">
								<div class="portfolio-image">
									<img src="codigos_index/images/portfolio/veneza.jpeg" alt=""
										height="240px">
									<div
										class="portfolio-overlay d-flex align-items-center justify-content-center">
										<div class="portfolio-content">
											<div class="portfolio-icon">
												<a class="image-popup"
													href="codigos_index/images/portfolio/veneza.jpeg"><i
													class="lni lni-zoom-in"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
											<div class="portfolio-icon">
												<a href="#"><i class="lni lni-link"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single portfolio -->
						</div>
						<div class="col-lg-4 col-sm-6 marketing-4">
							<div class="single-portfolio">
								<div class="portfolio-image">
									<img src="codigos_index/images/portfolio/madri.jpg" alt=""
										height="240px">
									<div
										class="portfolio-overlay d-flex align-items-center justify-content-center">
										<div class="portfolio-content">
											<div class="portfolio-icon">
												<a class="image-popup"
													href="codigos_index/images/portfolio/madri.jpg"><i
													class="lni lni-zoom-in"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
											<div class="portfolio-icon">
												<a href="#"><i class="lni lni-link"></i></a> <img
													src="codigos_index/images/portfolio/shape.svg" alt="shape"
													class="shape">
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- single portfolio -->
						</div>
					</div>
					<!-- row -->
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</section>

	<!--====== PORTFOLIO PART ENDS ======-->

	<!--====== PRINICNG START ======-->



	<!--====== PRINICNG ENDS ======-->

	<!--====== ABOUT PART START ======-->

	<section id="about" class="about-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-5">
					<div class="faq-content mt-45">
						<div class="about-title">
							<h6 class="sub-title">A Little More About Us</h6>
							<h4 class="title">
								Perguntas mais frequentes<br>Sobre o nosso site:
							</h4>
						</div>
						<!-- faq title -->
						<div class="about-accordion">
							<div class="accordion" id="accordionExample">
								<div class="card">
									<div class="card-header" id="headingOne">
										<a href="#" data-toggle="collapse" data-target="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne">Frequently
											Asked Question One</a>
									</div>

									<div id="collapseOne" class="collapse show"
										aria-labelledby="headingOne" data-parent="#accordionExample">
										<div class="card-body">
											<p class="text">
												Para fazer um reserva, eu preciso estar logado?<br>
												<br> Sim, é necessário fazer login, para que suas
												informações sejam atribuidas aos voos.
											</p>
										</div>
									</div>
								</div>
								<!-- card -->
								<div class="card">
									<div class="card-header" id="headingTwo">
										<a href="#" class="collapsed" data-toggle="collapse"
											data-target="#collapseTwo" aria-expanded="false"
											aria-controls="collapseTwo">Frequently Asked Question Two</a>
									</div>
									<div id="collapseTwo" class="collapse"
										aria-labelledby="headingTwo" data-parent="#accordionExample">
										<div class="card-body">
											<p class="text">
												Se caso alguém desista de uma passagem, eu poderia realizar
												a minha?<br>
												<br> Depende, é necessário que o número de assentos
												vagos nos voos dísponiveis seja de igualdade com a
												quantidade de passageiros por reserva.
											</p>
										</div>
									</div>
								</div>
								<!-- card -->
								<div class="card">
									<div class="card-header" id="headingThree">
										<a href="#" class="collapsed" data-toggle="collapse"
											data-target="#collapseThree" aria-expanded="false"
											aria-controls="collapseThree">Frequently Asked Question
											Three</a>
									</div>
									<div id="collapseThree" class="collapse"
										aria-labelledby="headingThree" data-parent="#accordionExample">
										<div class="card-body">
											<p class="text">
												Caso eu desista da minha passagem eu poderei cancelar?<br>
												<br> Sim, é possível cancelar suas reservas a qualquer
												momento que você queira.
											</p>
										</div>
									</div>
								</div>
								<!-- card -->
							</div>
						</div>
						<!-- faq accordion -->
					</div>
					<!-- faq content -->
				</div>
				<div class="col-lg-7">
					<div class="about-image mt-50">
						<img src="codigos_index/images/faq.png" alt="about">
					</div>
					<!-- faq image -->
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</section>

	<!--====== ABOUT PART ENDS ======-->

	<!--====== TESTIMONIAL PART START ======-->

	<section id="testimonial" class="testimonial-area">
		<div class="container">
			<div class="row justify-content-between">
				<div class="col-xl-5 col-lg-6">
					<div class="testimonial-left-content mt-45">
						<h6 class="sub-title">Testimonials</h6>
						<h4 class="title">
							O que nossos clientes falam<br> Sobre nós
						</h4>
						<ul class="testimonial-line">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
						<p class="text">Algumas das frases de alguns dos nossos
							cliente.</p>
					</div>
					<!-- testimonial left content -->
				</div>
				<div class="col-lg-6">
					<div class="testimonial-right-content mt-50">
						<div class="quota">
							<i class="lni lni-quotation"></i>
						</div>
						<div class="testimonial-content-wrapper testimonial-active">
							<div class="single-testimonial">
								<div class="testimonial-text">
									<p class="text">“Praesent scelerisque, odio eu fermentum
										malesuada, nisi arcu volutpat nisl, sit amet convallis nunc
										turp.”</p>
								</div>
								<div
									class="testimonial-author d-sm-flex justify-content-between">
									<div class="author-info d-flex align-items-center">
										<div class="author-image">
											<img src="codigos_index/images/author-1.jpg" alt="author">
										</div>
										<div class="author-name media-body">
											<h5 class="name">Mr. Jems Bond</h5>
											<span class="sub-title">CEO Mbuild Firm</span>
										</div>
									</div>
									<div class="author-review">
										<ul class="star">
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
										</ul>
										<span class="review">( 7 Reviews )</span>
									</div>
								</div>
							</div>
							<!-- single testimonial -->
							<div class="single-testimonial">
								<div class="testimonial-text">
									<p class="text">“Praesent scelerisque, odio eu fermentum
										malesuada, nisi arcu volutpat nisl, sit amet convallis nunc
										turp.”</p>
								</div>
								<div
									class="testimonial-author d-sm-flex justify-content-between">
									<div class="author-info d-flex align-items-center">
										<div class="author-image">
											<img src="codigos_index/images/author-2.jpg" alt="author">
										</div>
										<div class="author-name media-body">
											<h5 class="name">Mr. Jems Bond</h5>
											<span class="sub-title">CEO Mbuild Firm</span>
										</div>
									</div>
									<div class="author-review">
										<ul class="star">
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
										</ul>
										<span class="review">( 7 Reviews )</span>
									</div>
								</div>
							</div>
							<!-- single testimonial -->
							<div class="single-testimonial">
								<div class="testimonial-text">
									<p class="text">“Praesent scelerisque, odio eu fermentum
										malesuada, nisi arcu volutpat nisl, sit amet convallis nunc
										turp.”</p>
								</div>
								<div
									class="testimonial-author d-sm-flex justify-content-between">
									<div class="author-info d-flex align-items-center">
										<div class="author-image">
											<img src="codigos_index/images/author-3.jpg" alt="author">
										</div>
										<div class="author-name media-body">
											<h5 class="name">Mr. Jems Bond</h5>
											<span class="sub-title">CEO Mbuild Firm</span>
										</div>
									</div>
									<div class="author-review">
										<ul class="star">
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
											<li><i class="lni lni-star-filled"></i></li>
										</ul>
										<span class="review">( 7 Reviews )</span>
									</div>
								</div>
							</div>
							<!-- single testimonial -->
						</div>
						<!-- testimonial content wrapper -->
					</div>
					<!-- testimonial right content -->
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</section>

	<!--====== TESTIMONIAL PART ENDS ======-->

	<!--====== TEAM START ======-->

	<section id="team" class="team-area pt-120 pb-130">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 col-md-10">
					<div class="section-title text-center pb-30">
						<h3 class="title">Meet The Team</h3>
					</div>
					<!-- section title -->
				</div>
			</div>
			<!-- row -->
			<div class="row">
				<div class="col-lg-4 col-sm-6">
					<div class="team-style-eleven text-center mt-30 wow fadeIn"
						data-wow-duration="1s" data-wow-delay="0s">
						<div class="team-image">
							<img src="codigos_index/images/team-1.jpg" alt="Team">
						</div>
						<div class="team-content">
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
									<li><a href="#"><i class="lni lni-twitter-original"></i></a></li>
									<li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
									<li><a href="#"><i class="lni lni-instagram"></i></a></li>
								</ul>
							</div>
							<h4 class="team-name">
								<a href="#">Gabriel de Azevedo Camargo</a>
							</h4>
							<span class="sub-title">Front-end Programmer</span>
						</div>
					</div>
					<!-- single team -->
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="team-style-eleven text-center mt-30 wow fadeIn"
						data-wow-duration="1s" data-wow-delay="0s">
						<div class="team-image">
							<img src="codigos_index/images/team-2.jpg" alt="Team">
						</div>
						<div class="team-content">
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
									<li><a href="#"><i class="lni lni-twitter-original"></i></a></li>
									<li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
									<li><a href="#"><i class="lni lni-instagram"></i></a></li>
								</ul>
							</div>
							<h4 class="team-name">
								<a href="#">Leonardo Gomes da Silva</a>
							</h4>
							<span class="sub-title">Back-end Developer</span>
						</div>
					</div>
					<!-- single team -->
				</div>
				<div class="col-lg-4 col-sm-6">
					<div class="team-style-eleven text-center mt-30 wow fadeIn"
						data-wow-duration="1s" data-wow-delay="0s">
						<div class="team-image">
							<img src="codigos_index/images/team-4.jpg" alt="Team">
						</div>
						<div class="team-content">
							<div class="team-social">
								<ul class="social">
									<li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
									<li><a href="#"><i class="lni lni-twitter-original"></i></a></li>
									<li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
									<li><a href="#"><i class="lni lni-instagram"></i></a></li>
								</ul>
							</div>
							<h4 class="team-name">
								<a href="#">Gabriel Novato</a>
							</h4>
							<span class="sub-title">Ux Designer</span>
						</div>
					</div>
					<!-- single team -->
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</section>

	<!--====== TEAM  ENDS ======-->

	<!--====== CONTACT PART START ======-->

	<section id="contact" class="contact-area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 col-md-10">
					<div class="section-title text-center pb-30">
						<h3 class="title">Contatos</h3>
						<p class="text"></p>
					</div>
					<!-- section title -->
				</div>
			</div>
			<!-- row -->
			<div class="row">
				<div class="col-lg-12">

					<div class="contact-map mt-30">
						<iframe id="gmap_canvas"
							src="https://maps.google.com/maps?q=Mission%20District%2C%20San%20Francisco%2C%20CA%2C%20USA&t=&z=13&ie=UTF8&iwloc=&output=embed"
							frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
					</div>
					<!-- row -->
				</div>
			</div>
			<!-- row -->
			<div class="contact-info pt-30">
				<div class="row">
					<div class="col-lg-4 col-md-6">
						<div class="single-contact-info contact-color-1 mt-30 d-flex ">
							<div class="contact-info-icon">
								<i class="lni lni-map-marker"></i>
							</div>
							<div class="contact-info-content media-body">
								<p class="text">
									R. Pedro Vicente, 625 ·<br>Brasil.
								</p>
							</div>
						</div>
						<!-- single contact info -->
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="single-contact-info contact-color-2 mt-30 d-flex ">
							<div class="contact-info-icon">
								<i class="lni lni-envelope"></i>
							</div>
							<div class="contact-info-content media-body">
								<p class="text">c.azevedo@aluno.ifsp.edu.br</p>
							</div>
						</div>
						<!-- single contact info -->
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="single-contact-info contact-color-3 mt-30 d-flex ">
							<div class="contact-info-icon">
								<i class="lni lni-phone"></i>
							</div>
							<div class="contact-info-content media-body">
								<p class="text">+55 (11) 2763-7568</p>
							</div>
						</div>
						<!-- single contact info -->
					</div>
				</div>
				<!-- row -->
			</div>
			<!-- contact info -->

		</div>
		<!-- container -->
	</section>

	<!--====== CONTACT PART ENDS ======-->

	<!--====== FOOTER PART START ======-->

	<!-- Footer-->
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
	<a href="#" class="back-to-top"><i class="lni lni-chevron-up"></i></a>

	<!--====== Jquery js ======-->
	<script src="codigos_index/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="codigos_index/js/vendor/modernizr-3.7.1.min.js"></script>

	<!--====== Bootstrap js ======-->
	<script src="codigos_index/js/popper.min.js"></script>
	<script src="codigos_index/js/bootstrap.min.js"></script>

	<!--====== Slick js ======-->
	<script src="codigos_index/js/slick.min.js"></script>

	<!--====== Magnific Popup js ======-->
	<script src="codigos_index/js/jquery.magnific-popup.min.js"></script>

	<!--====== Ajax Contact js ======-->
	<script src="codigos_index/js/ajax-contact.js"></script>

	<!--====== Isotope js ======-->
	<script src="codigos_index/js/imagesloaded.pkgd.min.js"></script>
	<script src="codigos_index/js/isotope.pkgd.min.js"></script>

	<!--====== Scrolling Nav js ======-->
	<script src="codigos_index/js/jquery.easing.min.js"></script>
	<script src="codigos_index/js/scrolling-nav.js"></script>

	<!--====== Main js ======-->
	<script src="codigos_index/js/main.js"></script>
</body>
</html>