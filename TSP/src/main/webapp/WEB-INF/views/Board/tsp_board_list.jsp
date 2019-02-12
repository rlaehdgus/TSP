<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>TSP - 여행의 시작</title>
	</head>
	<body>
		<jsp:include page="../Layout/gnb.jsp"/>
		
		<h3 align="center" style="margin:20px;">글 목록</h3>
		<div style="text-align: center; margin: 10px;">
			<input type="button" value="글 작성" onClick="location.href='/board_write.do'"/>
		</div>
		<table border="1" style="margin:auto;">
			<tr>
				<th>글 번호</th>
				<th width="500px">글 제목</th>
				<th width="100px">작성자</th>
			</tr>
			<c:forEach items="${map.list }" var="list">
			<tr>
				<td><a href="/board_view.do?no=${list.no }">${list.no }</a></td>
				<td>${list.b_title }</td>
				<td>${list.b_name }</td>
			</tr>
			</c:forEach>
		</table>
	</body>
</html>