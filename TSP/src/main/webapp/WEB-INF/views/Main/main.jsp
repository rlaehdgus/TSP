<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
		<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TSP - 항공의 시작</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/half-slider.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/3-col-portfolio.css">
  </head>
  <body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="main.do">TSP</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">              
              <a href="/login.do" class="nav-link">로그인</a>
            </li>
            <li class="nav-item">
              <a href="/join.do" class="nav-link">회원가입</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('${pageContext.request.contextPath}/resources/img/img_slide.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>First Slide</h3>
              <p>This is a description for the first slide.</p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('${pageContext.request.contextPath}/resources/img/img_slide1.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Second Slide</h3>
              <p>This is a description for the second slide.</p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('${pageContext.request.contextPath}/resources/img/img_slide2.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Third Slide</h3>
              <p>This is a description for the third slide.</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>

    <!-- Page Content -->
    <section class="py-5">
      <div class="container">
        <h1>Half Slider by Start Bootstrap</h1>
        <p>The background images for the slider are set directly in the HTML using inline CSS. The rest of the styles for this template are contained within the
          <code>half-slider.css</code>
          file.</p>
      </div>
      
      <!-- Page Content -->
	    <div class="container">
	
	      <!-- Page Heading -->
	      <h1 class="my-4">여행가기 좋은 나라
	        <small>(Top 6)</small>
	      </h1>
	
	      <div class="row">
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="http://placehold.it/700x400" alt="">
	            <div class="card-body">
	              <h4 class="card-title"></h4>
	              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="http://placehold.it/700x400" alt="">
	            <div class="card-body">
	              <h4 class="card-title"></h4>
	              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="http://placehold.it/700x400" alt="">
	            <div class="card-body">
	              <h4 class="card-title"></h4>
	              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="http://placehold.it/700x400" alt="">
	            <div class="card-body">
	              <h4 class="card-title"></h4>
	              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="http://placehold.it/700x400" alt="">
	            <div class="card-body">
	              <h4 class="card-title"></h4>
	              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="http://placehold.it/700x400" alt="">
	            <div class="card-body">
	              <h4 class="card-title"></h4>
	              <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
	            </div>
	          </div>
	        </div>
	      </div>
	      <!-- /.row -->
	     </div>
    </section>
    

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  </body>
</html>