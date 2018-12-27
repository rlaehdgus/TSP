<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
		<meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>TSP - 여행의 시작</title>
  </head>
  <body>
    <!-- Navigation -->
    <jsp:include page="../Layout/gnb.jsp"/>
    <jsp:include page="../Layout/menu.jsp"/>

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox"> 
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('${pageContext.request.contextPath}/resources/img/back_img.jpg'); opacity: 0.5!important;">
          </div>
        </div>
      </div>
    </header>

    <!-- Page Content -->
    <section class="py-5">
      <div class="container">
        <h1>TSP 항공 소개</h1>
        <p>안녕하세요 여러분의 여행을 책임질 <code>TSP</code> 항공입니다. <br>저희 <code>TSP</code> 항공은 고객님이 행복하고 편안한 여행을 다녀오실 수 있도록 많은 도움을 드리는 항공입니다.</p>
      </div>
      
      <!-- Page Content -->
	    <div class="container">
	
	      <!-- Page Heading -->
	      <h1 class="my-4">추천 여행지
	        <small>(Top 6)</small>
	      </h1>
	
	      <div class="row">
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="/resources/img/England.jpg" alt="">
	            <div class="card-body">
	              <h4 class="card-title">영국</h4>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="/resources/img/GoldCoast.jpg" alt="">
	            <div class="card-body">
	              <h4 class="card-title">골든코스트</h4>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="/resources/img/crete.jpg" alt="">
	            <div class="card-body">
	              <h4 class="card-title">크리테</h4>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="/resources/img/paris.jpg" alt="">
	            <div class="card-body">
	              <h4 class="card-title">파리</h4>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="/resources/img/france.jpg" alt="">
	            <div class="card-body">
	              <h4 class="card-title">발리</h4>
	            </div>
	          </div>
	        </div>
	        <div class="col-lg-4 col-sm-6 portfolio-item">
	          <div class="card h-100">
	            <img class="card-img-top" src="/resources/img/boracay.jpg" alt="">
	            <div class="card-body">
	              <h4 class="card-title">보라카이</h4>
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