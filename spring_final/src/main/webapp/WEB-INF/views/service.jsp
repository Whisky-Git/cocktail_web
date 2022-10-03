<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
  


    <!-- SCRIPT 
    ============================================================-->  
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
</head>

<body>
<%@include file="includes/header.jsp" %>

<div class="container">
	  <!--PAGE TITLE 상위-->
	
<!-- 검정색 화면 결과 출력 창-->
  <div class="f-bg2">
    <table class = "my-f1">
      <tr>
        <td> <img src="../resources/img/cocktail/${cocktailInfo.cocktailImage}.png" height="220" width = "220"></td>
        <td> <p class = "my-f4"> <b><c:out value="${cocktailInfo.cocktailName}"/></b> </p></td>
        <td> <a class="btn btn-large btn-danger" href="#">조회하기</a></td>
      </tr>
      <tr>
        
      </tr>
    </table>
 
  </div>

  <!-- /. PAGE TITLE-->

  <!-- 레시피 출력-->

         <div class="media-body">
					<h4 class="media-heading">
					</h4><br>
          <div class="hr-divider2"><h4>재료<h4></div>
          	<li><c:out value="${cocktailInfo.cocktailMaterials}"/></li>
			<br>
          <div class="hr-divider2"><h4>만드는 법</h4></div>
          	<h4></h4><c:out value="${cocktailInfo.cocktailRecipes}"/></h4>
          <div class="hr-divider2"><h4>관련 동영상</h4></div><br>
		  <iframe width="560" height="315" src="https://www.youtube.com/embed/iDjQSdN_ig8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		  <div class="hr-divider2"><h4>댓글</h4></div> 
        </div>		

<%@include file="includes/footer.jsp" %>

</body>
</html>
