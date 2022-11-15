<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
   crossorigin="anonymous"></script>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>ShapeBootstrap Clean Template</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

   <!-- css stylesheet 불러오기 -->
   <link href="../resources/css/bootstrap.min.css?after" rel="stylesheet">
   <link href="../resources/css/bootstrap-responsive.min.css?after" rel="stylesheet">
   <link href="../resources/css/style.css?after" rel="stylesheet">
  <!-- 레시피 검색 html-->
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="img/favicon.png">
  
<link rel="stylesheet" href="/resources/css/member/login.css?after">

<script src="http://code.jquery.com/jquery.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>

<script src="../resources/js/side2.js"></script>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<link href="../resources/css/style2.css" rel="stylesheet">



</head>


<body>
 <%@include file="../includes/member/header2.jsp" %>

	<div class="container">
	<div class="login-bg">
<div class="wrapper">

<div class="wrap">
		<form id="login_form" method="post">
			<div class="logo_wrap">
				<span>Sign In</span>
			</div>
			
			<div class="login_wrap"> 
				<div class="id_wrap">
				id
						<div class="id_input_box">
						<input class="id_input" name="memberId">
					</div>
				</div>
				<div class="pw_wrap">
				password
					<div class="pw_input_box">
						<input class="pw_input" name="memberPw">
					</div>
				</div>
				
				<c:if test = "${result == 0 }">
					<div class="login_warn"> ID 또는 비밀번호가 일치하지 않습니다. </div>
				</c:if>
			
				<div class="login_button_wrap">
					<input type="button" class="login_button" value="SIGN IN">
				</div>
				
				
							
			</div>
		</form>	
	</div>
</div>

</div>
</div>

<%@include file="../includes/footer.jsp" %>

<script>
	/* 로그인 버튼 클릭 메소드 */
	$(".login_button").click(function(){
		
		//alert("로그인 버튼 작동");
		
		//로그인 메소드 서버 요청
		$("#login_form").attr("action", "/member/login.do");
		$("#login_form").submit();
		
		
	});
	
</script>

</body>
</html>