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
                    				<label>이미지(파일명)</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="cocktailImage">
                    				<span id="warn_cocktailImage">이미지 파일명을 입력 해주세요.</span>
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
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>도수</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="cocktailAbv">
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
                    					<option value="상">상</option>
                    					<option value="중">중</option>
                    					<option value="하">하</option>
                    				</select>
                    				<span id="warn_cocktailLevel">난이도을 선택해주세요.</span>
                    			</div>
                    		</div>
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
        let imageCheck = false;            // 이미지
        let materialsCheck = false;            // 재료
        let recipesCheck = false;            // 제조법
        let abvCheck = false;            // 도수
        let levelCheck = false;        // 난이도
        
        /* 입력값 변수 */
        let cocktailName = $('input[name=cocktailName]').val();    
        let cocktailImage = $('input[name=cocktailImage]').val();      
        let cocktailMaterials = $('input[name=cocktailMaterials]').val();
        let cocktailRecipes = $('.form_section_content textarea').val();  
        let cocktailAbv = $('input[name=cocktailAbv]').val();
        let cocktailLevel = $('select[name=cocktailLevel]').val(); 
        
        /* 공란 경고 span태그 */
        let wCocktailName = $('#warn_cocktailName');
        let wCocktailImage = $('#warn_cocktailImage');
        let wCocktailMaterials = $('#warn_cocktailMaterials');
        let wCocktailRecipes = $('#warn_cocktailRecipes');
        let wCocktailAbv = $('#warn_cocktailAbv');
        let wCocktailLevel = $('#warn_cocktailLevel');
        
        /* 칵테일 이름 공란 체크 */
        if(cocktailName ===''){
        	wCocktailName.css('display', 'block');
            nameCheck = false;
        } else{
        	wCocktailName.css('display', 'none');
            nameCheck = true;
        }

        /* 이미지 공란 체크 */
        if(cocktailImage ===''){
        	wCocktailImage.css('display', 'block');
        	imageCheck = false;
        } else{
        	wCocktailImage.css('display', 'none');
        	imageCheck = true;
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
        	abvCheck = false;
        } else{
        	wCocktailAbv.css('display', 'none');
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
        
        /* 최종 검사 */
        if(nameCheck && imageCheck && materialsCheck && recipesCheck && abvCheck && levelCheck ){
            $("#enrollForm").submit();    
        } else{
            return;
        }
        
        $("#enrollForm").submit();
    });
     
    /* 취소 버튼 */
    $("#cancelBtn").click(function(){
        location.href="/admin/cocktailManage"
    });
    
   
</script>
</body>
</html>