<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="/resources/css/member/login.css">
</head>
<body>
<div class="wrapper">
	
	<div class="wrap">
		<form id = "Login_form" method ="post">
		<div class="logo_wrap">
			<span>cocktail 레시피</span>
		</div>
		<div class="login_wrap"> 
			<div class="id_wrap">
					<div class="id_input_box">
					<input class="id_input" name="memberId">
				</div>
			</div>
			<div class="pw_wrap">
				<div class="pw_input_box">
					<input class="pw_input" name="memberPw">
				</div>
			</div>
			<div class="login_button_wrap">
				<input type="button" class="login_button" value="로그인">
			</div>			
		</div>
		</form>
		
	</div>

</div>

<script>
	/* 로그인 버튼 클릭 메소드 */
	$(".login_button").click(function(){
		
		alert("로그인 버튼 작동");
		
		//로그인 메소드 서버 요청
		$("#login_form").attr("action", "/member/join");
		$("#login_form").submit();
	});
	
</script>

</body>
</html>