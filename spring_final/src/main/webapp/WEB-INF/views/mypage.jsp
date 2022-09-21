<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="../resources/css/bootstrap-responsive.css?after" rel="stylesheet">
    <link href="../resources/css/style.css?after" rel="stylesheet"> 
    
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
	.wrapper1{
			width: 1194px;
			height: 400px;
			border: 3px solid #000000;
			border-top-left-radius: 20px;
			border-top-right-radius: 20px;
		}

		.wrapper2{
			display: flex;
			width: 1200px;
			justify-content: center;
			margin-bottom: 20px;
		}

		.wrapper3{
			width: 1200px;
			border: 2px solid #e0e0e0;
		}
    .itemGroup1{
      display: flex;
      justify-content: center;
      align-items: center;
      width:1100px;
      margin-top: 40px;
    }
    .itemGroup2{
      margin-top: 20px;
    }
    
		.itemBox2{
			background-color: #272727;
			width: 300px;
			height: 240px;
      padding-bottom: 10px;
		}
		.items2:nth-child(-n+3){
		border-right:2px solid #888;	
		}

		.items2{
			text-align: center;
			height: 80px;
			line-height: 80px;
			font-size: 20px;
			color: #ffffff;
      font-weight: 600;
		}

		.items3{
			width: 1200px;
			height: 50px;
			line-height: 50px;
			color:#000000;
		}
		.items3:nth-child(odd){
			background-color: #e0e0e0;
		}
    .btn_red{
    width:150px;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 25px;
    font-family: "paybooc-Light", sans-serif;
    background-color: rgb(255, 24, 24);
    color:#ffffff;
    text-decoration: none;
    font-weight: 600;
    }
		.leftPadding{
      padding-left: 40px;
    }
    .items1_1{
      display: flex;
      align-items: center;
      margin-left: 40px;
    }
    .items1_2{
      width:700px;
      margin-left: 40px;
      margin-top: 40px;
    }
    .items1_3{
      width:1100px;
      height: 35px;
			line-height: 35px;
			color:#000000;
      border: 1px solid #e0e0e0;
      margin:0 auto;
    }
    .items1_3:nth-child(odd){
			background-color: #e0e0e0;
		}

    #progress {
    appearance: none;
}
#progress::-webkit-progress-bar {
    background:#f0f0f0;
    border-radius:10px;
    box-shadow: inset 3px 3px 10px #ccc;
    width:700px;
}
#progress::-webkit-progress-value {
    border-radius:10px;
    background: #272727;
    background: -webkit-linear-gradient(to right, #acacac, #272727);
    background: linear-gradient(to right, #acacac, #272727);
}

.myPage2{
  font-size: 30px;
}
.camera{
  position:relative;
  top: 65px;
  right: 35px;
}

    
    
		</style>
    <!-- SCRIPT 
    ============================================================-->  
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
      
      
  </head>
  <body>
  <!--HEADER ROW-->
  
  <!-- 메뉴 색깔 ------------------------------------------------------------------------------------------>
  <div id="header-row">
  
    <div class="container">
      <div class="row">
              <!--로그-->
              <div class="span3"><a class="brand" href="#"><img src="../resources/img/logo.png"/></a></div>
              <!-- /LOGO -->

            <!-- 메뉴 -->  
              <div class="span9">
                <div class="navbar  pull-right">
                  <div class="navbar-inner">
				  
                    <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</a>
                    
					
					<div class="nav-collapse collapse navbar-responsive-collapse"><!--<div class="nav-collapse collapse navbar-responsive-collapse" -->
                    <ul class="nav">
                        <li><a href="index.html" style="color:rgb(0, 0, 0);"><b>칵테일 설명</b></a></li>
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
	  </div></div>
	  
	  
	      <div class="container">
      <br><br>
      <div class="Page-Title">MyPage</div>
      <br><br>
      <div class="myPage2"><b>사나운고양이</b> 님의 페이지</div>
      <br>
      <div class="wrapper1">
        <div class="itemGroup1">
          <img src="../resources/img/cat.jpg" width="250px" height="250px" style="
          border: 3px solid rgb(121, 121, 121);
          border-radius: 15px;">
          <img src="../resources/img/camera.png" width="25px" height="25px" class="camera">
          <div class="itemBox1">
            <div class="items1_1">
              <img src="../resources/img/grade/gold.png" width="100px" height="100px">
              <div style="margin-left: 30px; font-size:30px;"><b>골드</b></div>
              <div style="margin: -40px 0 0 400px;"><a class="btn btn-large btn-danger" href="#" width="400px">정보 수정</a></div>
            </div>
            <div class="items1_2">
             <div><b>다음 등급까지 남은 진행률</b></div>
             <div><진행률> 15%</div>
             <progress id="progress" value="15" min="0" max="100"></progress>
            </div>
          </div>
        </div>
        <div class="itemGroup2">
          <div class="items1_3"><div class="leftPadding">
            <b>- 이메일 : antjdnsrhdiddl@naver.com</b></div></div>
          <div class="items1_3"><div class="leftPadding">
            <b>- 가입일 : 2022.01.03</b></div></div>
        </div>
      </div>
      
      

      <div class="wrapper2">
        <div class="itemBox2">
            <div class="items2">내가 쓴 글</div>
            <div class="items2"><font size=30px>27</font></div>
            <div class="items2">
              <button onclick="location.href='#'" class="btn_red">게시판</button >
            </div>
        </div>
        <div class="itemBox2">
            <div class="items2">즐겨찾기</div>
            <div class="items2"><font size=30px>28</font></div>
            <div class="items2">
              <button onclick="location.href='#'" class="btn_red">확인</button >
            </div>
        </div>
        <div class="itemBox2">
            <div class="items2">MBTI</div>
            <div class="items2"><font size=30px>isfp</font></div>
            <div class="items2">
              <button onclick="location.href='#'" class="btn_red">검사</button >
            </div>
        </div>
        <div class="itemBox2">
            <div class="items2">나이</div>
            <div class="items2"><font size=30px>27</font></div>
        </div>
      </div>

      <div class="wrapper3">
        <div class="items3"><div class="leftPadding" onclick="location.href='#'"><b>나의 문의 내역</b></div></div>
        <div class="items3"><div class="leftPadding" onclick="location.href='#'">문의 보내기</div></div>
        <div class="items3"><div class="leftPadding" onclick="location.href='#'">로그아웃</div></div>
        <div class="items3"><div class="leftPadding" onclick="location.href='#'"><b>Cocktail 탈퇴</b></div></div>
      </div>


 </div>


    </div>
  </div>
  <!-- /HEADER ROW -->

  


<



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