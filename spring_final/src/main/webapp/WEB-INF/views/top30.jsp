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
</style>
<!-- SCRIPT 
    ============================================================-->
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>
<style>
.wrapper2 {
	display: flex;
	width: 1100px;
	height: 400px;
	margin-left: 5px;
}
.itemBox2 {
	border-width: 2px;
	border-color: #c0c0c0;
	border-style: solid;
	border-radius: 20px;
	background-color: #ffffff;
	width: 220px;
	height: 370px;
	margin-right: 10px;
}
.thumbnailBox {
	width: 220px;
	height: 220px;
	margin-bottom: 10px;
	margin-top: 5px;
}
.thumbnail {
	width: 200px;
	height: 200px;
	border-radius: 20px;
	margin: auto;
}
.items2 {
	height: 30px;
	text-align: center;
	font-size: 20px;
	color: #000000;
	margin-bottom: 10px;
}
.table_wrap {
	width: 1170px;
	height: 800px;
	padding: 20px;
	background: #f7f6f6;
	margin-top: 80px;
	padding-bottom: 10px;
	border-width: 2px;
	border-color: #c0c0c0;
	border-style: solid;
	border-radius: 20px;
}
/* 페이지 버튼 인터페이스 */
.pageMaker_wrap {
	text-align: center;
	margin-bottom: 40px;
}
.pageMaker_wrap a {
	color: black;
}
.pageMaker {
	list-style: none;
	display: inline-block;
}
.pageMaker_btn {
	float: left;
	width: 40px;
	height: 40px;
	line-height: 40px;
	margin-left: 20px;
}
.next, .prev {
	border: 1px solid #ccc;
	padding: 0 10px;
}
.next a, .prev a {
	color: #ccc;
}
.active { /* 현재 페이지 버튼 */
	border: 2px solid black;
	font-weight: 400;
}
/* 칵테일 상세페이지 이동 태그*/
.cocktail_table a {
	color: #1088ed;
	font-weight: 500;
}
/* 검색 영역 */
.search_wrap {
	margin-top: 15px;
}
.search_input {
	position: relative;
	text-align: center;
}
.search_input input[name='keyword'] {
	padding: 4px 10px;
	font-size: 15px;
	height: 20px;
	line-height: 20px;
}
.search_btn {
	height: 32px;
	width: 80px;
	font-weight: 600;
	font-size: 18px;
	line-height: 20px;
	position: absolute;
	margin-left: 15px;
	background-color: #c3daf7;
}
.table_empty {
	height: 50px;
	text-align: center;
	margin: 200px 0 215px 0px;
	font-size: 25px;
}
.dd {
	margin-bottom: 5px;
}
.star-ratings {
	color: #e1e1e1;
	position: relative;
	unicode-bidi: bidi-override;
	width: max-content;
	-webkit-text-stroke-width: 1.3px;
	-webkit-text-stroke-color: #2b2a29;
}
.star-ratings-fill {
	color: #fff58c;
	padding: 0;
	position: absolute;
	z-index: 1;
	display: flex;
	top: 0;
	left: 0;
	overflow: hidden;
	-webkit-text-fill-color: gold;
}
.star-ratings-base {
	z-index: 0;
	padding: 0;
}

