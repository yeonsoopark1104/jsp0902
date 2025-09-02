<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="Join_Result.jsp">
		<div>
			아이디 : <input name="id">
		</div>
		<div>
			<label>비밀번호 : <input type="password" name="pwd"></label>
		</div>
		<div>
			<label>비밀번호 확인 : <input type="password" name="pwd2"</label>
		</div>
		<div>
			<label>이름 : <input type="name" name="name"></label>
		</div>
		<div>
			<label>핸드폰 : 
				<select name="phone1">
					<option> value="010"
				</select>
			</label>
		</div>
		<div>
			성별 :
			<input type="radio" name="gender" value="남성">남성
			<input type="radio" name="gender" value="여성">여성
		</div>
		<div>
			취미 :
			<input type="checkbox" name="hobby" value="운동">운동
			<input type="checkbox" name="hobby" value="코딩">코딩
			<input type="checkbox" name="hobby" value="독서">독서
			<input type="checkbox" name="hobby" value="영화감상">영화감상
			<input type="checkbox" name="hobby" value="게임">게임
		</div>
		<div>
		<input type="submit" value="가입" onclick="fnJoin()">
		</div>
	</form>
</body>
</head>
<script>

function fnjoin(){
	let join = document.join;
	
	if(join.id.value.length < 6){
		alert("아이디는 최소 6글자 입니다.");
		join.id.focus();
		return;
	}
	
	let pwdRule = ^[a-zA-Z\\d`~!@#$%^&*()-_=+]{8,24}$/gi;
	if(!pwdRule.test(join.pwd.value)){
		alert("비밀번호는 특수문자가 포함되어야 합니다.");
		join.pwd.focus();
		return;
	}

	if(join.pwd.value != login.pwd2.value){
		alert("비밀번호가 다릅니다.");
		join.pwd.focus();
		return;
	}
	
	if(join.pwd.value.length < 8){
		alert("비밀번호는 8글자 이상이어야 합니다.");
		join.pwd.focus();
		return;
	}
	if(join.userName.value.length == 0){
		alert("이름을 입력해주세요.")
		join.userName.focus();
		return;
	}
}

</script>