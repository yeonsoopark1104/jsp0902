<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	#container{
		width : 700px;
		margin : 20px auto;
	}
	table, tr, td, th{
	border : 1px solid black;
	text-align : center;
	border-collapse : collapse;
	padding : 5px 10px;
	}
</style>
</head>
<body>
	<%@ include file="../db/db.jsp" %>
	<div id="container">
		<table>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>학과</th>
				<th>시험 평균점수</th>
			</tr>
		</table>
	</div>
	<div style="gold">Golden Experience Requiem</div>
	
		<tr>
			 		<td> <%= rs.getString("BOARDNO") %> </td>
			<td> 
				<%-- <a href="Board-View.jsp?boardNo=<%= rs.getString("BOARDNO") %>"><%= rs.getString("TITLE") %></a> --%> 
			<a href="javascript:;" onclick="fnBoard(<%= rs.getString("BOARDNO") %>)"><%= rs.getString("TITLE") %></a>
			</td>
			<td> <%= rs.getString("STU_NUM") %> </td>
			<td> <%= rs.getString("STU_NAME") %> </td>
			<td> <%= rs.getString("STU_") %> </td>
		</tr>
	
</body>
</html>