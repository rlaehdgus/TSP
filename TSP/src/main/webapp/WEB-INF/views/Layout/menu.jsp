<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/menu.css">
	</head>
	<body>
	<a href="javascript:display();" class="btn_menu" >menu</a>
		<div class="side_menu" id="side_menu">
	   	<ul class="menu_al">
	    	<li class="menu_list">
	    		<a href="tsp_board.do" class="menu_link">공지사항</a>
	    	</li>
	    	<li class="menu_list">
	    		<a href="#" class="menu_link">미정</a>
	    	</li>
	    	<li class="menu_list">
	    		<a href="#" class="menu_link">미정</a>
	    	</li>
	    </ul>
	   </div>
	</body>
</html>
<script type="text/javascript">
function display(){
	var menu = document.getElementById('side_menu');
	if(menu.style.display == 'none'){
		menu.style.display = 'block';
	}else{
		menu.style.display = 'none';
	}
}
</script>