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
	
<link rel="stylesheet" href="../resources/css/admin/cocktailModify.css">

<style>
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
                    
                    <div class="admin_content_main">
                    
                    	<form action="/admin/cocktailModify" method="post" id="modifyForm">
                    		<input name="cocktailNo" type="hidden" value="<c:out value='${cocktailInfo.cocktailNo }'></c:out>">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>칵테일 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="cocktailName" value="<c:out value='${cocktailInfo.cocktailName }'></c:out>">
                    				<span id="warn_cocktailName">칵테일 이름을 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>상품 이미지</label>
                    			</div>
                    			<div class="form_section_content">
									<input type="file" id ="fileItem" name='uploadFile' style="height: 40px;">
									<div id="uploadResult">
																		
									</div>									
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>재료</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="cocktailMaterials" value="<c:out value='${cocktailInfo.cocktailMaterials }'></c:out>" >
                    				<span id="warn_cocktailMaterials">재료를 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>제조법</label>
                    			</div>
                    			<div class="form_section_content">
                    				<textarea name="cocktailRecipes" rows="5" cols="50" style="width:740px">${cocktailInfo.cocktailRecipes }</textarea>
                    				<span id="warn_cocktailRecipes">제조법을 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		
                    		
                    		<div class="form_section">
                    			<div class="form_section_title" style="height:25px;">
                    				<label>도수</label>
                    			</div>
                    			<div class="form_section_content" id="dosu" style="height:45px;">
                    				<input name="cocktailAbv" type="number" value="<c:out value='${cocktailInfo.cocktailAbv }'></c:out>" >
                    				<span id="warn_cocktailAbv">도수를 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>난이도</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="cocktailLevel">
                    					<option value="none" selected>=== 선택 ===</option>
                    					<option value="어려움" <c:out value=" ${cocktailInfo.cocktailLevel eq '어려움' ?'selected':''}"/>>어려움</option>
                    					<option value="보통" <c:out value=" ${cocktailInfo.cocktailLevel eq '보통' ?'selected':''}"/>>보통</option>
                    					<option value="쉬움" <c:out value=" ${cocktailInfo.cocktailLevel eq '쉬움' ?'selected':''}"/>>쉬움</option>
                    				</select>
                    				<span id="warn_cocktailLevel">난이도을 선택해주세요.</span>
                    			</div>
                    		</div>
                    		<table style="margin-left:11px;">
                    		<tr>
                    		<td width="273.6px">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>MBTI</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="cocktailMbti">
                    					<option value="none" selected>== 선택 ==</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ENFJ' ?'selected':''}"/>>ENFJ</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ENFP' ?'selected':''}"/>>ENFP</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ENTJ' ?'selected':''}"/>>ENTJ</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ENTP' ?'selected':''}"/>>ENTP</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ESFJ' ?'selected':''}"/>>ESFJ</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ESFP' ?'selected':''}"/>>ESFP</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ESTJ' ?'selected':''}"/>">ESTJ</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ESTP' ?'selected':''}"/>>ESTP</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'INFJ' ?'selected':''}"/>>INFJ</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'INFP' ?'selected':''}"/>>INFP</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'INTJ' ?'selected':''}"/>>INTJ</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'INTP' ?'selected':''}"/>>INTP</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ISFJ' ?'selected':''}"/>>ISFJ</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ISFP' ?'selected':''}"/>>ISFP</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ISTJ' ?'selected':''}"/>>ISTJ</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailMbti eq 'ISTP' ?'selected':''}"/>>ISTP</option>
                    				</select>
                    				<span id="warn_cocktailMbti">MBTI를 선택해주세요.</span>
                    			</div>
                    		</div>
                    		</td>
                    		<td width="273.6px">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>계절</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="cocktailSeason">
                    					<option value="none" selected>== 선택 ==</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailSeason eq '봄' ?'selected':''}"/>>봄</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailSeason eq '여름' ?'selected':''}"/>>여름</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailSeason eq '가을' ?'selected':''}"/>>가을</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailSeason eq '겨울' ?'selected':''}"/>>겨울</option>
                    				</select>
                    				<span id="warn_cocktailSeason">계절을 선택해주세요.</span>
                    			</div>
                    		</div>
                    		</td>
                    		<td width="273.6px">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>관계</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="cocktailRelation">
                    					<option value="none" selected>== 선택 ==</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailRelation eq '가족' ?'selected':''}"/>>가족</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailRelation eq '연인' ?'selected':''}"/>>연인</option>
                    					<option <c:out value=" ${cocktailInfo.cocktailRelation eq '친구' ?'selected':''}"/>>친구</option>
                    				</select>
                    				<span id="warn_cocktailRelation">관계를 선택해주세요.</span>
                    			</div>
                    		</div>
                    		</td>
                    		</tr>
                    		 </table>
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="modifyBtn" class="btn enroll_btn">수정완료</button>
	                    		<button id="deleteBtn" class="btn delete_btn">삭 제</button>
	                    	</div> 
                    </div>
                </div>
                 <form id="moveForm" method="get">
                	<input type="hidden" name="cocktailNo" value='<c:out value="${cocktailInfo.cocktailNo }"/>'>
                	<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
                	<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>' >
                	<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'>
                </form>
                <div class="clearfix"></div>
    		</div>
    	</div>
    </div>
    
    <%@include file="../includes/admin/footer.jsp" %>
