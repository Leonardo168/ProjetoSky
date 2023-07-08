<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="model.Voo"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Voo> lista = (ArrayList<Voo>) request.getAttribute("voosBusca");
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Homepage - Sky IFSP</title>
    
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles1.css" rel="stylesheet" />
        <link href="css/footer.css" rel="stylesheet" />



		<!-- Site favicon -->
		<link
        rel="apple-touch-icon"
        sizes="180x180"
        href="vendors/images/apple-touch-icon.png"
    />
    <link
        rel="icon"
        type="image/png"
        sizes="32x32"
        href="vendors/images/favicon-32x32.png"
    />
    <link
        rel="icon"
        type="image/png"
        sizes="16x16"
        href="vendors/images/favicon-16x16.png"
    />

    <!-- Mobile Specific Metas -->
    <meta
        name="viewport"
        content="width=device-width, initial-scale=1, maximum-scale=1"
    />

    <!-- Google Font -->
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap"
        rel="stylesheet"
    />
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="vendors/styles/core.css" />
    <link
        rel="stylesheet"
        type="text/css"
        href="vendors/styles/icon-font.min.css"
    />
    <link
        rel="stylesheet"
        type="text/css"
        href="src/plugins/datatables/css/dataTables.bootstrap4.min.css"
    />
    <link
        rel="stylesheet"
        type="text/css"
        href="src/plugins/datatables/css/responsive.bootstrap4.min.css"
    />
    <link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script
        async
        src="https://www.googletagmanager.com/gtag/js?id=G-GBZ3SGGX85"
    ></script>
    <script
        async
        src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-2973766580778258"
        crossorigin="anonymous"
    ></script>
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
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({ "gtm.start": new Date().getTime(), event: "gtm.js" });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != "dataLayer" ? "&l=" + l : "";
            j.async = true;
            j.src = "https://www.googletagmanager.com/gtm.js?id=" + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, "script", "dataLayer", "GTM-NXZMQSS");
    </script>
    <!-- End Google Tag Manager -->

        <style>
        input{
        border-radius: 4px; 
        }
        label{
        font-weight: bold;
        }
        .boxee{
            width: 110%;
        background-color: white;
        border: 2px solid black;
        border-radius: 20px;
        align-content: normal;
        box-shadow: inset 0 0 20px gray; /* sombra interna cinza, com blur de 20px. */
        }
        .botaoProcura{
        width: 20%; 
        background-color: black; 
        color:white;
        border: none;
        transition: 1s;
        border-radius: 5px;
        height: 45px
        }
        .botaoProcura:hover{
        width: 20%; 
        background-color: white; 
        color:black;
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
                <a class="navbar-brand text-white ms-1" href="index.jsp">Sky IFSP</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon text-white ms-1"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4 ">
                        <li class="nav-item"><a class="nav-link active text-white ms-1" aria-current="page" href="index.jsp">Home</a></li>
                    </ul>
                    <span class=" text-dark ms-1"></span>
                    <button class="btn btn-outline-dark" type="submit">
                    <a href="verificarLogin" class=" text-white ms-1">
                       Login
                    </a>
                    </button>
                </div>
            </div>
        </nav>
    </header>
        <!-- Header-->












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
        <br><br>
        <div class="row">
            <style>
                .button-pesquisa{
                    background-color: black;
                    width: 15%;
                    color:aliceblue;
                    border:none;
                    transition: 1s;
                    height: 40px;
                }
                .button-pesquisa:hover{
                    background-color: white;
                    width: 10%;
                    color:black;
                    border-color: black;
                    border-style: solid;
                    transition: 1s;
                    height: 40px;
                }


            </style>
            <div class="col-lg-12">
            </div>
        </div>
        </div>
                <div class="row">
                    <div class="col-lg-1">
                     
                    </div>

                    <div class="col-lg-12">
                      
                        <section class="py-5">
                            <div class="container px-4 px-lg-5 mt-5">
                               
                                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                                    
                                













































                                    <% for (int i = 0; i < lista.size(); i++) { %>
                                   

                                    <div class="col mb-5">
                                        <div class="card h-100">
                                            <!-- Sale badge-->
                                         
                                            <!-- Product image-->
                                            
                                            <div class="card-body p-4">
                                                <div class="text-center">
                                                    <!-- Product name-->
                                                    
                                                    
                                                    <!-- Product reviews-->
                                                    <label>Número do Voo:</label>
                                                    <%=lista.get(i).getNro()%>
                                                    <br>
                                                    <label>Assentos disponíveis:</label>
                                                    <%=lista.get(i).getAssentosVagos()%>
                                                    <br>
                                                    <label>Local de Partida do Voo:</label>
                                                    <%=lista.get(i).getOrigem()%>
                                                    <br>
                                                    <label>Local de Destino do Voo:</label>
                                                    <%=lista.get(i).getDestino()%>
                                                    <br>
                                                    <label>Data de Partida:</label>
                                                    <%=lista.get(i).getData()%>
                                                    <br>
                                                    <!-- Product price-->
                                                    <a href="reservar?nro=<%=lista.get(i).getNro()%>"><input type="button" style="background-color: black; color:aliceblue; border: none; border-radius: 4px; width: 80%;" value="Reservar"></a>
                                                    
                                                </div>
                                            </div>
                                            <!-- Product actions-->
                                            
                                        </div>
                                    </div>
                                            <!-- Product actions-->
                                      

                                            <%}%>










































                                </div>
                            </div>
                        </section>
				
				<br>
			</div>

		<!-- welcome modal start -->
		<div class="welcome-modal">
			<button class="welcome-modal-close">
				<i class="bi bi-x-lg"></i>
			</button>
			<iframe
				class="w-100 border-0"
				src="https://embed.lottiefiles.com/animation/31548"
			></iframe>
			<div class="text-center">
				<h3 class="h5 weight-500 text-center mb-2">
					Seja bem vindo ao seu painel
					<span role="img" aria-label="gratitude">❤️</span>
				</h3>
				
			</div>
			<div class="text-center mb-1">
				
			</div>
			
			<p class="font-14 text-center mb-1 d-none d-md-block">
				Maded by Sky IFSP
			</p>
			
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
		<noscript
			><iframe
				src="https://www.googletagmanager.com/ns.html?id=GTM-NXZMQSS"
				height="0"
				width="0"
				style="display: none; visibility: hidden"
			></iframe
		></noscript>
		<!-- End Google Tag Manager (noscript) -->













        <!-- Footer-->
        <footer class="main_footer container2">
    
            <div class="content">
        
                <div class="colfooter">
                    
                    <h3 class="titleFooter"> Menu</h3>
                    
                    <ul>
                    
                      <li><a href="#" title="Página Inícial">Página Inícial</a></li>
                      <li><a href="#" title="Sobre a Empresa">Sobre a Empresa</a></li>
                      <li><a href="#" title="Galeria de Fotos">Galeria de Fotos</a></li>
                      <li><a href="#" title="Fale Conosco">Fale Conosco</a></li>
                    
                    </ul>
        
                </div><!--Col Footer 1-->        
        
                <div class="colfooter">
                   
                   <h3 class="titleFooter"> Contato</h3>
                   <p><i class="icon icon-mail"></i> contato@seusite.com.br</p>
                   <p><i class="icon icon-phone"></i> 21 90000-0000</p>
                   <p><i class="icon icon-whatsapp"></i> 21 90000-0000</p>
        
                </div><!--Col Footer 2-->
        
                <div class="colfooter">
                   
                   <h3 class="titleFooter"> Redes Sociais</h3>
                    
                   <a href="#" class="botao"><span> <i class="icon icon-facebook"></i> </span></a>            
                   <a href="#" class="botao"><span> <i class="icon icon-instagram"></i> </span></a>            
                   <a href="#" class="botao"><span> <i class="icon icon-twitter"></i> </span></a>            
                   <a href="#" class="botao"><span> <i class="icon icon-pinterest"></i> </span></a>            
        
                </div><!--Col Footer 3-->
        
        
                <div class="clear"></div>
            
            </div><!--Contant-->
        
            <div class="main_footer_copy">
                
                <p class="m-b-footer"> Seusite - 2021, todos os direitos reservados.</p> 
                <p class="by"><i class="icon icon-heart-3"></i> Desenvolvido por: <a href="#" title="Seu nome">Gabriel Camargo, Gabriel Novato e Leonardo Gomes</a></p>
            
            </div>
            
        </footer>
                <!-- Bootstrap core JS-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS-->
                <script src="js/scripts.js"></script>
            </body>
            </body>
        </html>