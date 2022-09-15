<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>ShapeBootstrap Clean Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap -->
    <link href="../resources/css/bootstrap.css" rel="stylesheet">
    <link href="../resources/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../resources/css/style.css" rel="stylesheet"> 
    
    <!--Font-->
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600' rel='stylesheet' type='text/css'>
    
    
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
      
      <!-- Fav and touch icons -->
      <link rel="shortcut icon" href="ico/favicon.ico">
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
      <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">

		<style>       
		</style>
    <!-- SCRIPT 
    ============================================================-->  
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
    <script src="../resources/js/side.js"></script>
      
  </head>
  <body>
  <!--HEADER ROW-->
  <input type="checkbox" id="menuicon">
<ul>
	<li>
		<label for="menuicon">
			<span></span><span></span><span></span>
		</label>
	</li>
</ul>




<div class="sidebar">





	<div class="sidem">
	<div class="sidem_a ">
    <div class="items sidem_mm">
	<a><img src="../resources/img/icon10.jpg" height="40" width = "40"/></a></div>
    <div class="items my-f1  sidem_mm1"> 홍길동</div>
	</div>
	
	<div class="sidem_b ">
    <div class="items sidem_mm">
	<a><img src="../resources/img/icon10.jpg" height="40" width = "40"/></a></div>
	<div class="items sidem_mm">
	<a><img src="../resources/img/icon10.jpg" height="40" width = "40"/></a></div>
	 <div class="items sidem_mm">
	<a><img src="../resources/img/icon10.jpg" height="40" width = "40"/></a></div>
	</div>	
	</div>
	 
	<div class="sidem-bg"></div> 
	 
	 
	<div class="sidem2">	
    <div class="items2 items2-mm1">
	<div class="sidem2-f">등급</div> <br>
	<a><img src="../resources/img/grade/gold.png" height="90" width = "90"/></a><br><br>
	gold	
	</div>
		
    <div class=" sidem-bg2"></div>
	
	 <div class="items2 items2-mm2">
	<div class="sidem2-f">내가 쓴 글</div>  <br><br>
	<div class="sidem2-f">21</div>  <br><br>
	 <a class="btn btn-large btn-danger" href="#">  더 보러가기  </a>
	 </div>	
	</div>
	 
	 <div class="sidem-bg3"></div> 
	 
	 
	  
	 <div  class="sidem-mm4 sidem2-f2 "><a href="main.jsp" style="color:rgb(0, 0, 0);"><b>칵테일 바 찾기</b></a></div >
	 <div class="sidem-bg3"></div> 
	 
     <div  class="sidem-mm5 sidem2-f2"><a href="service.html" style="color:rgb(0, 0, 0);"><b>츨겨찾기</b></a></div >
	<div class="sidem-bg3"></div> 
	
    <div  class="sidem-mm4 sidem2-f2"> <a href="service.html" style="color:rgb(0, 0, 0);"><b>Q & A</b></a></div >
	<div class="sidem-bg3"></div> 
	
    <div  class="sidem-mm5 sidem2-f2"><a href="blog.html" style="color:rgb(0, 0, 0);"><b>공지사항</b></a></div >	
	 <div class="sidem-bg3"></div> 
	 
     <div  class="sidem-mm4 sidem2-f2"><a href="service.html" style="color:rgb(0, 0, 0);"><b>고객센터</b></a></div >
	<div class="sidem-bg3"></div> 
	
    <div  class="sidem-mm5 sidem2-f2"><a href="service.html" style="color:rgb(0, 0, 0);"><b>자유게시판</b></a></div >
	<div class="sidem-bg3"></div> 
	
    <div  class="sidem-mm4 sidem2-f2"><a href="blog.html" style="color:rgb(0, 0, 0);"><b>로그아웃</b></a></div >	
	  
	 
 </div>


  <!-- 메뉴 색깔 ------------------------------------------------------------------------------------------>
  <div id="header-row">
  
    <div class="container">
      <div class="row">
              <!--로그-->
			  
              <div class="span3"><a class="brand" href="#"><img src="../resources/img/logo.png"/></a></div>
              <!-- /LOGO -->

            <!-- 메뉴 -->  
              <div class="">
                <div class="navbar  pull-right">
                  <div class="navbar-inner">
				  
                    <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</a>
                    
					
					<div class="nav-collapse collapse navbar-responsive-collapse"><!--<div class="nav-collapse collapse navbar-responsive-collapse" -->
                    <ul class="nav">
                        <li><a href="main" style="color:rgb(0, 0, 0);"><b>칵테일 설명</b></a></li>
                        <li><a href="service.html" style="color:rgb(0, 0, 0);"><b>레시피</b></a></li>
                        <li><a href="service.html" style="color:rgb(0, 0, 0);"><b>자유게시판</b></a></li>
                        <li><a href="blog.html" style="color:rgb(0, 0, 0);"><b>top100</b></a></li>						
         
                        <li><a>  </a></li>
						<li><a>  </a></li>
						<li><a>  </a></li>
						<li><a>  </a></li>
						<li><a>  </a></li>
						
                        <li><a href="#">ㅁ</a></li>
                        <li><a href="#">ㅁ</a></li>
                        <li><a href="#">ㅁ</a></li>	
						<li><a href="#">ㅁ</a></li>
                        <li><a href="blog.html">ㅁ</a></li>	
		 
                    </ul>
                  
					</div>
					
					
					<!-- ================================================================================= -->
					<!--<div class="nav-collapse collapse navbar-responsive-collapse" >
						<ul class="nav">
						<li><a href="service.html">레시피</a></li>
                        <li><a href="service.html">자유게시판</a></li>
                        <li><a href="blog.html">top100</a></li>	
							</ul>
					</div>	-->
                  </div>
                </div>
              </div>
            <!-- MAIN NAVIGATION -->  
      </div>
    </div>
  </div>
  <!-- /HEADER ROW -->

  
  <div class="container">

  <!--Carousel
  ==================================================-->
	
  <div id="myCarousel" class="carousel slide" >
    <div class="carousel-inner" >
		
      <div class="active item" >
	 
        <div class="container" >
          <div class="row" >
             <div class="carousel-bg" >
              <div class="span6">
                <div class="carousel-caption">
                      <h1><b>당신과 어울리는 <br>칵테일을 찾아봐요</b></h1>
                      <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                      <a class="btn btn-large btn-danger" href="#">Sign up today</a>
                </div>			<!--버튼 크기 ///버튼 색깔-->
              </div>
                <div > <img src="../resources/img/slide/slide3.png" height="1000" width = "600"></div>
				</div>
          </div>
        </div>
      </div>

      <div class="item">
       
         <div class="container" >
          <div class="row" >
             <div class="carousel-bg" >
              <div class="span6">
                <div class="carousel-caption">
                      <h1><b>당신과 어울리는 <br>칵테일을 찾아봐요</b></h1>
                      <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                      <a class="btn btn-large btn-danger" href="#">Sign up today</a>
                </div>
              </div>
                <div > <img src="../resources/img/slide/slide3.png" height="1000" width = "600"></div>
				</div>
          </div>
        </div>

      </div>

    </div>
       <!-- Carousel nav -->
      <a class="carousel-control left " href="#myCarousel" data-slide="prev"><i class="icon-chevron-left"></i></a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next"><i class="icon-chevron-right"></i></a>
        <!-- /.Carousel nav -->

  </div>
    <!-- /Carousel -->



