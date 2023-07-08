<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Style -->
    <link rel="stylesheet" href="css/style.css">

    <link href="css/styles1.css" rel="stylesheet" />
    <link href="css/footer.css" rel="stylesheet" />
    <title>Login #6</title>
  </head>
  <body>
  
    <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light dark">
        <div class="container px-4 px-lg-5">
            <a class="navbar-brand text-white ms-1" href="index.jsp">Sky IFSP</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon text-white ms-1"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4 ">
                    <li class="nav-item"><a class="nav-link active text-white ms-1" aria-current="page" href="index.jsp">Home</a></li>
                </ul>
                <span class=" text-dark ms-1">aa</span>
                <button class="btn btn-outline-dark" type="submit">
                <a href="verificarLogin" class=" text-white ms-1">
                   Login
                </a>
                </button>
            </div>
        </div>
    </nav>
  <div class="d-lg-flex half">
    <div class="bg order-1 order-md-2" style="background-image: url('images/bg_1.jpg');"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <div class="mb-4">
              <h3>Sign In</h3>
              <p class="mb-4"></p>
            </div>









































            <form action="login">
              <div class="form-group first">
                <label for="username">Email</label>
                <input type="text" class="form-control" name="HTML_email_USUARIO" required>

              </div>
              <div class="form-group last mb-3">
                <label for="password">Senha:</label>
                <input type="password" class="form-control" name="HTML_senha_USUARIO" id="password" required>
                
              </div>

              <input type="submit" value="Login" class="btn btn-block btn-primary">

            </form>
            
              <span class="d-block text-center my-4 text-muted">&mdash; or &mdash;</span>
              
              <div class="social-login">
                <a href="cadastro.jsp" class="facebook btn d-flex justify-content-center align-items-center">
                  <span class="icon-cadastro mr-3"></span> Cadastrar-se 
                </a>
              </div>
            













        







































          </div>
        </div>
      </div>
    </div>

    
  </div>

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
    
    

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>