<script>
$(document).ready(function(){
	/* 기존 이미지 출력 */
	let cocktailNo = '<c:out value="${cocktailInfo.cocktailNo}"/>';
	let uploadResult = $("#uploadResult");
	
	$.getJSON("/getAttachList", {cocktailNo : cocktailNo}, function(arr){
		
		console.log(arr);
		
		if(arr.length === 0){
			
			
			let str = "";
			str += "<div id='result_card'>";
			str += "<img src='../resources/img/noImage.png'>";
			str += "</div>";
			
			uploadResult.html(str);				
			return;
		}
		
		let str = "";
		let obj = arr[0];
		
		let fileCallPath = encodeURIComponent(obj.uploadPath + "/" + obj.uuid + "_" + obj.fileName);
		str += "<div id='result_card'";
		str += "data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "'";
		str += ">";
		str += "<img src='/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";				
		str += "</div>";
		
		uploadResult.html(str);			
		
	});// GetJSON
	
});
/* 이미지 삭제 버튼 동작 */
$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
	
	deleteFile();
	
});
/* 파일 삭제 메서드 */
function deleteFile(){
	
	$("#result_card").remove();
}
/* 이미지 업로드 */
$("input[type='file']").on("change", function(e){
	
	/* 이미지 존재시 삭제 */
	if($("#result_card").length > 0){
		deleteFile();
	}
			
	let formData = new FormData();
	let fileInput = $('input[name="uploadFile"]');
	let fileList = fileInput[0].files;
	let fileObj = fileList[0];
	
	if(!fileCheck(fileObj.name, fileObj.size)){
		return false;
	}
	
	formData.append("uploadFile", fileObj);
	
	$.ajax({
		url: '/admin/uploadAjaxAction',
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
	
/* var, method related with attachFile */
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
	if(!uploadResultArr || uploadResultArr.length == 0){return}
	
	let uploadResult = $("#uploadResult");
	
	let obj = uploadResultArr[0];
	
	let str = "";
	
	let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/" + obj.uuid + "_" + obj.fileName);
	//replace 적용 하지 않아도 가능
	//let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
	
	str += "<div id='result_card'>";
	str += "<img src='/display?fileName=" + fileCallPath +"'>";
	str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
	str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
	str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
	str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";		
	str += "</div>";		
	
		uploadResult.append(str);     
    
}
/* 수정 버튼 */
$("#modifyBtn").click(function(){    
    /* 검사 통과 유무 변수 */
    let nameCheck = false;            // 이름
    let materialsCheck = false;            // 재료
    let recipesCheck = false;            // 제조법
    let abvCheck = false;            // 도수
    let levelCheck = false;        // 난이도
    let mbtiCheck = false;        // mbti
    let seasonCheck = false;        // 계절
    let relationCheck = false;        // 관계
    
    /* 입력값 변수 */
    let cocktailName = $('input[name=cocktailName]').val();        
    let cocktailMaterials = $('input[name=cocktailMaterials]').val();
    let cocktailRecipes = $('.form_section_content textarea').val();  
    let cocktailAbv = $('input[name=cocktailAbv]').val();
    let cocktailLevel = $('select[name=cocktailLevel]').val();
    let cocktailMbti = $('select[name=cocktailMbti]').val();
    let cocktailSeason = $('select[name=cocktailSeason]').val();
    let cocktailRelation = $('select[name=cocktailRelation]').val();
    
    /* 공란 경고 span태그 */
    let wCocktailName = $('#warn_cocktailName');
    let wCocktailMaterials = $('#warn_cocktailMaterials');
    let wCocktailRecipes = $('#warn_cocktailRecipes');
    let wCocktailAbv = $('#warn_cocktailAbv');
    let wCocktailLevel = $('#warn_cocktailLevel');
    let wCocktailMbti = $('#warn_cocktailMbti');
    let wCocktailSeason = $('#warn_cocktailSeason');
    let wCocktailRelation = $('#warn_cocktailRelation');
    
    /* 도수입력칸 태그 (높이조절)*/
    let dosuHeight = $('#dosu');
    
    /* 칵테일 이름 공란 체크 */
    if(cocktailName ===''){
    	wCocktailName.css('display', 'block');
        nameCheck = false;
    } else{
    	wCocktailName.css('display', 'none');
        nameCheck = true;
    }
    
    /* 재료 공란 체크 */
    if(cocktailMaterials ===''){
    	wCocktailMaterials.css('display', 'block');
    	materialsCheck = false;
    } else{
    	wCocktailMaterials.css('display', 'none');
    	materialsCheck = true;
    }
    
    /* 제조법 공란 체크 */
    if(cocktailRecipes ===''){
    	wCocktailRecipes.css('display', 'block');
    	recipesCheck = false;
    } else{
    	wCocktailRecipes.css('display', 'none');
    	recipesCheck = true;
    }
    
    /* 도수 공란 체크 */
    if(cocktailAbv ===''){
    	wCocktailAbv.css('display', 'block');
    	dosuHeight.css('height','76px');
    	abvCheck = false;
    } else{
    	wCocktailAbv.css('display', 'none');
    	dosuHeight.css('height','45px');
    	abvCheck = true;
    }
    
    
    /* 난이도 공란 체크 */
    if(cocktailLevel ==='none'){
    	wCocktailLevel.css('display', 'block');
    	levelCheck = false;
    } else{
    	wCocktailLevel.css('display', 'none');
    	levelCheck = true;
    } 
    
    /* mbti 공란 체크 */
    if(cocktailMbti ==='none'){
    	wCocktailMbti.css('display', 'block');
    	mbtiCheck = false;
    } else{
    	wCocktailMbti.css('display', 'none');
    	mbtiCheck = true;
    } 
    
    /* 계절 공란 체크 */
    if(cocktailSeason ==='none'){
    	wCocktailSeason.css('display', 'block');
    	seasonCheck = false;
    } else{
    	wCocktailSeason.css('display', 'none');
    	seasonCheck = true;
    } 
    
    /* 관계 공란 체크 */
    if(cocktailRelation ==='none'){
    	wCocktailRelation.css('display', 'block');
    	relationCheck = false;
    } else{
    	wCocktailRelation.css('display', 'none');
    	relationCheck = true;
    } 
    
    /* 최종 검사 */
    if(nameCheck && materialsCheck && recipesCheck && abvCheck && levelCheck && mbtiCheck && seasonCheck && relationCheck ){
    	$("#modifyForm").submit();  
    } else{
        return;
    }
});
let moveForm = $("#moveForm");
/* 취소 버튼 */
$("#cancelBtn").on("click", function(e){
	
	e.preventDefault();
	
	$("input[name=Id]").remove();
	moveForm.attr("action", "/admin/cocktailManage")
	moveForm.submit();
	
});
/* 삭제 버튼 */
$("#deleteBtn").on("click", function(e){
	var result = confirm("[${cocktailInfo.cocktailName}] 레시피를 삭제하시겠습니까?")
	
	if(result){
		e.preventDefault();
		moveForm.find("input").remove();
		moveForm.append('<input type="hidden" name="cocktailNo" value="${cocktailInfo.cocktailNo}">');
		moveForm.attr("action", "/admin/cocktailDelete");
		moveForm.attr("method", "post");
		moveForm.submit();
	}
});
</script>
</body>
</html>