<!-- Feature 
  ==============================================-->
<!--111111111111111111111111111111111111111111111111111-->
<div class ="feature">
  <div class="row feature-box">
      <div class="span12 cnt-title">
        <span>Best Cocktail</span>  
      </div>
	  
	<div class="mm">
	<div class="f-bg">
      <div class="span3">
        
        <h2><B>1th</B></h2>
		<a href="#"><img src="../resources/img/c1.png" height="220" width = "220"></a>
        <p class = "my-f1"> <b>올드팬션드</b> </p>
        <!--<a href="#">Read More &rarr;</a>-->

      </div>

      <div class="span3">
         <h2><B>2nd</B></h2>
		<a href="#"><img src="../resources/img/c1.png" height="220" width = "220"></a>
         <p class = "my-f1"> <b>올드팬션드</b> </p>

      </div>

      <div class="span3">
         <h2><B>3rd</B></h2>
		<a href="#"><img src="../resources/img/c1.png" height="220" width = "220"></a>
         <p class = "my-f1"> <b>올드팬션드</b> </p>
      </div>
	  
	  <div class="span3">
         <h2><B>4th</B></h2>
		<a href="#"><img src="../resources/img/c1.png" height="220" width = "220"></a>
        <p class = "my-f2"> <b>올드팬션드</b> </p>

      </div>
	  <div class="v-bg1">
         

      </div>
	  
	  
	  
	  </div>
	   </div>
	   
	 
  </div>
  <div class = "mm2">
  <a class="btn btn-large btn-danger" href="#">  더 보러가기  </a>
  </div>
 </div>
