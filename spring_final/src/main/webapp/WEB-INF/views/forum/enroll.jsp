<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<style>
@import url(fontawesome-all.min.css);
@import
	url("https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700|Raleway:400,800,900")
	;
/*
	Future Imperfect by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}
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
@
-ms-viewport {
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
/* Post */
.post {
	padding: 3em 3em 1em 3em;
	background: #ffffff;
	border: solid 1px rgba(160, 160, 160, 0.3);
	margin: 0 0 3em 0;
	position: relative;
}
.post>header {
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
.post>header .title {
	-moz-flex-grow: 1;
	-webkit-flex-grow: 1;
	-ms-flex-grow: 1;
	flex-grow: 1;
	-ms-flex: 1;
	padding: 3.75em 3em 3.3em 3em;
}
.post>header .title h2 {
	font-weight: 900;
	font-size: 1.5em;
}
.post>header .title>:last-child {
	margin-bottom: 0;
}
.post>header .meta {
	padding: 3.75em 3em 1.75em 3em;
	border-left: solid 1px rgba(160, 160, 160, 0.3);
	min-width: 17em;
	text-align: right;
	width: 17em;
}
.post>header .meta>* {
	margin: 0 0 1em 0;
}
.post>header .meta>:last-child {
	margin-bottom: 0;
}
.post>header .meta .published {
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
.post>a.image.featured {
	overflow: hidden;
}
.post>a.image.featured img {
	-moz-transition: -moz-transform 0.2s ease-out;
	-webkit-transition: -webkit-transform 0.2s ease-out;
	-ms-transition: -ms-transform 0.2s ease-out;
	transition: transform 0.2s ease-out;
}
.post>a.image.featured:hover img {
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
		width: calc(100% + ( 3em * 2));
	}
	.post>header {
		-moz-flex-direction: column;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
		padding: 3.75em 3em 1.25em 3em;
		border-left: 0;
	}
	.post>header .title {
		-ms-flex: 0 1 auto;
		margin: 0 0 2em 0;
		padding: 0;
		text-align: center;
	}
	.post>header .meta {
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
	.post>header .meta>* {
		border-left: solid 1px rgba(160, 160, 160, 0.3);
		margin-left: 2em;
		padding-left: 2em;
	}
	.post>header .meta>:first-child {
		border-left: 0;
		margin-left: 0;
		padding-left: 0;
	}
	.post>header .meta .published {
		margin-bottom: 0;
		margin-top: 0;
	}
	.post>header .meta .author {
		-moz-flex-direction: row-reverse;
		-webkit-flex-direction: row-reverse;
		-ms-flex-direction: row-reverse;
		flex-direction: row-reverse;
		margin-bottom: 0;
	}
	.post>header .meta .author .name {
		margin: 0 0 0 1.5em;
	}
}
@media screen and (max-width: 736px) {
	.post {
		padding: 1.5em 1.5em 0.1em 1.5em;
		left: -1.5em;
		margin: 0 0 2em 0;
		width: calc(100% + ( 1.5em * 2));
	}
	.post>header {
		padding: 3em 1.5em 0.5em 1.5em;
		left: -1.5em;
		margin: -1.5em 0 1.5em 0;
		width: calc(100% + 3em);
	}
	.post>header .title h2 {
		font-size: 1.1em;
	}
}
@media screen and (max-width: 480px) {
	.post>header .meta {
		-moz-align-items: center;
		-webkit-align-items: center;
		-ms-align-items: center;
		align-items: center;
		-moz-flex-direction: column;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column;
	}
	.post>header .meta>* {
		border-left: 0;
		margin: 1em 0 0 0;
		padding-left: 0;
	}
	.post>header .meta .author .name {
		display: none;
	}
	.post>.image.featured {
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
}
</style>
<body>
<%@include file="../includes/header2.jsp" %>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/forum/enroll.css">
<div class="container">
<!-- <h1>게시판 등록</h1> -->
<!-- Post -->
	<article class="post">
		<header>
			<div class="title">
				<h2>게시판 등록</h2>
				<p>게시판 내용을 등록할 수 있습니다.</p>
			</div>
			<div class="meta">
				<time class="published" datetime="2015-10-22">cocktail board</time>
				<a href="#" class="author"><span class="name">작성자</span><</a>
			</div>
		</header>
		<footer>
			<form action="/forum/enroll" method="post">
				<div class="input_wrap">
					<label>제목</label> <input name="forum_title">
				</div>
				<div class="input_wrap">
					<label>내용</label> <input name="forum_content">
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>사진 첨부</label>
					</div>
					<div class="form_section_content">
						<input type="file" id="fileItem" name='uploadFile'
							style="height: 30px;">
						<div id="uploadResult">							
						</div>
					</div>
				</div>
				<div class="input_wrap">
					<label>작성자</label> <input name="forum_memberID">
				</div>

					
				<button class="btn">등록</button>
				</form>
		</footer>
	</article>
    </div>
    <%@include file="../includes/footer.jsp" %>
    <!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
<script>

/* 이미지 업로드 */
$("input[type='file']").on("change", function(e){
	
	/* 이미지 존재시 삭제 */
	if($(".imgDeleteBtn").length > 0){
		deleteFile();
	}
	
	let fileInput = $('input[name="uploadFile"]');
	let formData = new FormData();
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];
	
	console.log("fileList : " + fileList);
	console.log("fileObj : " + fileObj);
	console.log("fileName : " + fileObj.name);
	console.log("fileSize : " + fileObj.size);
	console.log("fileType(MimeType) : " + fileObj.type);
	
	if(!fileCheck(fileObj.name, fileObj.size)){
		return false;
	}
	
	formData.append("uploadFile", fileObj);
	
	$.ajax({
		url: '/forum/ImageAction',
    	processData : false,
    	contentType : false,
    	data : formData,
    	type : 'POST',
      	dataType : 'json',
    	success : function(result){
    		console.log(result);
    		showUploadImage(result);
    	},
    	error : function(result){
    		alert("이미지 파일이 아닙니다.");
    	}
	});		
	
});

/* 파일 체크 */
let regex = new RegExp("(.*?)\.(jpg|png)$");
let maxSize = 1048576; //1MB	

function fileCheck(fileName, fileSize){

	if(fileSize >= maxSize){
		alert("파일 사이즈 초과");
		return false;
	}
		  
	if(!regex.test(fileName)){
		alert("해당 종류의 파일은 업로드할 수 없습니다.");
		return false;
	}
	
	return true;		
	
}


/* 이미지 출력 */
function showUploadImage(uploadResultArr){
	
	/* 전달받은 데이터 검증 */
	if(!uploadResultArr || uploadResultArr.length == 0)
	{
		return;
		}
	
	
	let uploadResult = $("#uploadResult");
	
	let obj = uploadResultArr[0];
	
	let str = "";
	
	let fileCallPath = encodeURIComponent(obj.forum_uploadPath.replace(/\\/g, '/') + "/s_" + obj.forum_uuid + "_" + obj.forum_fileName);
	
	str += "<div id='result_card'>";
	str += "<img src='display?fileName=" + fileCallPath +"'>";
	str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
	str += "<input type='hidden' name='imageList[0].forum_fileName' value='"+ obj.forum_fileName +"'>";
	str += "<input type='hidden' name='imageList[0].forum_uuid' value='"+ obj.forum_uuid +"'>";
	str += "<input type='hidden' name='imageList[0].forum_uploadPath' value='"+ obj.forum_uploadPath +"'>";		
	str += "</div>";		
	
		uploadResult.append(str);     
    
}


/* 파일 삭제 메서드 */
function deleteFile(){
	
	let targetFile = $(".imgDeleteBtn").data("file");
	
	let targetDiv = $("#result_card");
	
	$.ajax({
		url: '/forum/deleteFile',
		data : {fileName : targetFile},
		dataType : 'text',
		type : 'POST',
		success : function(result){
			console.log(result);
			
			targetDiv.remove();
			$("input[type='file']").val("");
			
		},
		error : function(result){
			console.log(result);
			
			alert("파일을 삭제하지 못하였습니다.")
		}
	});
}
 
/* 이미지 삭제 버튼 동작 */
$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
	
	deleteFile();
	
});

</script>
</form>

</body>
</html>