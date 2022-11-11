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
		.wrapper2{
			display: flex;
			width: 1100px;
			height:400px;
			margin-left:5px;
		}
		.itemBox2{
			border-width: 2px;
			border-color: #c0c0c0;
			border-style: solid;
			border-radius: 20px;
			
			background-color: #ffffff;
			width: 220px;
			height: 370px;
			margin-right:10px;
		}
		.thumbnailBox{
			width:220px;
			height:220px;
			margin-bottom:10px;
			margin-top:5px;
		}
		.thumbnail{
			width:200px;
			height:200px;
			border-radius: 20px;
			margin: auto;
		}
		.items2{
			height:30px;
			text-align: center;
			font-size: 20px;
			color: #000000;
			margin-bottom:10px;
		}
	.table_wrap{
		width:1170px;
		height:800px;
		padding:20px;
		background: #f7f6f6;
		margin-top:20px;
		
		padding-bottom: 10px;
		
		
		border-width: 2px;
		border-color: #c0c0c0;
		border-style: solid;
		border-radius: 20px;	
	}
		/* 페이지 버튼 인터페이스 */
.pageMaker_wrap{
	text-align: center;
    margin-bottom: 40px;
}
.pageMaker_wrap a{
	color : black;
}
.pageMaker{
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
.active{							/* 현재 페이지 버튼 */
	border : 2px solid black;
	font-weight:400;
}

/* 칵테일 상세페이지 이동 태그*/
.cocktail_table a{
	color:#1088ed;
	font-weight: 500;
}


	/* 검색 영역 */
.search_wrap{
	margin-top:15px;
}
.search_input{
    position: relative;
    text-align:center;	
}
.search_input input[name='keyword']{
	padding: 4px 10px;
    font-size: 15px;
    height: 20px;
    line-height: 20px;
}
.search_btn{
	height: 32px;
    width: 80px;
    font-weight: 600;
    font-size: 18px;
    line-height: 20px;
    position: absolute;
    margin-left: 15px;
    background-color: #c3daf7;
}

.table_empty{
	height: 50px;
    text-align: center;
    margin: 200px 0 215px 0px;
    font-size: 25px;
}
.dd{
	margin-bottom:5px;
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

@font-face {
    font-family: 'MaplestoryOTFBold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
</style>
</head>
<body>
    <%@include file="includes/header.jsp" %>
    
    <div class="container">
                    <div class="admin_content_subject"><p style= " display: flex; justify-content: center; font-family: 'MaplestoryOTFBold'; margin-top:20px; font-weight:lighter; font-size:50px ">계절별 칵테일</p>
                    <select class="season" onchange="window.open('cocktailSeason?season='+value,'_self');">
						  <option value="" class="label">계절 선택</option>
						 		<option value="봄">봄</option>
								<option value="여름">여름</option>
								<option value="가을">가을</option>
								<option value="겨울">겨울</option>
					</select> 
                    </div>
                    <div class="table_wrap">
                    <!-- 게시물 O -->
                    	<c:if test="${listCheck != 'empty'}">
                		 <div class="wrapper2">
                		 	<c:forEach items="${list}" var="list" begin="0" end="4" varStatus="status">
                		 	<script>
								function starSize(a){
								    const rate = a * 20 + '%';
								    const d = 'calc(' + rate + ' - 1.3px)';
								    $('#cocktail${status.index}').css('width', d);
									};
							</script>
					        <div class="itemBox2 move" name='<c:out value="${list.cocktailNo}"/>' id='<c:out value="${list.cocktailName}"/>' style="cursor:pointer;">
					            <div class="image_wrap thumbnailBox" data-cocktailno="${list.imageList[0].cocktailNo}" data-path="${list.imageList[0].uploadPath}"
					             data-uuid="${list.imageList[0].uuid}" data-filename="${list.imageList[0].fileName}">
									<img style="width:200px;height:200px;border-radius: 20px;margin-left:10px;"></div>
					            <div class="items2"><b><c:out value="${list.cocktailName}"></c:out></b></div>
					            <div class="items2 dd">도수 : <c:out value="${list.cocktailAbv}"></c:out>%</div>
					            <div class="items2 dd">난이도 : <c:out value="${list.cocktailLevel}"></c:out></div>
					            <div class="items2 dd" style="font-size:16px;">
					            <span class="star-ratings" style="margin-left:20px">
									<span class="star-ratings-fill space-x-2 text-lg" id="cocktail${status.index}">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</span>
									<span class="star-ratings-base space-x-2 text-lg">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</span>
						            <script>
						            	starSize(${list.cocktailRating});
									</script>
								</span><span style="">${list.cocktailRating}/5.0</span></div>
					        </div>
					        </c:forEach>
					        </div>
					        <div class="wrapper2">
					        <c:forEach items="${list}" var="list" begin="5" end="9" varStatus="status">
					        <script>
								function starSize2(a){
								    const rate = a * 20 + '%';
								    const d = 'calc(' + rate + ' - 1.3px)';
								    $('#cocktail${status.index}').css('width', d);
									};
							</script>
					        <div class="itemBox2 move" name='<c:out value="${list.cocktailNo}"/>' id='<c:out value="${list.cocktailName}"/>'" style="cursor:pointer;">
					            <div class="image_wrap thumbnailBox" data-cocktailno="${list.imageList[0].cocktailNo}" data-path="${list.imageList[0].uploadPath}" data-uuid="${list.imageList[0].uuid}" data-filename="${list.imageList[0].fileName}">
									<img style="width:200px;height:200px;border-radius: 20px;margin-left:10px;"></div>
					            <div class="items2"><b><c:out value="${list.cocktailName}"></c:out></b></div>
					            <div class="items2 dd">도수 : <c:out value="${list.cocktailAbv}"></c:out>%</div>
					            <div class="items2 dd">난이도 : <c:out value="${list.cocktailLevel}"></c:out></div>
					            <div class="items2 dd" style="font-size:16px;">
					            <span class="star-ratings" style="margin-left:20px">
									<span class="star-ratings-fill space-x-2 text-lg" id="cocktail${status.index}">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</span>
									<span class="star-ratings-base space-x-2 text-lg">
										<span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
									</span>
						            <script>
						            	starSize2(${list.cocktailRating});
									</script>
								</span><span style="">${list.cocktailRating}/5.0</span></div>
					        </div>
					        </c:forEach>
					      </div>
                    	</c:if> 
                		<!-- 
                    	<table class="author_table">
                    		<thead>
                    			<tr>
                    				<td class="th_column_1">번호</td>
                    				<td class="th_column_2">이름</td>
                    				<td class="th_column_2">이미지</td>
                    				<td class="th_column_3">재료</td>
                    				<td class="th_column_4">도수</td>
                    				<td class="th_column_5">난이도</td>
                    			</tr>
                    		</thead>
                    		<c:forEach items="${list}" var="list">
                    		<tr>
                    			<td><c:out value="${list.cocktailNo}"></c:out> </td>
                    			<td>
                    				<a class="move" href='<c:out value="${list.cocktailNo}"/>'>
                    					<c:out value="${list.cocktailName}"></c:out></a></td>
                    				</a>
                    			<td> <img src="../resources/img/cocktail/${list.cocktailImage}.png" height="100" width = "100"></td>
                    			<td><c:out value="${list.cocktailMaterials}"></c:out> </td>
                    			<td><c:out value="${list.cocktailAbv}"></c:out> </td>
                    			<td><c:out value="${list.cocktailLevel}"></c:out> </td>
                    		</tr>
                    		</c:forEach>
                    	</table>
                    	 -->  
                    	<!-- 게시물 X -->
                    	 <c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				등록된 칵테일이 없습니다.
                			</div>
                		</c:if>            			
                    </div>
                    
                    <!-- 페이지 이동 인터페이스 영역 -->
                    <div class="pageMaker_wrap" >
                    
	                    <ul class="pageMaker">
	                    
	                    	<!-- 이전 버튼 -->
	                    	<c:if test="${pageMaker.prev}">
	                    		<li class="pageMaker_btn prev">
	                    			<a href="${pageMaker.pageStart - 1}">이전</a>
	                    		</li>
	                    	</c:if>
	                    	
	                    	<!-- 페이지 번호 -->
	                    	<c:forEach begin="${pageMaker.pageStart}" end="${pageMaker.pageEnd}" var="num">
	                    		<a href="${num}" class="pageNumber"><li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? "active":""}">
	                    			${num}
	                    		</li></a>
	                    	</c:forEach>
	                    	
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${pageMaker.pageEnd + 1 }">다음</a>
	                    		</li>
	                    	</c:if>
	                    </ul>
                    </div>
                    <form id="moveForm" action="/cocktailMbti" method="get">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="mbti" value="${pageMaker.cri.mbti}">
					</form>   
                </div>
    
    <%@include file="includes/footer.jsp" %>
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
	
	//계절 선택
	$(".season").val("${param.season}").attr("selected","selected");
});

let moveForm = $('#moveForm');

$(".pageNumber").on("click", function(e){
    
    e.preventDefault();
    
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    
    moveForm.submit();
});

/* 칵테일 상세 페이지 이동 */
$(".move").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.append("<input type='hidden' name='cocktailNo' value='"+ $(this).attr("name") + "'>");
	moveForm.append("<input type='hidden' name='cocktailName' value='"+ $(this).attr("id") + "'>");
	moveForm.attr("action", "/service");
	moveForm.submit();
	
});


</script>
</body>

</html>