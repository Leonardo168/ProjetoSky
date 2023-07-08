<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Basic Page Info -->
<meta charset="utf-8" />
<title>Dashboard - SkyIFSP</title>

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="vendors/images/apple-touch-icon.png" />
<link rel="icon" type="image/png" sizes="32x32"
	href="vendors/images/favicon-32x32.png" />
<link rel="icon" type="image/png" sizes="16x16"
	href="vendors/images/favicon-16x16.png" />

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
	rel="stylesheet" />
<!-- CSS -->
<link rel="stylesheet" type="text/css" href="vendors/styles/core.css" />
<link rel="stylesheet" type="text/css"
	href="vendors/styles/icon-font.min.css" />
<link rel="stylesheet" type="text/css"
	href="src/plugins/datatables/css/dataTables.bootstrap4.min.css" />
<link rel="stylesheet" type="text/css"
	href="src/plugins/datatables/css/responsive.bootstrap4.min.css" />
<link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=G-GBZ3SGGX85"></script>
<script async
	src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2973766580778258"
	crossorigin="anonymous"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag("js", new Date());

	gtag("config", "G-GBZ3SGGX85");
</script>
<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			"gtm.start" : new Date().getTime(),
			event : "gtm.js"
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != "dataLayer" ? "&l="
				+ l
				: "";
		j.async = true;
		j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, "script", "dataLayer", "GTM-NXZMQSS");
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
	$(function() {
		$("#inputSubmit").click(function() {
			var senha = $("#inputSenha").val();
			var senha2 = $("#inputSenha2").val();
			if (senha != senha2) {
				event.preventDefault();
				alert("As senhas não são iguais!");
			}
		});
	});
</script>
<!-- End Google Tag Manager -->
<style>
.inputs {
	width: 50%;
	border-style: solid;
	border-radius: 4px;
	height: 40px;
	border-color: black;
}

.botao-alterar-account {
	width: 50%;
	height: 50px;
	border: none;
	background-color: black;
	transition: 1s;
	color: blanchedalmond;
	border-radius: 4px;
}

.botao-alterar-account:hover {
	width: 50%;
	transition: 1s;
	height: 50px;
	background-color: white;
	color: black;
	border-radius: 4px;
	border-style: solid;
}

.inputs {
	width: 50%;
	height: 35px;
	border-radius: 4px;
	border-style: solid;
	border-color: black;
}

