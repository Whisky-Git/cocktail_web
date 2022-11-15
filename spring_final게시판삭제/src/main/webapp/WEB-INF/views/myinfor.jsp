<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ShapeBootstrap Clean Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap -->
<link href="../resources/css/bootstrap.css?after" rel="stylesheet">
<link href="../resources/css/bootstrap-responsive.css?after"
	rel="stylesheet">
<link href="../resources/css/style.css?after" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/member/myinfor.css">
<!--Font-->
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600'
	rel='stylesheet' type='text/css'>


<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="shortcut icon" href="ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="ico/apple-touch-icon-57-precomposed.png">

<script src="../resources/js/side2.js"></script>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<link href="../resources/css/style2.css" rel="stylesheet">
<style>
</style>
<!-- SCRIPT 
    ============================================================-->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>

</head>
<body>
	   <%@include file="includes/header2.jsp" %>

	<div class="container">



<div class="infor-bg">
  <div class="wrapper">
  
  
  
		<form id="infor_form" method="post">
			<div class="wrap">
				<div class="subjecet">
					<span>마이페이지 수정</span><br><br><br><br><br>
				</div>

				<!-- /////////////닉네임 ///////////////////////////////////////////-->
				<div class="id_wrap">
					<div class="user_id">아이디</div>
					<div class="id_input_box">
						<input class="id_input" readonly value='${member.memberName}' name="memberId">
					</div>
					
				</div>
			
				<!-- /////////////MBTI ///////////////////////////////////////////-->
				<div class="mbti_wrap">
					<div class="user_mbti">MBTI</div>
					<div class="mbti_input_box">
						<input class="mbti_input" value='${info.memberMbti}' name="memberMbti">
					</div>
					
				</div>

				<!-- /////////////////나이 ///////////////////////////////////////-->
				<div class="age_wrap">
					<div class="user_age">나이</div>
					<div class="age_input_box">
						<input class="age_input" value='${info.memberAge}' name="memberAge">
					</div>
					
				</div>

				<!--//////////////////생년월일//////////////////////////////////////  -->
				<div class="date_wrap">
					<div class="user_date">생년월일</div>
					<div class="date_input_box">
						<input class="date_input" type="date" value='${info.memberDate}' name="memberDate">
					</div>
					
				</div>

				<!--////////////////////저장 버튼////////////////////////////////////  -->
				<div class="infor_button_wrap">
					<input type="button" class="infor_button" value="저장하기">
				</div>
			</div>
		</form>		
	</div>
	</div>
	<script>
	$(document).ready(function(){
	//수정
	$(".infor_button").click(function(){
		$("#infor_form").attr("action","/info.do");
		$("#infor_form").submit();
		});
	});
	
	</script>





	</div>
	<!-- /.Row View -->
	<!--Footer
==========================-->

	<footer>
		<div class="container">
			<div class="row">
				<div class="span3">
					<a href="#"><img src="../resources/img/logo.png"></a> <br>
					<br> <small><a href="#"><img src=""> ㅁ</a> <a
						href="#"><img src=""> ㅁ</a> <a href="#"><img src="">
							ㅁ</a></small>
				</div>
				<div class="span3"></div>
				<div class="span6">

					<div class="social pull-right">
						<p>연락처 : 010-0000-0000</p>
						<p>책임자: 홍길동</p>
						<p>이메일: abc@naver.com</p>
						<br>
						<!--
				  <a href="#"><img src="img/social/googleplus.png" alt=""></a>
                <a href="#"><img src="img/social/dribbble.png" alt=""></a>
                <a href="#"><img src="img/social/twitter.png" alt=""></a>
                <a href="#"><img src="img/social/dribbble.png" alt=""></a>
                <a href="#"><img src="img/social/rss.png" alt=""></a>-->
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!--/.Footer-->

</body>
</html>