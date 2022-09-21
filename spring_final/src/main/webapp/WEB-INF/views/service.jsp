<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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


  <!--HEADER ROW-->
  <div id="header-row">
    <div class="container">
      <div class="row">
              <!--칵테일 로고-->
              <div class="span3"><a class="brand" href="#"><img src="../resources/img/logo.png"/></a></div>
              <!-- /LOGO -->

            <!-- MAIN NAVIGATION 바-->  
              <div class="span9">
                <div class="navbar  pull-right">
                  <div class="navbar-inner">
                    <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>
                    <div class="nav-collapse collapse navbar-responsive-collapse">
                    <ul class="nav">
                        <li class="active"><a href="main">Home</a></li>
                        
                        <li class="dropdown">
                          <a href="about.html" class="dropdown-toggle" data-toggle="dropdown">About <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                  <li><a href="about.html">Company</a></li>
                                  <li><a href="about.html">History</a></li>
                                  <li><a href="about.html">Team</a></li>
                            </ul>

                        </li>

                        <li><a href="service">Services</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="contact.html">Contact</a></li>
                 
                    </ul>
                  </div>

                  </div>
                </div>
              </div>
            <!-- MAIN NAVIGATION -->  
      </div>
    </div>
  </div>
  <!-- /HEADER ROW -->


<div class="container">
	  <!--PAGE TITLE 상위-->
	
<!-- 검정색 화면 결과 출력 창-->
  <div class="f-bg2">
    <table class = "my-f1">
      <tr>
        <td> <img src="../resources/img/ex1.png" height="220" width = "220"></td>
        <td> <p class = "my-f4"> <b>진피스</b> </p></td>
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
					</h4> 
					<h1>레시피 출력문	</h1>
          <div class="hr-divider2"><h4>재료<h4></div> 
			<li>조각없음</li>
			<li>드라이진 50ml</li>
			<li>레몬주스 20ml</li>

          <div class="hr-divider2"><h4>만드는 법</h4></div>
			<h4>1. 글라스에 얼음을 가득 채워 칠링 해 놓는다.</h4> 
			<h4>2. 레몬 슬라이스를 준비한다.</h4>
			<h4>3. 셰이커에 얼음 5개, 진, 레몬주스, 설탕시럽을 넣고 10초간 강하게 셰이킹한다.</h4> 	
		   <div class="hr-divider2"><h4>장식</h4></div> 
			<li>레몬 슬라이스</li>
			<li>꼭지 체리</li> 
          <div class="hr-divider2"><h4>관련 동영상</h4></div> 
		  <iframe width="560" height="315" src="https://www.youtube.com/embed/iDjQSdN_ig8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		  <div class="hr-divider2"><h4>댓글</h4></div> 
        </div>		

<!--Footer
==========================-->

<footer>
    <div class="container">
      <div class="row">
        <div class="span6">Copyright &copy 2013 Shapebootstrap | All Rights Reserved  <br>
        <small>Aliquam tincidunt mauris eu risus.</small>
        </div>
        <div class="span6">
          <!-- 아이콘 넣어놓음-->
            <div class="social pull-right">
                <a href="#"><img src="../resources/img/social/googleplus.png" alt=""></a>
                <a href="#"><img src="../resources/img/social/dribbble.png" alt=""></a>
                <a href="#"><img src="../resources/img/social/twitter.png" alt=""></a>
                <a href="#"><img src="../resources/img/social/dribbble.png" alt=""></a>
                <a href="#"><img src="../resources/img/social/rss.png" alt=""></a>
            </div>
        </div>
      </div>
    </div>
</footer>

<!--/.Footer-->

</body>
</html>
