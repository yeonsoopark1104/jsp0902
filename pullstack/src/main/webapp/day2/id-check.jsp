<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	
	function fnBack(){
		window.opener.fnReturn();
		window.close();
	}
	
</script>