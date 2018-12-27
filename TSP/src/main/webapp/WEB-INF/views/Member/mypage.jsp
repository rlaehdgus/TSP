<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>TSP - 여행의 시작</title>
	</head>
	<body>
	<jsp:include page="../Layout/gnb.jsp"/>
	<!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-12 text-center">
          <h1 class="mt-5"><b><c:out value="${member.UName }"/></b>님의 회원 정보</h1>
					<f:form modelAttribute="memberVo" class="member_form" action="member_update.do" method="POST">
						<table style="margin: auto;">
							<tr>
								<td>아이디</td>
								<td><input type="text" name="uId" value="${member.UId }" readonly/></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="uPw" value="${member.UPw }"/></td>
							</tr>
							<tr>
								<td>이름</td>
								<td><input type="text" name="uName" value="${member.UName }"/></td>
							</tr>
							<tr>
								<td>폰번호</td>
								<td><input type="text" name="uPhone" value="${member.UPhone }"/></td>
							</tr>
							<tr>
								<td>주소</td>
								<td><input type="text" name="uAddr" value="${member.UAddr }"/></td>
							</tr>
							<tr>
								<td colspan="2">
									<input type="submit" />
								</td>
							</tr>
						</table>
					</f:form>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	</body>
</html>
<script>
$(".member_form").validate({
	  rules: {
	    uName: {
	      required: true,
	      minlength: 2
	    },     
	    uId: {
	      required: true,
	      minlength: 4
	    },
	    uPw: {
	      required: true,
	      minlength: 5
	    },
	    uPhone: {
	    	required: true,
	    	minlength: 8
	    },
	    uAddr: {
	    	required: true,
	    	minlength: 8
	    }
	  },
	  //For custom messages
	  messages: {
	    username:{
	      required: "Enter a username",
	      minlength: "Enter at least 4 characters"
	    }
	  },
	  errorElement : 'div',
	  errorPlacement: function(error, element) {
	    var placement = $(element).data('error');
	    if (placement) {
	      $(placement).append(error)
	    } else {
	      error.insertAfter(element);
	    }
	  }
	});
</script>