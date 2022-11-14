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
#delete_btn{
    background-color: #f3e3e7;
}

#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
</style>
</head>
<body>
<h1>조회 페이지</h1>
<form id="modifyForm" action="/forum/modify" method="post">
	<div class="input_wrap">
		<label>게시판 번호</label>
		<input name="forum_no" readonly="readonly" value='<c:out value="${pageInfo.forum_no}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 제목</label>
		<input name="forum_title" value='<c:out value="${pageInfo.forum_title}"/>' >
	</div>
	<div class="input_wrap">
        <label>상품 이미지</label>
        <input type="file" id ="fileItem" name='uploadFile' style="height: 30px;">	
			<div id="uploadResult">
			</div>
	</div>
	<div class="input_wrap">
		<label>게시판 내용</label>
		<textarea rows="3" name="forum_content"><c:out value="${pageInfo.forum_content}"/></textarea>
	</div>
	
	<div class="input_wrap">
		<label>게시판 조회수</label>
		<input name="forum_views" readonly="readonly" value='<c:out value="${pageInfo.forum_views}"/>' >
	</div>
	<div class="input_wrap">
		<label>게시판 추천수</label>
		<input name="forum_recommend" readonly="readonly" value='<c:out value="${pageInfo.forum_recommend}"/>' >
	</div>	
	<div class="input_wrap">
		<label>게시판 작성자</label>
		<input name="forum_memberID" readonly="readonly" value='<c:out value="${pageInfo.forum_memberID}"/>' >
	</div>	
	<div class="btn_wrap">
		<a class="btn" id="list_btn">목록 페이지</a> 
        <a class="btn" id="modify_btn">수정 완료</a>
        <a class="btn" id="delete_btn">삭제</a>
        <a class="btn" id="cancel_btn">수정 취소</a>
        
	</div>
	</form>
	<form id="infoForm" action="/forum/modify" method="get">
		<input type="hidden" id="forum_no" name="forum_no" value='<c:out value="${pageInfo.forum_no}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value = "${cri.pageNum} "/>'>
		<input type="hidden" name="amount" value='<c:out value = "${cri.amount} "/>'>
		<input type="hidden" name="type" value="${cri.type }">
		<input type="hidden" name="keyword" value="${cri.keyword }"/> 
	</form>
<script>
$(document).ready(function() {
	
	/* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		/* 이미지 존재시 삭제 */
		if($("#result_card").length > 0){
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
	/* 이미지 정보 호출 */
	let forum_no = '<c:out value="${pageInfo.forum_no}"/>';
	let uploadResult = $("#uploadResult");			

		$.getJSON("getAttachList", {forum_no : forum_no}, function(arr){	
		
		if(arr.length === 0){			
			let str = "";
			str += "<div id='result_card'>";
			str += "<img src='/resources/img/noname.png'>";
			str += "</div>";
			
			uploadResult.html(str);	
		}	
		
		let str = "";
		let obj = arr[0];	
		
		let fileCallPath = encodeURIComponent(obj.forum_uploadPath + "/s_" + obj.forum_uuid + "_" + obj.forum_fileName);
		str += "<div id='result_card'";
		str += "data-path='" + obj.forum_uploadPath + "' data-uuid='" + obj.forum_uuid + "' data-filename='" + obj.forum_fileName + "'";
		str += ">";
		str += "<img src='display?fileName=" + fileCallPath +"'>";	
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";
		str += "</div>";		
		
		uploadResult.html(str);						
		
		});	
	});
	
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
	
	
/* 이미지 삭제 버튼 동작 */
$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
	
	deleteFile();
	
});

/* 파일 삭제 메서드 */
function deleteFile(){
	
	$("#result_card").remove();
}
	

let form = $("#infoForm");        // 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
let mForm = $("#modifyForm");    // 페이지 데이터 수정 form

/* 목록 페이지 이동 버튼 */
$("#list_btn").on("click", function(e){
    form.find("#forum_no").remove();
    form.attr("action", "/forum/list");
    form.submit();
});

/* 수정 하기 버튼 */
$("#modify_btn").on("click", function(e){
    mForm.submit();
});

/* 삭제 버튼 */
$("#delete_btn").on("click", function(e){
    form.attr("action", "/forum/delete");
    form.attr("method", "post");
    form.submit();
});

/* 취소 버튼 */
$("#cancel_btn").on("click", function(e){
    form.attr("action", "/forum/get");
    form.submit();
});    
</script>	
</body>
</html>