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
<link href="../resources/css/btn.css" rel="stylesheet">
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





<style>       

@import url("https://fonts.googleapis.com/css?family=Exo+2:900");

h2 {
   margin-left: 10%;
  font-family: "Exo 2", sans-serif;
  font-size: 1.5vw;
  color: white;
  padding: 5rem 0;
  text-shadow: 0px 4px 48px rgba(255, 255, 255, 0.2);
  
}
.bg{

  width: 100%;

}
.container11 {



  justify-content: left;
  background-image: url("../resources/img/slide/0101.png");

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






		</style>
  
  
  
  
    <!-- SCRIPT 
    ============================================================-->  
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
      <script src="js/side.js"></script>
      
  </head>
  <body>

	<div class="container">

<!--

  <a class="custom-btn btn-3"><span>3Read More</span></a>

  <a class="custom-btn btn-5"><span>5Read More</span></a>
  <a class="custom-btn btn-6"><span>6Read More</span></a>
  <a class="custom-btn btn-7"><span>7Read More</span></a>
  <a class="custom-btn btn-8"><span>8Read More</span></a>
  <a class="custom-btn btn-9">9Read More</a>
  <a class="custom-btn btn-10">10Read More</a>
  <a class="custom-btn btn-11">11Read More<div class="dot"></div></a>
  <a class="custom-btn btn-12"><span>Click!</span><span>12Read More</span></a>
  <a class="custom-btn btn-13">13Read More</a>
  <a class="custom-btn btn-14">14Read More</a>
  <a class="custom-btn btn-15">15Read More</a>
  <a class="custom-btn btn-16">16Read More</a>
 






<div class=" span3">
  <img src="img/c1.png" alt="">
  
  <div class="hover-box">
    <p class="title">Img hover</p>
    <p class="sub">
      hello world!
    </p>
    
  </div>
</div>

<div class="more">
<a class="learn-more">Learn More</a>
</div>
-->
<!-- /.Row View -->




<div class="bg">

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
	
	<h2><p style=" font-size: 7.5vw;">Mojito!</P><br>
	    
The refreshing taste of mint gives<br>
it a refreshing taste.<br>
The bright green color of lime and mint stands<br>
out and givesa refreshing feeling visually.
	
	
	</h2><br>

</div>

</div>






<!--Footer
==========================-->

<footer>
    <div class="">
      <div class="row">
        <div class="span3"> <a href="#"><img src="img/logo.png" ></a>  <br><br>
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

 </div>
<!--/.Footer-->

  </body>
</html>s