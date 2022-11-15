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
<title>칵테일</title>
<link rel="icon" href="../resources/img/cocktail/47.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap -->
<link href="../resources/css/bootstrap.css?after" rel="stylesheet">
<link href="../resources/css/bootstrap-responsive.css?after"
	rel="stylesheet">
<link href="../resources/css/style.css" rel="stylesheet">
<link href="../resources/css/style2.css" rel="stylesheet">
<link href="../resources/css/btn.css" rel="stylesheet">
<!--Font-->
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600'
	rel='stylesheet' type='text/css'>

		 <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		   <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
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

<style>

.mm2_2{
margin-right:2%;
margin-top:1%;
float: right;
		}


.mm100{
padding-left: 5%;




</style>



<style>       

@import url("https://fonts.googleapis.com/css?family=Exo+2:900");

.container11 h2 {
   margin-left: 10%;
  font-family: "Exo 2", sans-serif;
  font-size: 20px;
  color: white;
  padding: 5rem 0;
  text-shadow: 0px 4px 48px rgba(255, 255, 255, 0.2);
  
}

.container11 {
padding-top:18px;

  justify-content: left;
  background-image: url("../resources/img/slide/1011.png");

  background-size: cover;
  overflow: hidden;
}

.bubbles-container {
  position: absolute;
  top: 0;
  left: 25%;
  width: 100%;
  max-width: 15rem;
  transform: translateX(-50%);
  opacity: 0.75;
  overflow: visible;
}

.bubbles {
  width: 100%;
  height: auto;
}
.bubbles circle {
  stroke: white;
  fill: none;
}
.bubbles > a > g:nth-of-type(3n) circle {
  stroke: #87f5fb;
}
.bubbles > g > g:nth-of-type(4n) circle {
  stroke: #8be8cb;
}

.bubbles-large {
  overflow: visible;
}
.bubbles-large > g {
  transform: translateY(2048px);
  opacity: 0;
  will-change: transform, opacity;
}
.bubbles-large g:nth-of-type(1) {
  animation: up 6.5s infinite;
}
.bubbles-large g:nth-of-type(1) g {
  transform: translateX(350px);
}
.bubbles-large g:nth-of-type(1) circle {
  animation: wobble 3s infinite ease-in-out;
}
.bubbles-large g:nth-of-type(2) {
  animation: up 5.25s 250ms infinite;
}
.bubbles-large g:nth-of-type(2) g {
  transform: translateX(450px);
}
.bubbles-large g:nth-of-type(2) circle {
  animation: wobble 3s infinite ease-in-out;
}
.bubbles-large g:nth-of-type(3) {
  animation: up 6s 750ms infinite;
}
.bubbles-large g:nth-of-type(3) g {
  transform: translateX(700px);
}
.bubbles-large g:nth-of-type(3) circle {
  animation: wobble 3s infinite ease-in-out;
}
.bubbles-large g:nth-of-type(4) {
  animation: up 5.5s 1.5s infinite;
}
.bubbles-large g:nth-of-type(4) g {
  transform: translateX(500px);
}
.bubbles-large g:nth-of-type(4) circle {
  animation: wobble 3s infinite ease-in-out;
}
.bubbles-large g:nth-of-type(5) {
  animation: up 6.5s 4s infinite;
}
.bubbles-large g:nth-of-type(5) g {
  transform: translateX(675px);
}
.bubbles-large g:nth-of-type(5) circle {
  animation: wobble 3s infinite ease-in-out;
}

.bubbles-small {
  overflow: visible;
}
.bubbles-small > g {
  transform: translateY(2048px);
  opacity: 0;
  will-change: transform, opacity;
}
.bubbles-small g circle {
  transform: scale(0);
}
.bubbles-small g:nth-of-type(1) {
  animation: up 5.25s infinite;
}
.bubbles-small g:nth-of-type(1) g {
  transform: translateX(350px);
}
.bubbles-small g:nth-of-type(1) circle {
  animation: wobble 3s infinite ease-in-out;
}
.bubbles-small g:nth-of-type(2) {
  animation: up 5.75s infinite;
}
.bubbles-small g:nth-of-type(2) g {
  transform: translateX(750px);
}
.bubbles-small g:nth-of-type(2) circle {
  animation: wobble 3s infinite ease-in-out;
}
.bubbles-small g:nth-of-type(3) {
  animation: up 5.25s 250ms infinite;
}
.bubbles-small g:nth-of-type(3) g {
  transform: translateX(350px);
}
.bubbles-small g:nth-of-type(3) circle {
  animation: wobble 3s 250ms infinite ease-in-out;
}
.bubbles-small g:nth-of-type(4) {
  animation: up 5.75s 325ms infinite;
}
.bubbles-small g:nth-of-type(4) g {
  transform: translateX(180px);
}
.bubbles-small g:nth-of-type(4) circle {
  animation: wobble 3s 325ms infinite ease-in-out;
}
.bubbles-small g:nth-of-type(5) {
  animation: up 6s 125ms infinite;
}
.bubbles-small g:nth-of-type(5) g {
  transform: translateX(350px);
}
.bubbles-small g:nth-of-type(5) circle {
  animation: wobble 3s 250ms infinite ease-in-out;
}
.bubbles-small g:nth-of-type(6) {
  animation: up 5.13s 250ms infinite;
}
.bubbles-small g:nth-of-type(6) g {
  transform: translateX(650px);
}
.bubbles-small g:nth-of-type(6) circle {
  animation: wobble 3s 125ms infinite ease-in-out;
}
.bubbles-small g:nth-of-type(7) {
  animation: up 6.25s 350ms infinite;
}
.bubbles-small g:nth-of-type(7) g {
  transform: translateX(480px);
}
.bubbles-small g:nth-of-type(7) circle {
  animation: wobble 3s 325ms infinite ease-in-out;
}
.bubbles-small g:nth-of-type(8) {
  animation: up 7s 200ms infinite;
}
.bubbles-small g:nth-of-type(8) g {
  transform: translateX(330px);
}
.bubbles-small g:nth-of-type(8) circle {
  animation: wobble 3s 325ms infinite ease-in-out;
}
.bubbles-small g:nth-of-type(9) {
  animation: up 6.25s 233ms infinite;
}
.bubbles-small g:nth-of-type(9) g {
  transform: translateX(230px);
}
.bubbles-small g:nth-of-type(9) circle {
  animation: wobble 3s 275ms infinite ease-in-out;
}
.bubbles-small g:nth-of-type(10) {
  animation: up 6s 900ms infinite;
}
.bubbles-small g:nth-of-type(10) g {
  transform: translateX(730px);
}
.bubbles-small g:nth-of-type(10) circle {
  animation: wobble 2s 905ms infinite ease-in-out;
}

@keyframes wobble {
  33% {
    transform: translateX(-50px);
  }
  66% {
    transform: translateX(50px);
  }
}
@keyframes up {
  0% {
    opacity: 0;
  }
  10%, 90% {
    opacity: 1;
  }
  100% {
    opacity: 0;
    transform: translateY(-1024px);
  }
}











<!-- 눈 -->

	
@import url("https://fonts.googleapis.com/css?family=Corben:700");
.sl {
  color: white;
  letter-spacing: 0.1rem;
  text-shadow: 0px 3px 3px rgba(0, 0, 0, 0.66);
}


.hero__content {
  position: relative;
  align-self: center;
  padding: 3rem 0;
}

.snow {
  position: absolute;
  min-width: 100vw;
  min-height: 100vh;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
}

.snow .svg {
  position: absolute;
  width: 100%;
  height: 100%;
}

#snow-top-layer {
  will-change: transform;
  transform: translateY(-768px);
  animation: fall 22.5s infinite linear;
}

