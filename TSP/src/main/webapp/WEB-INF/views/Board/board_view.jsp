<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>TSP - 여행의 시작</title>
	<style>
	.border-cs {
	
	}
	
	.lay-cs .border-cs {
		padding: 5px;
	}
	</style>
	</head>
	<body>
		<jsp:include page="../Layout/gnb.jsp"/>
		
		<table id="tbl-cs" style="width: 700px; margin: auto;">
			<tr>
				<td>
					<div class="lay-cs" style="float:left; text-align: center;">
						<div class="border-cs" align="center" style="float:left;">TITLE:</div>
						<div class="border-cs" align="center" style="float:left;">
							<span>${view.b_title }</span>
						</div>
					</div>
					
					<div class="lay-cs" style="float:right; text-align: center;">
						<div class="border-cs" align="center" style="float:left;">WRITER:</div>
						<div class="border-cs" align="center" style="float:left;">
							<span>${view.b_name }</span>
						</div>
					</div>
					
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div class="border-cs" align="center">CONTENTS</div>
					<div class="border-cs" style="width: 700px; height: 400px;">${view.b_content }</div>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="수정" onClick="location.href='board_update.do?no=${view.no}'"/>
					<input type="button" value="목록" onClick="location.href='tsp_board_list.do'"/>
				</td>
			</tr>
		</table>
	</body>
</html>