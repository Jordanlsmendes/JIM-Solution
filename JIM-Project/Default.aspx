<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JIM_Project.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
     <link rel="stylesheet" href="css/style.css"/>
    <title></title>
</head>
<body>


     <!-- NAVBAR -->
<header style="background-color:#620500;">
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">

            <!-- LOGO ESQUERDA -->
            <a class="navbar-brand" style="color:white; font-size:1.5rem;" href="index.html">
                GIM
            </a>

            <!-- BOTÃO MOBILE -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- CONTEÚDO -->
            <div class="collapse navbar-collapse" id="navbarNav">

                <!-- MENU NO CENTRO -->
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link active" style="color:white;" href="#">Início</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
</header>



     <!-- CARROSSEL -->
 <main style="background-color:#9c3f3a;">
     <section>
         <div id="myCarousel" class="carousel slide mb-5" data-bs-ride="carousel">
             <div class="carousel-indicators">
                 <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active"
                     aria-label="Slide 1">
                 </button>
                 <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
                 <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
             </div>

             <div class="carousel-inner">
                 <div class="carousel-item active">
                     <img src="img/coxinha.jpg" class="d-block w-100 carousel-item-img"
                         alt="Prato saudável com legumes e arroz">
                     <div class="container">
                         <div class="carousel-caption text-start">
                             <h1>Alimentação saudável e acessível</h1>
                             <p>Conectamos produtores locais e estudantes em uma rede de alimentação sustentável.</p>
                             <p><a class="btn btn-lg" style="background-color:white;color:#9c3f3a;" href="#">Conheça nossos produtos</a></p>
                         </div>
                     </div>
                 </div>

                 <div class="carousel-item">
                     <img src="img/comida-deliciosa-na-mesa.jpg" class="d-block w-100 carousel-item-img" alt="Prato com proteína e salada">
                     <div class="container">
                         <div class="carousel-caption">
                             <h1>Produção local valorizada</h1>
                             <p>Trabalhamos com ingredientes frescos e de produtores da região.</p>
                             <p><a class="btn btn-lg" style="background-color:white;color:#9c3f3a;" href="#">Saiba mais</a></p>
                         </div>
                     </div>
                 </div>

                 <div class="carousel-item">
                     <img src="img/salada-de-cenoura-fresca-salada-de-frente-ralada-com-nozes-e-alho-na-mesa-escura-dieta-salada-cor-saude-de-nozes.jpg" class="d-block w-100 carousel-item-img" alt="Equipe do projeto KiFome">
                     <div class="container">
                         <div class="carousel-caption text-end">
                             <h1>KiFome é inovação e sabor</h1>
                             <p>Projetos que alimentam, educam e transformam.</p>
                             <p><a class="btn btn-lg" style="background-color:white;color:#9c3f3a;" href="#">Participe do projeto</a></p>
                         </div>
                     </div>
                 </div>
             </div>

             <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                 <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                 <span class="visually-hidden">Anterior</span>
             </button>
             <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                 <span class="carousel-control-next-icon" aria-hidden="true"></span>
                 <span class="visually-hidden">Próximo</span>
             </button>
         </div>
     </section>

      <!-- DESTAQUES -->
 <section style="background-color:#9c3f3a;">
  <div class="container py-4">
    <div class="row justify-content-center text-center">
      <div class="col-lg-4">
        <h2 class="fw-bold" style="color:#ffff;">Produtos Cadastrados</h2>
        <p style="color:#ffff;">Estoque de produtos adicionados ao sistema</p>
      </div>
    </div>
  </div>
</section>


      <!-- RODAPÉ -->
 <footer class="bg-light text-muted py-5 mt-4">
     <div class="container">
         <div class="row">
             <div class="col-md-3">
                 <h5>GIM</h5>
                 <ul class="list-unstyled">
                     <li><a href="#" class="text-muted">Sobre</a></li>
                     <li><a href="#" class="text-muted">Contato</a></li>
                     <li><a href="#" class="text-muted">Equipe</a></li>
                 </ul>
             </div>
             <div class="col-md-3">
                 <h5>Produtos</h5>
                 <ul class="list-unstyled">
                     <li><a href="#" class="text-muted">Cardápio</a></li>
                     <li><a href="#" class="text-muted">Planos</a></li>
                     <li><a href="#" class="text-muted">Parcerias</a></li>
                 </ul>
             </div>
             <div class="col-md-6">
                 <form>
                     <h5>Receba novidades</h5>
                     <p>Cadastre seu e-mail para receber atualizações e promoções.</p>
                     <div class="input-group">
                         <input type="email" class="form-control" placeholder="Seu e-mail">
                         <button class="btn" style="background-color:#9c3f3a;color:white;" type="submit">Cadastrar</button>
                     </div>
                 </form>
             </div>
         </div>
         <div class="d-flex justify-content-between pt-4 border-top mt-4">
             <p>&copy; 2025 GIM. Todos os direitos reservados.</p>
             <div>
                 <a href="#" class="text-muted me-3">Instagram</a>
                 <a href="#" class="text-muted">Facebook</a>
             </div>
         </div>
     </div>
 </footer>

      
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>