<br><br>


<div class ="row-view2">
    <div class="row">
        
		
        <div class="span6 mm3">
          
          <p class="my-f6">내가 가지고 있는 재료로 칵테일 검색하기</p>
		  
		  <div class="my-f5 mm6"> 사진으로 검색 <a class="btn btn-large btn-danger mm5 " href="#">지금 바로가기</a></div><br>
		  <p class="mm7">집에 있는 재료를 찍어서 그 재료가 <br>들어가 있는 칵테일 검색하기</p>
		   <div class="my-f5 mm6">키워드로 검색<a class="btn btn-large btn-danger mm5" href="#">지금 바로가기</a></div><br>
		   <p class="mm7">집에 있는 재료들을  추가해 추가한 <br> 키워드로 만들 수 있는 칵테일 검색</p>
        </div>
		<div class="span1 v-bg2"></div>
		<div class="span6 mm4"><img src="../resources/img/test4.png"  width = "500"></div>
    </div>
</div>

<br><br>
 <!--<div class="hr-divider"></div> <!-- 직선======================================--> 




<!--111111111111111111111111111111111111111111111111111-->

<div class ="feature">
 <div class="row feature-box">
      <div class="span12 cnt-title">
        <span>무슨 칵테일을 마셔야 할지 모를때</span>        
      </div>
      <div class="mm">
      <div class="span4">
         <a href="#"><img src="../resources/img/test1.png"></a>  
        <h2><b>MBTI</b></h2>
        <p class = "my-f2">
            자신의 MBTI에 어울리는 칵테일을 찾아봐요
        </p>

      </div>

      <div class="span4">
         <a href="#"><img src="../resources/img/test2.png"></a>  
        <h2><b>계절별</b></h2>
        <p class = "my-f2">
            지금 계절에 어울리는 칵테일을  찾아봐요
        </p>   
         
      </div>

      <div class="span4">
         <a href="#"><img src="../resources/img/test3.png"></a>  
        <h2><b>관계별</b></h2>
        <p class = "my-f2">
           가족이나 연인 등등 상황에 맞는 칵테일을 찾아봐요
        </p>
      </div>
  </div>
  </div>
  </div>
<!-- /.Feature -->


  <br><br>

<!-- Row View -->

<div class ="row-view">
    <div class="row">
        <div class="span5 mm3"><img src="../resources/img/test5.png"  height="1000" width = "550"></div>
		<div class="span1 v-bg"><br><br><br><br><br><br><br><br><br></div>
        <div class="span6">
          <br>
          <p class="my-f6">자신의 레벨에 맞는 칵테일을 만들자!!</p>
		  <br><br>
		  <h4 class="my-f3"><img class="hidden-phone" src="../resources/img/g1.png" alt=""  width = "100"> &nbsp;&nbsp;&nbsp;칵테일이------ ------ -</h4><br>
		   <h4 class="my-f3"><img class="hidden-phone" src="../resources/img/g2.png" alt=""  width = "100">&nbsp;&nbsp;&nbsp;칵테일이------ ------ -</h4><br>
		   <h4 class="my-f3"><img class="hidden-phone" src="../resources/img/g3.png" alt="" width = "100">&nbsp;&nbsp;&nbsp;칵테일이------ ------ -</h4><br>
		   
		    <a class="btn btn-large btn-danger mm22" href="#">지금 바로가기</a><br>
        </div>
    </div>
