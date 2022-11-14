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
	
<link rel="stylesheet" href="../resources/css/admin/cocktailEnroll.css">


<script src="../resources/js/side2.js"></script>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<link href="../resources/css/style2.css" rel="stylesheet">



<style>
</style>
<!-- SCRIPT 
    ============================================================-->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>
<style type="text/css">
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
<title>관리자페이지</title>
<body>
    <%@include file="../includes/admin/header2.jsp" %>
    <div class="admin_container">
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
                  		<li>
                      		<a class="admin_list_04" href="/admin/cocktailstuffEnroll">재료 등록</a>                            
                  		</li>                                                                                          
              		</ul>
              	</div>
              	<div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>칵테일 등록</span></div>
                    <div class="admin_content_main">
                    
                    	<form action="/admin/cocktailEnroll.do" method="post" id="enrollForm">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>칵테일 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="cocktailName">
                    				<span id="warn_cocktailName">칵테일 이름을 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>칵테일 이미지</label>
                    			</div>
                    			<div class="form_section_content">
									<input type="file" id ="fileItem" name='uploadFile' style="height: 40px;">
									<div id="uploadResult">
									<!-- 
										<div id="result_card">
											<div class="imgDeleteBtn">x</div>
											<img src="/display?fileName=test.png">
										</div>
										 -->
									</div>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>재료</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="cocktailMaterials">
                    				<span id="warn_cocktailMaterials">재료를 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>제조법</label>
                    			</div>
                    			<div class="form_section_content">
                    				<textarea name="cocktailRecipes" rows="5" cols="50" style="width:740px"></textarea>
                    				<span id="warn_cocktailRecipes">제조법을 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		
                    		<table style="margin-left:11px;">
                    		<tr>
                    		<td style="width:420px;">
                    		<div class="form_section">
                    			<div class="form_section_title" style="height:25px;">
                    				<label>도수</label>
                    			</div>
                    			<div class="form_section_content" id="dosu" style="height:45px;">
                    				<input name="cocktailAbv" type="number">
                    				<span id="warn_cocktailAbv">도수를 입력 해주세요.</span>
                    			</div>
                    		</div>
                    		</td>
                    		<td style="width:420px;">
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>난이도</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="cocktailLevel">
                    					<option value="none" selected>== 선택 ==</option>
                    					<option value="어려움">어려움</option>
                    					<option value="보통">보통</option>
                    					<option value="쉬움">쉬움</option>
                    				</select>
                    				<span id="warn_cocktailLevel">난이도을 선택해주세요.</span>
                    			</div>
                    		</div>
                    		</td>
                    		</tr>
                    		<tr>
                    		<td>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>MBTI</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="cocktailMbti">
                    					<option value="none" selected>== 선택 ==</option>
                    					<option value="ENFJ">ENFJ</option>
                    					<option value="ENFP">ENFP</option>
                    					<option value="ENTJ">ENTJ</option>
                    					<option value="ENTP">ENTP</option>
                    					<option value="ESFJ">ESFJ</option>
                    					<option value="ESFP">ESFP</option>
                    					<option value="ESTJ">ESTJ</option>
                    					<option value="ESTP">ESTP</option>
                    					<option value="INFJ">INFJ</option>
                    					<option value="INFP">INFP</option>
                    					<option value="INTJ">INTJ</option>
                    					<option value="INTP">INTP</option>
                    					<option value="ISFJ">ISFJ</option>
                    					<option value="ISFP">ISFP</option>
                    					<option value="ISTJ">ISTJ</option>
                    					<option value="ISTP">ISTP</option>
                    				</select>
                    				<span id="warn_cocktailMbti">MBTI를 선택해주세요.</span>
                    			</div>
                    		</div>
                    		</td>
                    		<td>
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>계절</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="cocktailSeason">
                    					<option value="none" selected>== 선택 ==</option>
                    					<option value="봄">봄</option>
                    					<option value="여름">여름</option>
                    					<option value="가을">가을</option>
                    					<option value="겨울">겨울</option>
                    				</select>
                    				<span id="warn_cocktailSeason">계절을 선택해주세요.</span>
                    			</div>
                    		</div>
                    		</td>
                    		</tr>
                    		</table>
                    		<!-- 
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>관계</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="cocktailRelation">
                    					<option value="none" selected>=== 선택 ===</option>
                    					<option value="어려움">어려움</option>
                    					<option value="보통">보통</option>
                    					<option value="쉬움">쉬움</option>
                    				</select>
                    				<span id="warn_cocktaiRelation">난이도을 선택해주세요.</span>
                    			</div>
                    		</div>
                    		 -->
                   		</form>
                   			<div class="btn_section">
                   				<button id="cancelBtn" class="btn">취 소</button>
	                    		<button id="enrollBtn" class="btn enroll_btn">등 록</button>
	                    	</div> 
                    </div>
                </div>
                <div class="clearfix"></div>
    		</div>
    	</div>
    </div>
    
    <%@include file="../includes/admin/footer.jsp" %>
    <script>
    /* 등록 버튼 */
    $("#enrollBtn").click(function(){    
        /* 검사 통과 유무 변수 */
        let nameCheck = false;            // 이름
        let materialsCheck = false;            // 재료
        let recipesCheck = false;            // 제조법
        let abvCheck = false;            // 도수
        let levelCheck = false;        // 난이도
        let mbtiCheck = false;        // mbti
        let seasonCheck = false;        // 계절
        
        /* 입력값 변수 */
        let cocktailName = $('input[name=cocktailName]').val();        
        let cocktailMaterials = $('input[name=cocktailMaterials]').val();
        let cocktailRecipes = $('.form_section_content textarea').val();  
        let cocktailAbv = $('input[name=cocktailAbv]').val();
        let cocktailLevel = $('select[name=cocktailLevel]').val();
        let cocktailMbti = $('select[name=cocktailMbti]').val();
        let cocktailSeason = $('select[name=cocktailSeason]').val();
        
        /* 공란 경고 span태그 */
        let wCocktailName = $('#warn_cocktailName');
        let wCocktailMaterials = $('#warn_cocktailMaterials');
        let wCocktailRecipes = $('#warn_cocktailRecipes');
        let wCocktailAbv = $('#warn_cocktailAbv');
        let wCocktailLevel = $('#warn_cocktailLevel');
        let wCocktailMbti = $('#warn_cocktailMbti');
        let wCocktailSeason = $('#warn_cocktailSeason');
        
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
        
        /* 최종 검사 */
        if(nameCheck && materialsCheck && recipesCheck && abvCheck && levelCheck && mbtiCheck && seasonCheck ){
            $("#enrollForm").submit();    
        } else{
            return;
        }
    });
     
    /* 취소 버튼 */
    $("#cancelBtn").click(function(){
        location.href="/admin/cocktailManage"
    });
    
    /* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		/* 이미지 존재시 삭제 */
		if($(".imgDeleteBtn").length > 0){
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
	
	/* 이미지 삭제 버튼 동작 */
	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
		
		deleteFile();
		
	});
	
	/* 파일 삭제 메서드 */
	function deleteFile(){
		
		let targetFile = $(".imgDeleteBtn").data("file");
		
		let targetDiv = $("#result_card");
		
		$.ajax({
			url: '/admin/deleteFile',
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
</script>
</body>
</html>