#snow-bottom-layer {
  will-change: transform;
  transform: translateY(-768px);
  animation: fall 45s infinite linear;
}

@keyframes fall {
  100% {
    transform: translateY(0);
  }
}

		.carousel-bg2 {
		  background-image: radial-gradient(60% 176%, #1b0820 40%, #000000 100%);
		width: 100%


		}



		</style>
  
  
 



<!-- SCRIPT 
    ============================================================-->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>
<script src="../resources/js/side2.js"></script>
<style>
</style>
</head>
<body>

      <%@include file="includes/header2.jsp" %>

	<div class="container">

	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
									  <defs>
										  <symbol id="arrow" viewBox="0 0 100 100">
										  	<path d="M12.5 45.83h64.58v8.33H12.5z"/>
									    		<path d="M59.17 77.92l-5.84-5.84L75.43 50l-22.1-22.08 5.84-5.84L87.07 50z"/>
										  </symbol>
									  </defs>
									</svg>



		<!--Carousel
  ==================================================-->

		<div id="myCarousel" class="carousel slide">
			<div class="carousel-inner">

				<div class="active item">

					<div class="container">
						<div class="row">
						
					  <div class="carousel-bg2" >
			 
											 
								<div class="hero">
								
								    <div class="snow">
								        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1024 1536" preserveAspectRatio="xMidYMax slice">
										    <g fill="#FFF" fill-opacity=".15" transform="translate(55 42)">
											   <g id="snow-bottom-layer">
												  <ellipse cx="6" cy="1009.5" rx="6" ry="5.5"/>
												  <ellipse cx="138" cy="1110.5" rx="6" ry="5.5"/>
												  <ellipse cx="398" cy="1055.5" rx="6" ry="5.5"/>
												  <ellipse cx="719" cy="1284.5" rx="6" ry="5.5"/>
												  <ellipse cx="760" cy="1155.5" rx="6" ry="5.5"/>
												  <ellipse cx="635" cy="1459.5" rx="6" ry="5.5"/>
												  <ellipse cx="478" cy="1335.5" rx="6" ry="5.5"/>
												  <ellipse cx="322" cy="1414.5" rx="6" ry="5.5"/>
												  <ellipse cx="247" cy="1234.5" rx="6" ry="5.5"/>
												  <ellipse cx="154" cy="1425.5" rx="6" ry="5.5"/>
												  <ellipse cx="731" cy="773.5" rx="6" ry="5.5"/>
												  <ellipse cx="599" cy="874.5" rx="6" ry="5.5"/>
												  <ellipse cx="339" cy="819.5" rx="6" ry="5.5"/>
												  <ellipse cx="239" cy="1004.5" rx="6" ry="5.5"/>
												  <ellipse cx="113" cy="863.5" rx="6" ry="5.5"/>
												  <ellipse cx="102" cy="1223.5" rx="6" ry="5.5"/>
												  <ellipse cx="395" cy="1155.5" rx="6" ry="5.5"/>
												  <ellipse cx="826" cy="943.5" rx="6" ry="5.5"/>
												  <ellipse cx="626" cy="1054.5" rx="6" ry="5.5"/>
												  <ellipse cx="887" cy="1366.5" rx="6" ry="5.5"/>
												  <ellipse cx="6" cy="241.5" rx="6" ry="5.5"/>
												  <ellipse cx="138" cy="342.5" rx="6" ry="5.5"/>
												  <ellipse cx="398" cy="287.5" rx="6" ry="5.5"/>
												  <ellipse cx="719" cy="516.5" rx="6" ry="5.5"/>
												  <ellipse cx="760" cy="387.5" rx="6" ry="5.5"/>
												  <ellipse cx="635" cy="691.5" rx="6" ry="5.5"/>
												  <ellipse cx="478" cy="567.5" rx="6" ry="5.5"/>
												  <ellipse cx="322" cy="646.5" rx="6" ry="5.5"/>
												  <ellipse cx="247" cy="466.5" rx="6" ry="5.5"/>
												  <ellipse cx="154" cy="657.5" rx="6" ry="5.5"/>
												  <ellipse cx="731" cy="5.5" rx="6" ry="5.5"/>
												  <ellipse cx="599" cy="106.5" rx="6" ry="5.5"/>
												  <ellipse cx="339" cy="51.5" rx="6" ry="5.5"/>
												  <ellipse cx="239" cy="236.5" rx="6" ry="5.5"/>
												  <ellipse cx="113" cy="95.5" rx="6" ry="5.5"/>
												  <ellipse cx="102" cy="455.5" rx="6" ry="5.5"/>
												  <ellipse cx="395" cy="387.5" rx="6" ry="5.5"/>
												  <ellipse cx="826" cy="175.5" rx="6" ry="5.5"/>
												  <ellipse cx="626" cy="286.5" rx="6" ry="5.5"/>
												  <ellipse cx="887" cy="598.5" rx="6" ry="5.5"/>
											   </g>
										    </g>
										    <g fill="#FFF" fill-opacity=".3" transform="translate(65 63)">
											   <g id="snow-top-layer">
												  <circle cx="8" cy="776" r="8"/>
												  <circle cx="189" cy="925" r="8"/>
												  <circle cx="548" cy="844" r="8"/>
												  <circle cx="685" cy="1115" r="8"/>
												  <circle cx="858" cy="909" r="8"/>
												  <circle cx="874" cy="1438" r="8" transform="rotate(180 874 1438)"/>
												  <circle cx="657" cy="1256" r="8" transform="rotate(180 657 1256)"/>
												  <circle cx="443" cy="1372" r="8" transform="rotate(180 443 1372)"/>
												  <circle cx="339" cy="1107" r="8" transform="rotate(180 339 1107)"/>
												  <circle cx="24" cy="1305" r="8" transform="rotate(180 24 1305)"/>
												  <circle cx="8" cy="8" r="8"/>
												  <circle cx="189" cy="157" r="8"/>
												  <circle cx="548" cy="76" r="8"/>
												  <circle cx="685" cy="347" r="8"/>
												  <circle cx="858" cy="141" r="8"/>
												  <circle cx="874" cy="670" r="8" transform="rotate(180 874 670)"/>
												  <circle cx="657" cy="488" r="8" transform="rotate(180 657 488)"/>
												  <circle cx="443" cy="604" r="8" transform="rotate(180 443 604)"/>
												  <circle cx="339" cy="339" r="8" transform="rotate(180 339 339)"/>
												  <circle cx="24" cy="537" r="8" transform="rotate(180 24 537)"/>
											   </g>
										    </g>
										</svg>
								    </div>
								
								
								</div>
											 
											<div class="sl">
												<div class="span6">
													<div class="carousel-caption">
														<h1>
															<b>당신과 어울리는 <br>칵테일을 찾아보세요</b>
														</h1>
														<p class="lead">Cras justo odio, dapibus ac facilisis in,
															egestas eget quam. Donec id elit non mi porta gravida at eget
															metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>									
					
														<a href="member/join" class="button20"   style=" color: #fff;">
															SIGN UP TODAY
															<span>
																<svg>
																	<use xlink:href="#arrow" href="#arrow"></use>
																</svg>
															</span>
														</a>																												
													</div>
												</div>
												<div>
													<img src="../resources/img/slide/slide3.png" height="1000"
														width="600">
												</div>
												</div>	
								
							</div>
						</div>
					</div>
					

					
			
			
				</div>


			
	
				<div class="item">

					
						<div class="container">
						<div class="row">
							<div class="">

									<div class="container11">
						
							<div class="bubbles-container">
								<svg class="bubbles" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 701 1024" style="overflow: visible;">
						
						        <g class="bubbles-large" stroke-width="7">
						            <g>
						                <g transform="translate(10 940)">
						                    <circle cx="35" cy="35" r="35"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(373 940)">
						                    <circle cx="35" cy="35" r="35"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(408 940)">
						                    <circle cx="35" cy="35" r="35"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(621 940)">
						                    <circle cx="35" cy="35" r="35"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(179 940)">
						                    <circle cx="35" cy="35" r="35"/>
						                </g>
						            </g>
						        </g>
						
						        <g class="bubbles-small" stroke-width="4">
						            <g>
						                <g transform="translate(147 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(255 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(573 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(429 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(91 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(640 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(321 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(376 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(376 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						            <g>
						                <g transform="translate(497 984)">
						                    <circle cx="15" cy="15" r="15"/>
						                </g>
						            </g>
						        </g>
						
						    </svg>
									</div>
							
									<h2><p style=" font-size: 80px;">Mojito!</P><br>	    
									The refreshing taste of mint gives<br>
									it a refreshing taste.<br>
									The bright green color of lime and mint stands<br>
									out and givesa refreshing feeling visually.
								
									</h2><br>
						
										</div>


							</div>
						</div>
					</div>
			
			
					
					
					
				</div>
			</div>
			<!-- Carousel nav -->
			<a class="carousel-control left " href="#myCarousel"
				data-slide="prev"><i class="icon-chevron-left"></i></a> <a
				class="carousel-control right" href="#myCarousel" data-slide="next"><i
				class="icon-chevron-right"></i></a>
			<!-- /.Carousel nav -->

		</div>
		<!-- /Carousel -->



		<!-- Feature 
  ==============================================-->
		<!--칵테일 베스트 4개-->
		<div class="feature">
		  <div class="row feature-box">
		<div class="span12 cnt-title">
					<span>Best Cocktail</span>
				</div>
				
					<div class="f-bg222">
					<div class="gallerylist">
					<ul>
						<c:forEach items="${ls}" var="ls" varStatus="status">
						<li>
						<a href="/service?cocktailNo=${ls.cocktailNo}&cocktailName=${ls.cocktailName}">
						
							<div>
								<h2><B>${status.count}th</B></h2>
							</div>
								<div class="screen">
								
								<div class="top" style="text-align: left;">
								<p># ${ls.cocktailLevel}</p><p># ${ls.cocktailRating} </p>	
								
								</div>
								<div class="bottom">이동하기 </div>
								
								<div class="image_wrap" data-cocktailno="${ls.imageList[0].cocktailNo}" data-path="${ls.imageList[0].uploadPath}" data-uuid="${ls.imageList[0].uuid}" data-filename="${ls.imageList[0].fileName}">
									<img style=" border-radius: 20px; "></div>							   								
								</div>
								<div>
								<br>
								<b><p>${ls.cocktailName}</p></b>
								</div>							
							  </a>
							</li>						
						</c:forEach>			
						</ul>
					</div>
				</div>
				<br>
					
					
						<a class="custom-btn btn-14 mm2_2" href="cocktailList">더 보러가기</a>
				
				</div>
		</div>
	
		<br> <br>




<!--  칵테일 영상  -->

<div id="myCarousel3" class="carousel slide" >
    <div class="carousel-inner" >
		
      <div class="active item" >
	 
        <div class="container" >
          <div class="row" >
             
             
			
			 <iframe width="1100" height="550" class="mm100" src="https://www.youtube.com/embed/J09reqatUY4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
			
          </div>
        </div>
      </div>

      <div class="item">   
         <div class="container" >
          <div class="row" >         
               <iframe width="1100" height="550" class="mm100" src="https://www.youtube.com/embed/Tp8iQ45exHI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>			
          </div>
        </div>
      </div>

  <div class="item">   
         <div class="container" >
          <div class="row" >         
              <iframe width="1100" height="550" class="mm100"  src="https://www.youtube.com/embed/5vnCRg83p2w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe> </div>
        </div>
      </div>

  <div class="item">   
         <div class="container" >
          <div class="row" >         
           <iframe width="1100" height="550" class="mm100"  src="https://www.youtube.com/embed/PIL_c4b2_CU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>  </div>
        </div>
      </div>

    </div>
       <!-- Carousel nav -->
      <a class="carousel-control left " href="#myCarousel3" data-slide="prev"><i class="icon-chevron-left"></i></a>
      <a class="carousel-control right" href="#myCarousel3" data-slide="next"><i class="icon-chevron-right"></i></a>
        <!-- /.Carousel nav -->

  </div>


<br><br>

		<div class="row-view2">
			<div class="row">


				<div class="span6 mm3">

					<p class="my-f6">집에 있는 재료로<br> 칵테일 검색하기</p>

					<div class="my-f5 mm6">
						사진으로 검색  <a class="custom-btn btn-14 mm5"  href="keyword"><span>지금
							바로가기</span></a>
					</div>
					<br>
					<p class="mm7">
						집에 있는 재료를 찍어서 그 재료가 <br>들어가 있는 칵테일 검색하기
					</p>
					<div class="my-f5 mm6">
						키워드로 검색<a class="custom-btn btn-14 mm5"  href="keyword"><span>지금
							바로가기</span></a>
					</div>
					<br>
					<p class="mm7">
						집에 있는 재료들을 추가해 추가한 <br> 키워드로 만들 수 있는 칵테일 검색
					</p>
				</div>
				<div class="span1 v-bg2"></div>
				<div class="span6 mm4">
					<img src="../resources/img/test4.png" width="500">
				</div>
			</div>
		</div>

		<br> <br>
		<!--<div class="hr-divider"></div> <!-- 직선======================================-->




		<!--111111111111111111111111111111111111111111111111111-->

		<div class="feature">
			<div class="row feature-box">
				<div class="span12 cnt-title">
					<span>무슨 칵테일을 마셔야 할지 모를때</span>
				</div>
				<div class="mm">
					<div class="span4">
						<a href="/cocktailMbti?mbti=INFJ"><img src="../resources/img/test1.png"></a>
						<h2>
							<b>MBTI</b>
						</h2>
						<p class="my-f2">자신의 MBTI에 어울리는 칵테일을 찾아봐요</p>

					</div>

					<div class="span4">
						<a href="/cocktailSeason?season=봄"><img src="../resources/img/test2.png"></a>
						<h2>
							<b>계절별</b>
						</h2>
						<p class="my-f2">지금 계절에 어울리는 칵테일을 찾아봐요</p>

					</div>

					<div class="span4">
						<a href="/cocktailRelation?relation=가족"><img src="../resources/img/test3.png"></a>
						<h2>
							<b>관계별</b>
						</h2>
						<p class="my-f2">가족이나 연인 등등 상황에 맞는 칵테일을 찾아봐요</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /.Feature -->


		<br> <br>

		<!-- Row View -->

		<div class="row-view">
			<div class="row">
				<div class="span5 mm3">
					<img src="../resources/img/test5.png" height="1000" width="550">
				</div>
				<div class="span1 v-bg">
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br>
				</div>
				<div class="span6">
					<br>
					<p class="my-f6">자신의 레벨에 맞는 칵테일을 만들자!!</p>
					<br> <br>
					<h4 class="my-f3" style="margin-top:10px;">
						<center><a href="cocktailList?level=쉬움"><img class="hidden-phone" src="../resources/img/g1.png" alt=""
							width="120px" height="120px"></a></center>
					</h4>
					<br>
					<h4 class="my-f3">
						<center><a href="cocktailList?level=보통"><img class="hidden-phone" src="../resources/img/g2.png" alt=""
							width="120px" height="120px"></a></center>
					</h4>
					<br>
					<h4 class="my-f3">
						<center><a href="cocktailList?level=어려움"><img class="hidden-phone" src="../resources/img/g3.png" alt=""
							width="120px" height="120px"></a></center>
					</h4>
				</div>
			</div>
		</div>










		<!--Carousel
  ==================================================-->
		<br> <br>
		<div class="span12 cnt-title">
			<span>내가 만든 칵테일 공유하기</span>
		</div>

		<div id="myCarousel2" class="carousel slide">
			<div class="carousel-inner">




				<div class="active item">
					<div class="container">
						<div class="row">
						
							<div class="mm1">
								<div class="span3">
									<a href="#"><img src="../resources/img/c1.png"></a>
									<h2>
										<b>제목</b>
									</h2>
									<p class="my-f2">가나다라마바사</p>
								</div>

								<div class="span3">
									<a href="#"><img src="../resources/img/c1.png"></a>
									<h2>
										<b>제목</b>
									</h2>
									<p class="my-f2">가나다라마바사</p>
								</div>

								<div class="span3">
									<a href="#"><img src="../resources/img/c1.png"></a>
									<h2>
										<b>제목</b>
									</h2>
									<p class="my-f2">가나다라마바사</p>

								</div>
								<div class="span3">
									<a href="#"><img src="../resources/img/c1.png"></a>
									<h2>
										<b>제목</b>
									</h2>
									<p class="my-f2">가나다라마바사</p>
								</div>
							</div>
						</div>
					</div>
				</div>





				<div class="item">

					<div class="container">
						<div class="row">

							<div class="mm1">
								<div class="span3">
									<a href="#"><img src="../resources/img/c1.png"></a>
									<h2>
										<b>제목</b>
									</h2>
									<p class="my-f2">가나다라마바사</p>
								</div>

								<div class="span3">
									<a href="#"><img src="../resources/img/c1.png"></a>
									<h2>
										<b>제목</b>
									</h2>
									<p class="my-f2">가나다라마바사</p>
								</div>

								<div class="span3">
									<a href="#"><img src="../resources/img/c1.png"></a>
									<h2>
										<b>제목</b>
									</h2>
									<p class="my-f2">가나다라마바사</p>

								</div>
								<div class="span3">
									<a href="#"><img src="../resources/img/c1.png"></a>
									<h2>
										<b>제목</b>
									</h2>
									<p class="my-f2">가나다라마바사</p>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
			
			<a class="btn btn-large btn-danger mm24" href="#">지금 바로가기</a><br>
			<!-- Carousel nav -->
			<a class="carousel-control left " href="#myCarousel2"
				data-slide="prev"><i class="icon-chevron-left"></i></a> <a
				class="carousel-control right" href="#myCarousel2" data-slide="next"><i
				class="icon-chevron-right"></i></a>
			<!-- /.Carousel nav -->

		</div>
		<!-- /Carousel -->





	</div>
	<script>
		/* gnb_area 로그아웃 버튼 작동 */
		$("#gnb_logout_button").click(function() {
			//alert("버튼 작동");
			$.ajax({
				type : "POST",
				url : "/member/logout.do",
				success : function(data) {
					alert("로그아웃 성공");
					document.location.reload();
				}
			}); // ajax 
		});
	</script>
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
<script>
$(document).ready(function(){
	/* 이미지 삽입 */
	$(".image_wrap").each(function(i, obj){
		
		const bobj = $(obj);
		
		console.log(bobj.data("cocktailno"));
		
		if(bobj.data("cocktailno")){
		
		const uploadPath = bobj.data("path");
		const uuid = bobj.data("uuid");
		const fileName = bobj.data("filename");
		
		const fileCallPath = encodeURIComponent(uploadPath + "/" + uuid + "_" + fileName);
		
		$(this).find("img").attr('src', '/display?fileName=' + fileCallPath);
		
		}else {
			$(this).find("img").attr('src', '../resources/img/noImage.png');
		}
	});
	
});
</script>
</body>
</html>