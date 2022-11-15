	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
    		<script src="../resources/js/side2.js"></script>
  <style>
<style type="text/css">
.input_wrap{
	width: 100%;
	padding: 5px 20px;
}
label{
    display: block;
    margin: 10px 0;
    font-size: 20px;	
}
input{
	padding: 5px;
    font-size: 17px;
}
textarea{
	width: 800px;
    height: 200px;
    font-size: 15px;
    padding: 10px;
}
.btn{
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
.btn_wrap{
	padding-left : 80px;
	margin-top : 50px;
}
.wrapper2 {
    display: flex;
    width: 1200px;
    justify-content: center;
    margin-bottom: 20px;
}
/* 글 제목 */
.board_title{
    font-size: 25px;
    border: none;
    color: #b70f0a;
}

/* 작성자 */
.board_writer{
	width : 50%;
	margin-right: 30%;
 	font-size: 10px;
    border: none;
    color: black;
    float: left;
    
  
}
/* 작성 날짜 */
.board_date{
	font-size: 10px;
    border: none;
    color: black;
     float: left;
      width: 35%; 
    
}
/* 글 번호 */
.board_no{
	margin-left:20%;
	margin-right:10%;
	font-size: 10px;
    border: none;
    color: black;
     float: left;
      width: 50%;
    
}
/* 조회수 */
.board_view{
	margin: 20%;
	font-size: 10px;
    border: none;
    color: black;
    float: left; 
    width: 50%;
}
/* 추천수 */
.board_recommend{
	margin: 20%;
	font-size: 10px;
    border: none;
    color: black;
    float: left; 
    width: 50%;
}
/* 게시판 내용 */
.board_content{
	outline: none;
	border: none;
	font-size: 20px;
	color: grey;
}
 .btn_1{
     width: 10%;
    font-size: 18px;
    border: 10px solid #b70f0a;
   
    border-radius: 2px;
    background: #b70f0a;
    color: white;
    text-decoration: none;
  }
input:focus {outline: none; display: inline-block;} /* outline 테두리 없애기 */
label:focus {display : inline-block; margin: 10px 0; font-size: 10px;	 }
	@import url(fontawesome-all.min.css);
@import url("https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700|Raleway:400,800,900");
/*
	Future Imperfect by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/
html, body, div, span, applet, object,
iframe, h1, h2, h3, h4, h5, h6, p, blockquote,
pre, a, abbr, acronym, address, big, cite,
code, del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var, b,
u, i, center, dl, dt, dd, ol, ul, li, fieldset,
form, label, legend, table, caption, tbody,
tfoot, thead, tr, th, td, article, aside,
canvas, details, embed, figure, figcaption,
footer, header, hgroup, menu, nav, output, ruby,
section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;}
article, aside, details, figcaption, figure,
footer, header, hgroup, menu, nav, section {
	display: block;}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
	blockquote:before, blockquote:after, q:before, q:after {
		content: '';
		content: none;
	}
table {
	border-collapse: collapse;
	border-spacing: 0;
}
body {
	-webkit-text-size-adjust: none;
}
/* Basic */
	@-ms-viewport {
		width: device-width;
	}
	body {
		-ms-overflow-style: scrollbar;
	}
	@media screen and (max-width: 480px) {
		html, body {
			min-width: 320px;
		}
	}
	html {
		box-sizing: border-box;
	}
	*, *:before, *:after {
		box-sizing: inherit;
	}
	body {
		background: #f4f4f4;
	}
		body.is-preload *, body.is-preload *:before, body.is-preload *:after {
			-moz-animation: none !important;
			-webkit-animation: none !important;
			-ms-animation: none !important;
			animation: none !important;
			-moz-transition: none !important;
			-webkit-transition: none !important;
			-ms-transition: none !important;
			transition: none !important;
		}
/* Type */
	body, input, select, textarea {
		color: #646464;
		font-family: "Source Sans Pro", Helvetica, sans-serif;
		font-size: 14pt;
		font-weight: 400;
		line-height: 1.75;
	}
	a {
		-moz-transition: color 0.2s ease, border-bottom-color 0.2s ease;
		-webkit-transition: color 0.2s ease, border-bottom-color 0.2s ease;
		-ms-transition: color 0.2s ease, border-bottom-color 0.2s ease;
		transition: color 0.2s ease, border-bottom-color 0.2s ease;
		/*border-bottom: dotted 1px rgba(160, 160, 160, 0.65);*/
		color: inherit;
		text-decoration: none;
	}
		a:before {
			-moz-transition: color 0.2s ease;
			-webkit-transition: color 0.2s ease;
			-ms-transition: color 0.2s ease;
			transition: color 0.2s ease;
		}
		a:hover {
			border-bottom-color: transparent;
			color: #000000 !important;
		}
			a:hover:before {
				color: #000000 !important;
			}
	strong, b {
		color: #3c3b3b;
		font-weight: 700;
	}
	em, i {
		font-style: italic;
	}
	p {
		margin: 0 0 2em 0;
	}
	h1, h2, h3, h4, h5, h6 {
		color: #3c3b3b;
		font-family: "Raleway", Helvetica, sans-serif;
		font-weight: 800;
		letter-spacing: 0.25em;
		line-height: 1.65;
		margin: 0 0 1em 0;
		text-transform: uppercase;
	}
		h1 a, h2 a, h3 a, h4 a, h5 a, h6 a {
			color: inherit;
			border-bottom: 0;
		}
	h2 {
		font-size: 1.1em;
	}
	h3 {
		font-size: 0.9em;
	}
	h4 {
		font-size: 0.7em;
	}
	h5 {
		font-size: 0.7em;
	}
	h6 {
		font-size: 0.7em;
	}
	sub {
		font-size: 0.8em;
		position: relative;
		top: 0.5em;
	}
	sup {
		font-size: 0.8em;
		position: relative;
		top: -0.5em;
	}
	blockquote {
		border-left: solid 4px rgba(160, 160, 160, 0.3);
		font-style: italic;
		margin: 0 0 2em 0;
		padding: 0.5em 0 0.5em 2em;
	}
	code {
		background: rgba(160, 160, 160, 0.075);
		border: solid 1px rgba(160, 160, 160, 0.3);
		font-family: "Courier New", monospace;
		font-size: 0.9em;
		margin: 0 0.25em;
		padding: 0.25em 0.65em;
	}
	pre {
		-webkit-overflow-scrolling: touch;
		font-family: "Courier New", monospace;
		font-size: 0.9em;
		margin: 0 0 2em 0;
	}
		pre code {
			display: block;
			line-height: 1.75em;
			padding: 1em 1.5em;
			overflow-x: auto;
		}
	hr {
		border: 0;
		border-bottom: solid 1px rgba(160, 160, 160, 0.3);
		margin: 2em 0;
	}
		hr.major {
			margin: 3em 0;
		}
	.align-left {
		text-align: left;
	}
	.align-center {
		text-align: center;
	}
	.align-right {
		text-align: right;
	}
/* Author */
	.author {
		display: -moz-flex;
		display: -webkit-flex;
		display: -ms-flex;
		display: flex;
		-moz-flex-direction: row;
		-webkit-flex-direction: row;
		-ms-flex-direction: row;
		flex-direction: row;
		-moz-align-items: center;
		-webkit-align-items: center;
		-ms-align-items: center;
		align-items: center;
		-moz-justify-content: -moz-flex-end;
		-webkit-justify-content: -webkit-flex-end;
		-ms-justify-content: -ms-flex-end;
		justify-content: flex-end;
		border-bottom: 0;
		font-family: "Raleway", Helvetica, sans-serif;
		font-size: 0.6em;
		font-weight: 400;
		letter-spacing: 0.25em;
		text-transform: uppercase;
		white-space: nowrap;
	}
		.author .name {
			-moz-transition: border-bottom-color 0.2s ease;
			-webkit-transition: border-bottom-color 0.2s ease;
			-ms-transition: border-bottom-color 0.2s ease;
			transition: border-bottom-color 0.2s ease;
			border-bottom: dotted 1px rgba(160, 160, 160, 0.65);
			display: block;
			margin: 0 1.5em 0 0;
		}
		.author img {
			border-radius: 100%;
			display: block;
			width: 4em;
		}
		.author:hover .name {
			border-bottom-color: transparent;
		}
/* Blurb */
	.blurb h2 {
		font-size: 0.8em;
		margin: 0 0 1.5em 0;
	}
	.blurb h3 {
		font-size: 0.7em;
	}
	.blurb p {
		font-size: 0.9em;
	}
	
/* Posts */
	ul.posts {
		list-style: none;
		padding: 0;
	}
		ul.posts li {
			border-top: dotted 1px rgba(160, 160, 160, 0.3);
			margin: 1.5em 0 0 0;
			padding: 1.5em 0 0 0;
		}
			ul.posts li:first-child {
				border-top: 0;
				margin-top: 0;
				padding-top: 0;
			}
		ul.posts article {
			display: -moz-flex;
			display: -webkit-flex;
			display: -ms-flex;
			display: flex;
			-moz-align-items: -moz-flex-start;
			-webkit-align-items: -webkit-flex-start;
			-ms-align-items: -ms-flex-start;
			align-items: flex-start;
			-moz-flex-direction: row-reverse;
			-webkit-flex-direction: row-reverse;
			-ms-flex-direction: row-reverse;
			flex-direction: row-reverse;
		}
			ul.posts article .image {
				display: block;
				margin-right: 1.5em;
				min-width: 4em;
				width: 4em;
			}
				ul.posts article .image img {
					width: 100%;
				}
			ul.posts article header {
				-moz-flex-grow: 1;
				-webkit-flex-grow: 1;
				-ms-flex-grow: 1;
				flex-grow: 1;
				-ms-flex: 1;
			}
				ul.posts article header h3 {
					font-size: 0.7em;
					margin-top: 0.125em;
				}
				ul.posts article header .published {
					display: block;
					font-family: "Raleway", Helvetica, sans-serif;
					font-size: 0.6em;
					font-weight: 400;
					letter-spacing: 0.25em;
					margin: -0.625em 0 1.7em 0;
					text-transform: uppercase;
				}
				ul.posts article header > :last-child {
					margin-bottom: 0;
				}
/* Post */
	.post {
		padding: 3em 3em 1em 3em ;
		background: #ffffff;
		border: solid 1px rgba(160, 160, 160, 0.3);
		margin: 0 0 3em 0;
		position: relative;
	}
		.post > header {
			display: -moz-flex;
			display: -webkit-flex;
			display: -ms-flex;
			display: flex;
			border-bottom: solid 1px rgba(160, 160, 160, 0.3);
			left: -3em;
			margin: -3em 0 3em 0;
			position: relative;
			width: calc(100% + 6em);
		}
			.post > header .title {
				-moz-flex-grow: 1;
				-webkit-flex-grow: 1;
				-ms-flex-grow: 1;
				flex-grow: 1;
				-ms-flex: 1;
				padding: 3.75em 3em 3.3em 3em;
			}
				.post > header .title h2 {
					font-weight: 900;
					font-size: 1.5em;
				}
				.post > header .title > :last-child {
					margin-bottom: 0;
				}
			.post > header .meta {
				padding: 3.75em 3em 1.75em 3em ;
				border-left: solid 1px rgba(160, 160, 160, 0.3);
				min-width: 17em;
				text-align: right;
				width: 17em;
			}
				.post > header .meta > * {
					margin: 0 0 1em 0;
				}
				.post > header .meta > :last-child {
					margin-bottom: 0;
				}
				.post > header .meta .published {
					color: #3c3b3b;
					display: block;
					font-family: "Raleway", Helvetica, sans-serif;
					font-size: 0.7em;
					font-weight: 800;
					letter-spacing: 0.25em;
					margin-top: 0.5em;
					text-transform: uppercase;
					white-space: nowrap;
				}
		.post > a.image.featured {
			overflow: hidden;
		}
			.post > a.image.featured img {
				-moz-transition: -moz-transform 0.2s ease-out;
				-webkit-transition: -webkit-transform 0.2s ease-out;
				-ms-transition: -ms-transform 0.2s ease-out;
				transition: transform 0.2s ease-out;
			}
			.post > a.image.featured:hover img {
				-moz-transform: scale(1.05);
				-webkit-transform: scale(1.05);
				-ms-transform: scale(1.05);
				transform: scale(1.05);
			}
		
				
		@media screen and (max-width: 980px) {
			.post {
				border-left: 0;
				border-right: 0;
				left: -3em;
				width: calc(100% + (3em * 2));
			}
				.post > header {
					-moz-flex-direction: column;
					-webkit-flex-direction: column;
					-ms-flex-direction: column;
					flex-direction: column;
					padding: 3.75em 3em 1.25em 3em ;
					border-left: 0;
				}
					.post > header .title {
						-ms-flex: 0 1 auto;
						margin: 0 0 2em 0;
						padding: 0;
						text-align: center;
					}
					.post > header .meta {
						-moz-align-items: center;
						-webkit-align-items: center;
						-ms-align-items: center;
						align-items: center;
						display: -moz-flex;
						display: -webkit-flex;
						display: -ms-flex;
						display: flex;
						-moz-justify-content: center;
						-webkit-justify-content: center;
						-ms-justify-content: center;
						justify-content: center;
						border-left: 0;
						margin: 0 0 2em 0;
						padding-top: 0;
						padding: 0;
						text-align: left;
						width: 100%;
					}
						.post > header .meta > * {
							border-left: solid 1px rgba(160, 160, 160, 0.3);
							margin-left: 2em;
							padding-left: 2em;
						}
						.post > header .meta > :first-child {
							border-left: 0;
							margin-left: 0;
							padding-left: 0;
						}
						.post > header .meta .published {
							margin-bottom: 0;
							margin-top: 0;
						}
						.post > header .meta .author {
							-moz-flex-direction: row-reverse;
							-webkit-flex-direction: row-reverse;
							-ms-flex-direction: row-reverse;
							flex-direction: row-reverse;
							margin-bottom: 0;
						}
							.post > header .meta .author .name {
								margin: 0 0 0 1.5em;
							}
		}
		@media screen and (max-width: 736px) {
			.post {
				padding: 1.5em 1.5em 0.1em 1.5em ;
				left: -1.5em;
				margin: 0 0 2em 0;
				width: calc(100% + (1.5em * 2));
			}
				.post > header {
					padding: 3em 1.5em 0.5em 1.5em ;
					left: -1.5em;
					margin: -1.5em 0 1.5em 0;
					width: calc(100% + 3em);
				}
					.post > header .title h2 {
						font-size: 1.1em;
					}
		}
		@media screen and (max-width: 480px) {
			.post > header .meta {
				-moz-align-items: center;
				-webkit-align-items: center;
				-ms-align-items: center;
				align-items: center;
				-moz-flex-direction: column;
				-webkit-flex-direction: column;
				-ms-flex-direction: column;
				flex-direction: column;
			}
				.post > header .meta > * {
					border-left: 0;
					margin: 1em 0 0 0;
					padding-left: 0;
				}
				.post > header .meta .author .name {
					display: none;
				}
			.post > .image.featured {
				margin-left: -1.5em;
				margin-top: calc(-1.5em - 1px);
				width: calc(100% + 3em);
			}
			
/* Section/Article */
	section.special, article.special {
		text-align: center;
	}
	header p {
		font-family: "Raleway", Helvetica, sans-serif;
		font-size: 0.7em;
		font-weight: 400;
		letter-spacing: 0.25em;
		line-height: 2.5;
		margin-top: -1em;
		text-transform: uppercase;
	}
</style>
  <style>
<style type="text/css">
.input_wrap{
	padding: 5px 20px;
}
label{
    display: block;
    margin: 10px 0;
    font-size: 20px;	
}
input{
	padding: 5px;
    font-size: 17px;
}
textarea{
	width: 800px;
    height: 200px;
    font-size: 15px;
    padding: 10px;
}
.btn{
  	display: inline-block;
    font-size: 22px;
    padding: 6px 12px;
    background-color: #fff;
    border: 1px solid #ddd;
    font-weight: 600;
    width: 140px;
    height: 41px;
    line-height: 39px;
    text-align : center;
    margin-left : 30px;
    cursor : pointer;
}
.btn_wrap{
	padding-left : 80px;
	margin-top : 50px;
}
/*
#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	
	/* 리뷰쓰기 버튼 */
	
  .reply_button_wrap{
  	padding : 10px;
  }
  .reply_button_wrap button{
	background-color: #365fdd;
    color: white;
    font-weight: bold;
    font-size: 15px;
    padding: 5px 12px;
    cursor: pointer;  
  }
  .reply_button_wrap button:hover{
  	background-color: #1347e7;
  }
  
  
  /* 리뷰 영역 */
  	.content_bottom{
  		width: 80%;
  		margin : auto;
  	}
	.reply_content_ul{
		list-style: none;
	}
	.comment_wrap{
		position: relative;
    	border-bottom: 1px dotted #d4d4d4;
    	padding: 14px 0 10px 0;	
    	font-size: 12px;
	}
		/* 리뷰 머리 부분 */
		.reply_top{
			padding-bottom: 10px;
		}
		.id_span{
			padding: 0 15px 0 3px;
		    font-weight: bold;		
		}
		.date_span{
			padding: 0 15px 0;
		}
		/* 리뷰 컨텐트 부분 */
		.reply_bottom{
			padding-bottom: 10px;
		}
		
	
	/* 리뷰 선 */
	.reply_line{
		width : 80%;
		margin : auto;
		border-top:1px solid #c6c6cf;  	
	}
	
	/* 리뷰 제목 */
	.reply_subject h2{
		padding: 15px 0 5px 5px;
	}
	
	/* pageMaker */
	.repy_pageInfo_div{
		text-align: center;
	    margin-top: 30px;
	    margin-bottom: 40px;	
	}
	.pageMaker{
	    list-style: none;
	    display: inline-block;	
	}
	.pageMaker_btn{
		float: left;
	    width: 25px;
	    height: 25px;
	    line-height: 25px;
	    margin-left: 20px;
	    font-size: 10px;
	    cursor: pointer;
	}
	.active{
		border : 2px solid black;
		font-weight:400;	
	}
	.next, .prev {
	    border: 1px solid #ccc;
	    padding: 0 10px;
	}	
  
  /* 리뷰 없는 경우 div */
  .reply_not_div{
  	text-align: center;
  }
  .reply_not_div span{
	display: block;
    margin-top: 30px;
    margin-bottom: 20px; 
  }
  
  /* 리뷰 수정 삭제 버튼 */
  .update_reply_btn{
 	font-weight: bold;
    background-color: #b7b399;
    display: inline-block;
    width: 40px;
    text-align: center;
    height: 20px;
    line-height: 20px;
    margin: 0 5px 0 30px;
    border-radius: 6px;
    color: white; 
    cursor: pointer;
  }
  .delete_reply_btn{
 	font-weight: bold;
    background-color: #e7578f;
    display: inline-block;
    width: 40px;
    text-align: center;
    height: 20px;
    line-height: 20px;
    border-radius: 6px;
    color: white; 
  	cursor: pointer;
  }
</style>
</head>
<body>
<%@include file="../includes/header2.jsp" %>
<!-- <h1>조회 페이지</h1> -->
	<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<div class="container">
	<article class="post">
								<header>
									<div class="title">
									 <!-- 타이틀 -->
										<h2>Cocktail Board Search Result</h2>
										<p><input name="" class="board_title" readonly="readonly" value='<c:out value="${pageInfo.forum_title}"/>' ></p>
									</div>
									<div class="meta">
										<time class="published" datetime="2015-10-22">October 22, 2015</time>
										<!--  작성자 -->
									<input name="updateDate" class = "board_writer" readonly="readonly" value='작성자 : <c:out value="${pageInfo.forum_memberID}"/>  ' >
										
									
									<!--  글번호 -->
									<input name="" class ="board_no" readonly="readonly" value='글 번호 : <c:out value="${pageInfo.forum_no}"/> ' >
	
									<!--  조회수 -->
									<input name="" class ="board_view" readonly="readonly" value='조회수 : <c:out value="${pageInfo.forum_views}"/>' >
	
									<!--  추천수  -->
									<input name="" class = "board_recommend" readonly="readonly" value='추천수 : <c:out value="${pageInfo.forum_recommend}"/>' >
									</div>
								</header>
								<!--  이미지 삽입 -->
								
								<div class="form_section_content">
									<div id="uploadReslut">
																		
									</div>
								</div>
									<!--  게시판 내용 -->
								<input name="" class ="board_content" readonly="readonly" value = '<c:out value="${pageInfo.forum_content}"/>'>		
	<div class="reply_button_wrap">
					<button>댓글 쓰기</button>
	</div>
	<div class="reply_not_div">
					
				</div>
				<ul class="reply_content_ul">
				<!--
				<li>
						<div class="comment_wrap">
							<div class="reply_top">
								<span class="id_span">sjinjin7</span>
								<span class="date_span">2021-10-11</span>
								<span class="rating_span">평점 : <span class="rating_value_span">4</span>점</span>
								<a class="update_reply_btn">수정</a><a class="delete_reply_btn">삭제</a>
							</div>
							<div class="reply_bottom">
								<div class="reply_bottom_txt">
									사실 기대를 많이하고 읽기시작했는데 읽으면서 가가 쓴것이 맞는지 의심들게합니다 문체도그렇고 간결하지 않네요 제가 기대가 크던 작았던간에 책장이 사실 안넘겨집니다.
								</div>
							</div>
						</div>
					</li>
					-->
				</ul>
				<div class="repy_pageInfo_div">
					<ul class="pageMaker">
					
					<!-- 
						<li class="pageMaker_btn prev">
							<a>이전</a>
						</li>
						<li class="pageMaker_btn">
							<a>1</a>
						</li>
						<li class="pageMaker_btn">
							<a>2</a>
						</li>
						<li class="pageMaker_btn active">
							<a>3</a>
						</li>													
						<li class="pageMaker_btn next">
							<a>다음</a>
						</li>
						 -->
					</ul>
				</div>
 
	<div class="btn_wrap">
		<a class="btn" id="list_btn">목록 페이지</a> 
		<a class="btn" id="modify_btn">수정 하기</a>
	</div>
	
	</article>
	<form id="infoForm" action="/forum/modify" method="get">
		<input type="hidden" id="forum_no" name="forum_no" value='<c:out value="${pageInfo.forum_no}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input type="hidden" name="type" value="${cri.type }">
		<input type="hidden" name="keyword" value="${cri.keyword }"/> 
		
	</form>
	</div>
	<%@include file="../includes/footer.jsp" %>
<script>

$(document).ready(function() {
/* 이미지 정보 호출 */
let forum_no = '<c:out value="${pageInfo.forum_no}"/>';
let uploadReslut = $("#uploadReslut");			

	$.getJSON("getAttachList", {forum_no : forum_no}, function(arr){	
	
	if(arr.length === 0){			
		let str = "";
		str += "<div id='result_card'>";
		str += "<img src='/resources/img/noname.png'>";
		str += "</div>";
		
		uploadReslut.html(str);	
	}	
	
	let str = "";
	let obj = arr[0];	
	
	let fileCallPath = encodeURIComponent(obj.forum_uploadPath + "/s_" + obj.forum_uuid + "_" + obj.forum_fileName);
	str += "<div id='result_card'";
	str += "data-path='" + obj.forum_uploadPath + "' data-uuid='" + obj.forum_uuid + "' data-filename='" + obj.forum_fileName + "'";
	str += ">";
	str += "<img src='display?fileName=" + fileCallPath +"'>";
	str += "</div>";		
	
	uploadReslut.html(str);						
	
	});	
});




	let form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#forum_no").remove();
		form.attr("action", "/forum/list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/forum/modify");
		form.submit();
	});	
	
	/*댓글쓰기 */
	$(".reply_button_wrap").on("click", function(e){
		
		e.preventDefault();
		
		const forum_no = '${pageInfo.forum_no}';

		let popUrl = "/forum/replyEnroll?forum_no=" + forum_no;
		console.log(popUrl);
		let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
		
		window.open(popUrl,"리뷰 쓰기",popOption);

	});
	
	
	
	const forum_no = '${pageInfo.forum_no}';	

	$.getJSON("/forumreply/list", {forum_no : forum_no}, function(obj){
		
		makeReplyContent(obj);
		
	});
	
	
	
	/* 댓글(리뷰) 동적 생성 메서드 */
	function makeReplyContent(obj){
		
		if(obj.list.length === 0){
			$(".reply_not_div").html('<span>리뷰가 없습니다.</span>');
			$(".reply_content_ul").html('');
			$(".pageMaker").html('');
		} else{
			
			$(".reply_not_div").html('');
			
			const list = obj.list;
			const pf = obj.pageInfo;
			
			/* list */
			
			let reply_list = '';
			
			$(list).each(function(i,obj){

				reply_list += '<li>';
				reply_list += '<div class="comment_wrap">';
				reply_list += '<div class="reply_top">';
				/* 아이디 */
				reply_list += '<span class="id_span">'+ obj.forum_mk+'</span>';
				/* 날짜 */
				reply_list += '<span class="date_span">'+ obj.forum_regDate +'</span>';
				/* 평점 */
				reply_list += '<span class="rating_span">평점 : <span class="rating_value_span">'+ obj.forum_rating +'</span>점</span>';
			
				reply_list += '<a class="update_reply_btn" href="'+ obj.forum_replyId +'">수정</a><a class="delete_reply_btn" href="'+ obj.forum_replyId +'">삭제</a>';
				reply_list += '</div>'; //<div class="reply_top">
				reply_list += '<div class="reply_bottom">';
				reply_list += '<div class="reply_bottom_txt">'+ obj.forum_content +'</div>';
				reply_list += '</div>';//<div class="reply_bottom">
				reply_list += '</div>';//<div class="comment_wrap">
				reply_list += '</li>';
				
			});	
			
			$(".reply_content_ul").html(reply_list);	
			
			/* 페이지 버튼 */
			
			let reply_pageMaker = '';	
			
			/* prev */
			if(pf.prev){
				let prev_num = pf.pageStart -1;
				reply_pageMaker += '<li class="pageMaker_btn prev">';
				reply_pageMaker += '<a href="'+ prev_num +'">이전</a>';
				reply_pageMaker += '</li>';	
			}
			/* numbre btn */
			for(let i = pf.pageStart; i < pf.pageEnd+1; i++){
				reply_pageMaker += '<li class="pageMaker_btn ';
				if(pf.cri.pageNum === i){
					reply_pageMaker += 'active';
				}
				reply_pageMaker += '">';
				reply_pageMaker += '<a href="'+i+'">'+i+'</a>';
				reply_pageMaker += '</li>';
			}
			/* next */
			if(pf.next){
				let next_num = pf.pageEnd +1;
				reply_pageMaker += '<li class="pageMaker_btn next">';
				reply_pageMaker += '<a href="'+ next_num +'">다음</a>';
				reply_pageMaker += '</li>';	
			}			
			$(".pageMaker").html(reply_pageMaker);	
		}
	
	}	
	
	
	/* 댓글 페이지 정보 */
	 const cri = {
		forum_no : '${pageInfo.forum_no}',
		pageNum : 1,
		amount : 10
	}
	
	 /* 댓글 데이터 서버 요청 및 댓글 동적 생성 메서드 */
		let replyListInit = function(){
		 $.getJSON("/forumreply/list", cri , function(obj){
				
				makeReplyContent(obj);
				
			});	
		}
	
	 /* 댓글 페이지 이동 버튼 동작 */
		$(document).on('click', '.pageMaker_btn a', function(e){
				
			
			e.preventDefault();
			
			let page = $(this).attr("href");	
			cri.pageNum = page;		
			
			replyListInit();
				
		 });
	 
		/* 리뷰 수정 버튼 */
		 $(document).on('click', '.update_reply_btn', function(e){
				
				e.preventDefault();
				let forum_replyId = $(this).attr("href");		 
				let popUrl = "/forum/replyUpdate?forum_replyId=" + forum_replyId + "&forum_no=" + '${pageInfo.forum_no}';	
				let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes"	
				
				window.open(popUrl,"리뷰 수정",popOption);			
			 
				
		 });
		
			/* 리뷰 삭제 버튼 */
		 $(document).on('click', '.delete_reply_btn', function(e){

			 e.preventDefault();
				let forum_replyId = $(this).attr("href");	
				
				$.ajax({
					data : {
						forum_replyId : forum_replyId,
						forum_no : '${pageInfo.forum_no}'
					},
					url : '/forumreply/delete',
					type : 'POST',
					success : function(result){
						replyListInit();
						alert('삭제가 완료되엇습니다.');
					}
				});	
		 });
	
</script>	
</body>
</html>