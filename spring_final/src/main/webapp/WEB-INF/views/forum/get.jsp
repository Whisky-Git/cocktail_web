	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
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
</style>
</head>
<body>
<h1>조회 페이지</h1>
	<div class="input_wrap">
		<label>게시판 번호</label>
		<input name="" readonly="readonly" value='<c:out value="${pageInfo.forum_no}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 제목</label>
		<input name="" readonly="readonly" value='<c:out value="${pageInfo.forum_title}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 내용</label>
		<textarea rows="3" name="" readonly="readonly"><c:out value="${pageInfo.forum_content}"/></textarea>
	</div>
	<div class="input_wrap">
		<label>게시판 조회수</label>
		<input name="" readonly="readonly" value='<c:out value="${pageInfo.forum_views}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 추천수</label>
		<input name="" readonly="readonly" value='<c:out value="${pageInfo.forum_recommend}"/>' >
	</div>	
	<div class="input_wrap">
		<label>게시판 작성자</label>
		<input name="updateDate" readonly="readonly" value='<c:out value="${pageInfo.forum_memberID}"/>' >
	</div>	
	<div class="btn_wrap">
		<a class="btn" id="list_btn">목록 페이지</a> 
		<a class="btn" id="modify_btn">수정 하기</a>
	</div>
	<form id="infoForm" action="/forum/modify" method="get">
		<input type="hidden" id="forum_no" name="forum_no" value='<c:out value="${pageInfo.forum_no}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
		<input type="hidden" name="type" value="${cri.type }">
		<input type="hidden" name="keyword" value="${cri.keyword }"/> 
		
	</form>
<script>
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