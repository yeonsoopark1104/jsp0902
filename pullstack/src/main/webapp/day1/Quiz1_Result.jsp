<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- userId가 'test', pwd가 '1234'로 넘어올 경우 -->
	<!-- 화면에 파란색 글씨로 '로그인 성공' 출력 -->
	<!-- 아닐 경우 빨간색 글씨로 '로그인 실패' 출력 -->
	
	<form action="7_LoginResult.jsp" method="post">
	<div>
	<label>아이디 : <input type="text" name="userId"></label>
	</div>
	<div>
	<label>비밀번호 : <input type="password" name="pwd"></label>
	</div>
	</form>
	
	<%
		String userId = request.getParameter("userID");
		String pwd = request.getParameter("pwd");
	
	if(userId.equals("test") && pwd.equals("1234")) {
		out.println("<div style='color:blue;'> 로그인 성공 </div>");
		//response.sendRedirect("main.jsp");
	} else { 
		// out.println("<div style='color:red;'> 로그인 실패 </div>");
	}

	%>

	
</body>
</html>