.botao-excluir-account {
	width: 50%;
	height: 35px;
	border-radius: 4px;
	color: white;
	background-color: #900;
	border-style: solid;
	border: none;
}
</style>
</head>
<body>
	<div class="pre-loader">
		<div class="pre-loader-box">
			<div class="loader-logo">
				<h1>SkyIFSP airlines</h1>
			</div>
			<div class="loader-progress" id="progress_div">
				<div class="bar" id="bar1"></div>
			</div>
			<div class="percent" id="percent1">0%</div>
			<div class="loading-text">Loading...</div>
		</div>
	</div>
	<div class="header">
		<div class="header-left">
			<div class="menu-icon bi bi-list"></div>
			<div class="search-toggle-icon bi bi-search"
				data-toggle="header_search"></div>
			<div class="header-search"></div>
		</div>
		<div class="header-right">
			<div class="dashboard-setting user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="javascript:;"
						data-toggle="right-sidebar"> <i class="dw dw-settings2"></i>
					</a>
				</div>
			</div>
			<div class="user-notification">
				<div class="dropdown">
					<a class="dropdown-toggle no-arrow" href="#" role="button"
						data-toggle="dropdown"> <i
						class="icon-copy dw dw-notification"></i> <span
						class="badge notification-active"></span>
					</a>
					<div class="dropdown-menu dropdown-menu-right">
						<div class="notification-list mx-h-350 customscroll">
							<ul>
								<li><a href="#">

										<h3>Sistema Sky IFSP</h3>
										<p>Seja bem vindo ao sistema do Sky IFSP</p>
								</a></li>
							</ul>
						</div>
					</div>
				</div>

			</div>

			<div class="user-info-dropdown">
				<div class="dropdown">
					<a class="dropdown-toggle" href="#" role="button"
						data-toggle="dropdown">
						<div style="margin-top: 5%; width: 100px;">
							<span class="user-name"> <%
 out.print(request.getAttribute("HTML_nome_USUARIO"));
 %>
							</span>
						</div>
					</a>
					<div
						class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
						<a class="dropdown-item" href="index.jsp" class="dw dw-user1"></i>
							Home</a> <a class="dropdown-item" href="lerUsuario"
							class="dw dw-user1"></i> Profile</a> <a class="dropdown-item"
							href="logout"><i class="dw dw-logout"></i> Log Out</a>
					</div>
				</div>
			</div>

		</div>
	</div>

	<div class="right-sidebar">
		<div class="sidebar-title">
			<h3 class="weight-600 font-16 text-blue">
				Layout Settings <span class="btn-block font-weight-400 font-12">User
					Interface Settings</span>
			</h3>
			<div class="close-sidebar" data-toggle="right-sidebar-close">
				<i class="icon-copy ion-close-round"></i>
			</div>
		</div>
		<div class="right-sidebar-body customscroll">
			<div class="right-sidebar-body-content">
				<h4 class="weight-600 font-18 pb-10">Header Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary header-white active">White</a> <a
						href="javascript:void(0);"
						class="btn btn-outline-primary header-dark">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Sidebar Background</h4>
				<div class="sidebar-btn-group pb-30 mb-10">
					<a href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-light">White</a> <a
						href="javascript:void(0);"
						class="btn btn-outline-primary sidebar-dark active">Dark</a>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu Dropdown Icon</h4>
				<div class="sidebar-radio-group pb-10 mb-10">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-1" name="menu-dropdown-icon"
							class="custom-control-input" value="icon-style-1" checked="" />
						<label class="custom-control-label" for="sidebaricon-1"><i
							class="fa fa-angle-down"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-2" name="menu-dropdown-icon"
							class="custom-control-input" value="icon-style-2" /> <label
							class="custom-control-label" for="sidebaricon-2"><i
							class="ion-plus-round"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebaricon-3" name="menu-dropdown-icon"
							class="custom-control-input" value="icon-style-3" /> <label
							class="custom-control-label" for="sidebaricon-3"><i
							class="fa fa-angle-double-right"></i></label>
					</div>
				</div>

				<h4 class="weight-600 font-18 pb-10">Menu List Icon</h4>
				<div class="sidebar-radio-group pb-30 mb-10">
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-1" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-1" checked="" />
						<label class="custom-control-label" for="sidebariconlist-1"><i
							class="ion-minus-round"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-2" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-2" /> <label
							class="custom-control-label" for="sidebariconlist-2"><i
							class="fa fa-circle-o" aria-hidden="true"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-3" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-3" /> <label
							class="custom-control-label" for="sidebariconlist-3"><i
							class="dw dw-check"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-4" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-4" checked="" />
						<label class="custom-control-label" for="sidebariconlist-4"><i
							class="icon-copy dw dw-next-2"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-5" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-5" /> <label
							class="custom-control-label" for="sidebariconlist-5"><i
							class="dw dw-fast-forward-1"></i></label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="sidebariconlist-6" name="menu-list-icon"
							class="custom-control-input" value="icon-list-style-6" /> <label
							class="custom-control-label" for="sidebariconlist-6"><i
							class="dw dw-next"></i></label>
					</div>
				</div>

				<div class="reset-options pt-30 text-center">
					<button class="btn btn-danger" id="reset-settings">Reset
						Settings</button>
				</div>
			</div>
		</div>
	</div>

	<div class="left-side-bar">
		<div class="brand-logo">
			<a href="index.jsp"> <span style="color: black;">Sky IFSP</span>
			</a>
			<div class="close-sidebar" data-toggle="left-sidebar-close">
				<i class="ion-close-round"></i>
			</div>
		</div>
		<div class="menu-block customscroll">
			<div class="sidebar-menu">
				<ul id="accordion-menu">


					<li><a href="listarReservas" class="dropdown-toggle no-arrow">
							<span class="micon bi bi-home4-week"></span><span class="mtext">Minhas Reservas</span>
					</a></li>

					<li><a href="index.jsp" class="dropdown-toggle no-arrow">
							<span class="micon bi bi-home4-week"></span><span class="mtext">Procurar
								por Voos</span>
					</a></li>

					<li>
						<div class="dropdown-divider"></div>
					</li>

					<li><a href="lerUsuario" class="dropdown-toggle no-arrow">
							<span class="micon bi bi-home4-week"></span><span class="mtext">Minha
								Conta</span>
					</a></li>

				</ul>
			</div>
		</div>
	</div>
	<div class="mobile-menu-overlay"></div>

	<div class="main-container">
		<div class="xs-pd-20-10 pd-ltr-20"></div>

		<div class="row"></div>

		<div class="card-box pb-10">
			<div class="row">
				<div class="col-lg-5">
					<br> <br> <br> <br> <br> <br>
					<center>
						<img src="codigos_index/images/usuario.png" width="40%"
							height="40%"> <br> <br> <label><span
							style="font-weight: bold; font-size: 15pt"> <%
 out.print(request.getAttribute("HTML_nome_USUARIO"));
 %></label>

					</center>
					<br> <br> <br> <br> <br> <br>
				</div>
				<div class="col-lg-7"
					style="border-width: 0px 0px 0px 3px; border-style: dashed dotted; border-color: #000 #090 #900 rgb(0, 0, 0); padding: 20px;">
					<form action="updateUsuario">
						<br>
						<h4>Editar Minhas informações:</h4>
						<br> <label>Nome:</label><br> <input type="text"
							name="HTML_nome_USUARIO" readonly class="inputs"
							value="<%out.print(request.getAttribute("HTML_nome_USUARIO"));%>">
						<br> <br> <label>Email:</label><br> <input
							type="email" name="HTML_email_USUARIO" class="inputs"
							value="<%out.print(request.getAttribute("HTML_email_USUARIO"));%>"
							required> <br> <br> <label>CPF:</label><br>
						<input type="number" name="HTML_cpf_USUARIO" readonly class="inputs"
							value="<%out.print(request.getAttribute("HTML_cpf_USUARIO"));%>">
						<br> <br> <label>Telefone:</label><br> <input
							type="number" name="HTML_telefone_USUARIO" class="inputs"
							value="<%out.print(request.getAttribute("HTML_telefone_USUARIO"));%>"
							required> <br> <br> <label>Endereço:</label><br>
						<input type="text" name="HTML_endereco_USUARIO" class="inputs"
							value="<%out.print(request.getAttribute("HTML_endereco_USUARIO"));%>"
							required> <br> <br> <label>Senha:</label><br>
						<input type="password" name="HTML_password_USUARIO" class="inputs"
							id="inputSenha"
							value="<%out.print(request.getAttribute("HTML_password_USUARIO"));%>"
							pattern=".{6,45}" required
							title="O tamanho da senha de ser de 6 a 45 caracteres"> <br>
						<br> <label>Confirmar senha:</label><br> <input
							type="password" class="inputs" id="inputSenha2"> <br>
						<br> <input type="submit" class="botao-alterar-account"
							id="inputSubmit" value="Alterar Informações"><br>
					</form>
				</div>
			</div>
		</div>
		<br>
		<div class="footer-wrap pd-20 mb-20 card-box">Sky IFSP - from
			Federal Institute of Sâo Paulo</div>
	</div>
	</div>
	<!-- welcome modal start -->
	<div class="welcome-modal">
		<button class="welcome-modal-close">
			<i class="bi bi-x-lg"></i>
		</button>
		<iframe class="w-100 border-0"
			src="https://embed.lottiefiles.com/animation/31548"></iframe>
		<div class="text-center">
			<h3 class="h5 weight-500 text-center mb-2">
				Seja bem vindo ao seu painel <span role="img" aria-label="gratitude">❤️</span>
			</h3>

		</div>
		<div class="text-center mb-1"></div>

		<p class="font-14 text-center mb-1 d-none d-md-block">Maded by Sky
			IFSP</p>

	</div>

	<!-- welcome modal end -->
	<!-- js -->
	<script src="vendors/scripts/core.js"></script>
	<script src="vendors/scripts/script.min.js"></script>
	<script src="vendors/scripts/process.js"></script>
	<script src="vendors/scripts/layout-settings.js"></script>
	<script src="src/plugins/apexcharts/apexcharts.min.js"></script>
	<script src="src/plugins/datatables/js/jquery.dataTables.min.js"></script>
	<script src="src/plugins/datatables/js/dataTables.bootstrap4.min.js"></script>
	<script src="src/plugins/datatables/js/dataTables.responsive.min.js"></script>
	<script src="src/plugins/datatables/js/responsive.bootstrap4.min.js"></script>
	<script src="vendors/scripts/dashboard3.js"></script>
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->
</body>
</html>
