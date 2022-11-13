	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
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
  
   <link rel="stylesheet" href="../resources/css/service.css">
   

    <!-- SCRIPT 
    ============================================================-->
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
  
  <style>
<style type="text/css">

.input_wrap{
	width: 100%;
	padding: 5px 20px;
}

input{
	padding: 5px;
    font-size: 17px;
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
		border-bottom: dotted 1px rgba(160, 160, 160, 0.65);
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
</head>
<body>
<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

 

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
                    			
								
	

		

	<form id="infoForm" action="/forum/modify" method="get">
		<input type="hidden" id="forum_no" name="forum_no" value='<c:out value="${pageInfo.forum_no}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input type="hidden" name="type" value="${cri.type }">
		<input type="hidden" name="keyword" value="${cri.keyword }"/> 
		
	</form>


<div class="input_wrap">
		<div class="btn_wrap">
		<a class="btn_1" id="list_btn">목록 페이지</a> 
		<a class="btn_1" id="modify_btn">수정 하기</a>
	</div>
		
	</div>
								
</article>

<script>


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
</script>	
</body>
</html>