</div>
   









  <!--Carousel
  ==================================================-->
	<br><br>
	 <div class="span12 cnt-title">
        <span>내가 만든 칵테일 공유하기</span>        
      </div>
 
  <div id="myCarousel2" class="carousel slide" >
    <div class="carousel-inner" >



		
      <div class="active item" >	 
        <div class="container" >
          <div class="row" >

			 
			 	<div class="mm1">
               <div class="span3">
				<a href="#"><img src="../resources/img/c1.png"></a>  
				<h2><b>제목</b></h2>
				<p class = "my-f2">
					가나다라마바사
				</p>
				</div>
	  
                 <div class="span3">
				<a href="#"><img src="../resources/img/c1.png"></a>  
				<h2><b>제목</b></h2>
				<p class = "my-f2">
				가나다라마바사
				</p>
				</div>
				
				<div class="span3">
				<a href="#"><img src="../resources/img/c1.png"></a>  
				<h2><b>제목</b></h2>
				<p class = "my-f2">
					가나다라마바사
				</p>

				</div>
				<div class="span3">
				<a href="#"><img src="../resources/img/c1.png"></a>  
				<h2><b>제목</b></h2>
				<p class = "my-f2">
					가나다라마바사
				</p>
				</div>
				</div>	
				</div>				
          </div>
      </div>





      <div class="item">
       
         <div class="container" >
          <div class="row" >

					<div class="mm1">
               <div class="span3">
				<a href="#"><img src="../resources/img/c1.png"></a>  
				<h2><b>제목</b></h2>
				<p class = "my-f2">
					가나다라마바사
				</p>
				</div>
	  
                 <div class="span3">
				<a href="#"><img src="../resources/img/c1.png"></a>  
				<h2><b>제목</b></h2>
				<p class = "my-f2">
				가나다라마바사
				</p>
				</div>
				
				<div class="span3">
				<a href="#"><img src="../resources/img/c1.png"></a>  
				<h2><b>제목</b></h2>
				<p class = "my-f2">
					가나다라마바사
				</p>

				</div>
				<div class="span3">
				<a href="#"><img src="../resources/img/c1.png"></a>  
				<h2><b>제목</b></h2>
				<p class = "my-f2">
					가나다라마바사
				</p>
				</div>
				</div>	
               
				</div>
          </div>

      </div>
  </div>
		<a class="btn btn-large btn-danger mm24" href="#">지금 바로가기</a><br>
       <!-- Carousel nav -->
      <a class="carousel-control left " href="#myCarousel2" data-slide="prev"><i class="icon-chevron-left"></i></a>
      <a class="carousel-control right" href="#myCarousel2" data-slide="next"><i class="icon-chevron-right"></i></a>
        <!-- /.Carousel nav -->

  </div>
    <!-- /Carousel -->




   
</div>

<!-- /.Row View -->
<!--Footer
==========================-->

<footer>
    <div class="container">
      <div class="row">
        <div class="span3"> <a href="#"><img src="../resources/img/logo.png" ></a>  <br><br>
        <small><a href="#"><img src="" > ㅁ</a>
                <a href="#"><img src=""> ㅁ</a>
                <a href="#"><img src=""> ㅁ</a></small>
        </div>
		<div class="span3"></div>
        <div class="span6">
		
            <div class="social pull-right">
                <p> 연락처 : 010-0000-0000</p>
				 <p> 책임자: 홍길동</p>
				  <p> 이메일: abc@naver.com</p><br>
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