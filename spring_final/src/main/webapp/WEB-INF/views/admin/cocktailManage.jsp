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

<link rel="stylesheet" href="../resources/css/admin/cocktailManage.css">

<style>
</style>
<!-- SCRIPT 
    ============================================================-->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>

</head>
<title>관리자페이지</title>
<body>
    <%@include file="../includes/admin/header.jsp" %>
    <div class="container">
    	<div class="wrap">
            <!-- top_subject_area -->
            <div class="admin_top_wrap">
                <span>관리자 페이지</span>
                
            </div>
            <!-- contents-area -->
            <div class="admin_wrap">
                <!-- 네비영역 -->
    			<div class="admin_navi_wrap">
                	<ul>
                		<li >
                      		<a class="admin_list_01" href="/admin/cocktailEnroll">칵테일 등록</a>
                  		</li>
                  		<li>
                      		<a class="admin_list_02" href="/admin/cocktailManage">칵테일 관리</a>
						</li>
                		<li>
                      		<a class="admin_list_03" href="/admin/memberManage">회원 관리</a>                            
                  		</li>                                                                                             
              		</ul>
              	</div>
              	<div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>칵테일 관리</span></div>
                    <div class="cocktail_table_wrap">
                    <!-- 게시물 O -->
						<c:if test="${listCheck != 'empty' }">
                    	<table class="cocktail_table">
                    		<thead>
                    			<tr>
                    				<td class="th_column_1">번호</td>
                    				<td class="th_column_2">이름</td>
                    				<td class="th_column_3">이미지</td>
                    				<td class="th_column_4">재료</td>
                    				<td class="th_column_5">도수</td>
                    				<td class="th_column_6">난이도</td>
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
                    			<td><c:out value="${list.cocktailAbv}"></c:out>%</td>
                    			<td><c:out value="${list.cocktailLevel}"></c:out></td>
                    		</tr>
                    		</c:forEach>
                    	</table>                			
                		</c:if> 
                		<!-- 게시물 X -->
                		<c:if test="${listCheck == 'empty'}">
                			<div class="table_empty">
                				등록된 칵테일이 없습니다.
                			</div>
                		</c:if> 
                    </div>       
                    <!-- 검색 영역 -->
                    <div class="search_wrap">
                    	<form id="searchForm" action="cocktailManage" method="get">
                    		<div class="search_input">
                    			<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
                    			<button class='btn search_btn'>검 색</button>
                    		</div>
                    	</form>
                </div>
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
	                    		<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? "active":""}">
	                    			<a href="${num}">${num}</a>
	                    		</li>
	                    	</c:forEach>
	                    	
	                    	<!-- 다음 버튼 -->
	                    	<c:if test="${pageMaker.next}">
	                    		<li class="pageMaker_btn next">
	                    			<a href="${pageMaker.pageEnd + 1 }">다음</a>
	                    		</li>
	                    	</c:if>
	                    </ul>
                    </div>    
                    
                    <form id="moveForm" action="cocktailManage" method="get">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
					</form>
                <div class="clearfix"></div>
    		</div>
    	</div>
    </div>
    
    <%@include file="../includes/admin/footer.jsp" %>
<script>
$(document).ready(function(){
    
	let delete_result = '${delete_result}';
    
   	console.log(delete_result);
});


let moveForm = $('#moveForm');

$(".pageMaker_btn a").on("click", function(e){
    
    e.preventDefault();
    
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    
    moveForm.submit();
});

/* 칵테일 상세 페이지 이동 */
$(".move").on("click", function(e){
	
	e.preventDefault();
	
	moveForm.append("<input type='hidden' name='cocktailNo' value='"+ $(this).attr("href") + "'>");
	moveForm.attr("action", "/admin/cocktailModify");
	moveForm.submit();
	
});
</script>
</body>
</html>