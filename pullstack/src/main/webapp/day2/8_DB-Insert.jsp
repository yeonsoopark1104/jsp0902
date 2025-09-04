<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#container{
		width: 700px;
		margin : 20px auto;
	}
	table, tr, td, th {
		border : 1px solid black;
		text-align: center;
		border-collapse: collapse;
		padding : 5px 10px;
	}
</style>
</head>
<body>
	<%@ include file="../db/db.jsp" %>
	<%
		String stuNo = request.getParameter("stuNo");
		String query = "SELECT * FROM STUDENT "
					 + "WHERE STU_NO = " + stuNo;
		ResultSet rs = stmt.executeQuery(query);
		
		if(rs.next()){
	%>
		<div>이미 사용중인 학번입니다.</div>
	<%
		} else {
	%>		
			<div>사용 가능한 학번입니다.</div>
	<% 
		}
	%>
	<div>
		<input type="button" value="되돌아가기">
	</div>
	
</body>
</html>
<script>
	function fnCheck(){
		let stu = document.stu;
		let stuNo = stu.stuNo.value;
		console.log(stu.stuNo.value);
		console.log('Id-Check.jsp?stuNo=\${stuNo}');
		window.open('Id-Check.jsp?stuNo=\${stuNo}', "check", "width=300, height=300");
	}
</script>