</style>
</head>
<body>
	<%@include file="includes/header.jsp"%>
	<!--  
	<style>
		.span3{
			border-width: 2px;
			border-color: #c0c0c0;
			border-style: solid;
			border-radius: 20px;
			
			background-color: #ffffff;
			width: 220px;
			height: 370px;
			margin-right:10px;
			}
	</style>
	-->
	
	<div class="feature">
		<div class="row feature-box">
			<div class="span12 cnt-title" style="text-align: center;">
				<span></span>
			</div>

			<div class="mm">
				<div class="table_wrap"
					style="display: inline-flex; flex-direction: column; overflow: scroll; width: 1500px; height: 700px;">
					<div class="1line" id="aa">
						<c:forEach items="${ls}" var="ls" begin="0" end="4" varStatus="status">
							<div class="span3" style=" border:1px solid ; border-radius: 20px; background-color:white;">
									<h2>
										<B>${(status.index)+1} th</B>
									</h2>
										<!-- 				 
									<c:choose>
										<c:when test="${(status.index)+1} == 1">
										<h2>
											<B>${(status.index)+1} st</B>
											</h2>
										</c:when>
										
										<c:when test="${(status.index)+1} == 2">
										<h2>
											<B>${(status.index)+1} nd</B>
											</h2>
										</c:when>
										
										<c:otherwise>
										<h2>
										<B>${(status.index)+1} th</B>
										</h2>
										</c:otherwise>
										</c:choose>										
								 -->	

								<a href="/service?cocktailNo=${ls.cocktailNo}&cocktailName=${ls.cocktailName}" >
									<div class="image_wrap"
										data-cocktailno="${ls.imageList[0].cocktailNo}"
										data-path="${ls.imageList[0].uploadPath}"
										data-uuid="${ls.imageList[0].uuid}"
										data-filename="${ls.imageList[0].fileName}">
										<img
											style="width: 200px; height: 200px; border-radius: 20px; margin-left: 10px;">
									</div>
								</a>
								<p class="my-f1">
									<b>${ls.cocktailName}</b>
								</p>
							</div>
							
						</c:forEach>
					</div>
					<br>
					<div class="2line" id="aa">
						<c:forEach items="${ls}" var="ls" begin="5" end="9"
							varStatus="status">

							<div class="span3" style=" border:1px solid ; border-radius: 20px; ">
								<h2>
									<B>${(status.index)+1}th</B>
								</h2>
								<a href="/service?cocktailNo=${ls.cocktailNo}&cocktailName=${ls.cocktailName}">
									<div class="image_wrap"
										data-cocktailno="${ls.imageList[0].cocktailNo}"
										data-path="${ls.imageList[0].uploadPath}"
										data-uuid="${ls.imageList[0].uuid}"
										data-filename="${ls.imageList[0].fileName}">
										<img style="width: 200px; height: 200px; border-radius: 20px; margin-left: 10px;">
									</div>
								</a>
								<p class="my-f1">
									<b>${ls.cocktailName}</b>
								</p>
							</div>

						</c:forEach>
					</div>
					<br>
					<div class="3line" id="aa">
						<c:forEach items="${ls}" var="ls" begin="10" end="14"
							varStatus="status">

							<div class="span3" style=" border:1px solid ; border-radius: 20px; ">
								<h2>
									<B>${(status.index)+1}th</B>
								</h2>
								<a href="/service?cocktailNo=${ls.cocktailNo}&cocktailName=${ls.cocktailName}">
									<div class="image_wrap"
										data-cocktailno="${ls.imageList[0].cocktailNo}"
										data-path="${ls.imageList[0].uploadPath}"
										data-uuid="${ls.imageList[0].uuid}"
										data-filename="${ls.imageList[0].fileName}">
										<img
											style="width: 200px; height: 200px; border-radius: 20px; margin-left: 10px;">
									</div>
								</a>
								<p class="my-f1">
									<b>${ls.cocktailName}</b>
								</p>
							</div>

						</c:forEach>
					</div>
					<br>
					<div class="4line" id="aa">
						<c:forEach items="${ls}" var="ls" begin="15" end="19"
							varStatus="status">

							<div class="span3" style=" border:1px solid ; border-radius: 20px; ">
								<h2>
									<B>${(status.index)+1}th</B>
								</h2>
								<a href="/service?cocktailNo=${ls.cocktailNo}&cocktailName=${ls.cocktailName}">
									<div class="image_wrap"
										data-cocktailno="${ls.imageList[0].cocktailNo}"
										data-path="${ls.imageList[0].uploadPath}"
										data-uuid="${ls.imageList[0].uuid}"
										data-filename="${ls.imageList[0].fileName}">
										<img
											style="width: 200px; height: 200px; border-radius: 20px; margin-left: 10px;">
									</div>
								</a>
								<p class="my-f1">
									<b>${ls.cocktailName}</b>
								</p>
							</div>

						</c:forEach>
					</div>
					<br>
					<div class="5line" id="aa">
						<c:forEach items="${ls}" var="ls" begin="20" end="24"
							varStatus="status">

							<div class="span3" style=" border:1px solid ; border-radius: 20px; ">
								<h2>
									<B>${(status.index)+1}th</B>
								</h2>
								<a href="/service?cocktailNo=${ls.cocktailNo}&cocktailName=${ls.cocktailName}">
									<div class="image_wrap"
										data-cocktailno="${ls.imageList[0].cocktailNo}"
										data-path="${ls.imageList[0].uploadPath}"
										data-uuid="${ls.imageList[0].uuid}"
										data-filename="${ls.imageList[0].fileName}">
										<img
											style="width: 200px; height: 200px; border-radius: 20px; margin-left: 10px;">
									</div>
								</a>
								<p class="my-f1">
									<b>${ls.cocktailName}</b>
								</p>
							</div>

						</c:forEach>
					</div>
					<br>
					<div class="6line" id="aa">
						<c:forEach items="${ls}" var="ls" begin="25" end="29"
							varStatus="status">

							<div class="span3" style=" border:1px solid ; border-radius: 20px; ">
								<h2>
									<B>${(status.index)+1}th</B>
								</h2>
								<a href="/service?cocktailNo=${ls.cocktailNo}&cocktailName=${ls.cocktailName}">
									<div class="image_wrap"
										data-cocktailno="${ls.imageList[0].cocktailNo}"
										data-path="${ls.imageList[0].uploadPath}"
										data-uuid="${ls.imageList[0].uuid}"
										data-filename="${ls.imageList[0].fileName}">
										<img
											style="width: 200px; height: 200px; border-radius: 20px; margin-left: 10px;">
									</div>
								</a>
								<p class="my-f1">
									<b>${ls.cocktailName}</b>
								</p>
							</div>

						</c:forEach>
					</div>

					<div class="v-bg1"></div>
				</div>
			</div>
		</div>
	</div>
	
	<%@include file="includes/footer.jsp"%>
	<script>
		$(document)
				.ready(
						function() {
							/* 이미지 삽입 */
							$(".image_wrap")
									.each(
											function(i, obj) {
												const bobj = $(obj);
												console.log(bobj
														.data("cocktailno"));
												if (bobj.data("cocktailno")) {
													const uploadPath = bobj
															.data("path");
													const uuid = bobj
															.data("uuid");
													const fileName = bobj
															.data("filename");
													const fileCallPath = encodeURIComponent(uploadPath
															+ "/"
															+ uuid
															+ "_"
															+ fileName);
													$(this)
															.find("img")
															.attr(
																	'src',
																	'/display?fileName='
																			+ fileCallPath);
												} else {
													$(this)
															.find("img")
															.attr('src',
																	'../resources/img/noImage.png');
												}
											});
						});
		let moveForm = $('#moveForm');
		$(".pageNumber").on("click", function(e) {
			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.submit();
		});
		/* 칵테일 상세 페이지 이동 */
		$(".move")
				.on(
						"click",
						function(e) {
							e.preventDefault();
							moveForm
									.append("<input type='hidden' name='cocktailNo' value='"
											+ $(this).attr("name") + "'>");
							moveForm.attr("action", "/service");
							moveForm.submit();
						});
	</script>
</body>

</html>