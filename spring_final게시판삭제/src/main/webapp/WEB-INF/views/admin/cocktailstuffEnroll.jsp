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
	
<link rel="stylesheet" href="../resources/css/admin/cocktailstuffEnroll.css">

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
                    <div class="admin_content_subject"><span>칵테일 재료 등록</span></div>
                    <div class="admin_content_main">
                    
                    	<form action="/admin/cocktailstuffEnroll.do" method="post" id="enrollForm">
                    	
                    	
                    	
                    	
                    	
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>칵테일 재료 이름</label>
                    			</div>
                    			<div class="form_section_content">
                    				<input name="stuffName">
                    				<span id="warn_stuffName">칵테일 재료 이름을 입력 해주세요.</span>
                    			</div>
                    		</div>

                    		
                    		
                    		<div style="width:420px;">
                   		
                    		<div class="form_section">
                    			<div class="form_section_title">
                    				<label>칵테일 재료 종류</label>
                    			</div>
                    			<div class="form_section_content">
                    				<select name="stuffType">
                    					<option value="none" selected>== 선택 ==</option>
                    					<option value="술">술</option>
                    					<option value="과일류">과일류</option>
                    					<option value="시럽">시럽</option>
                    					<option value="음료">음료</option>
                    					<option value="비터스">비터스</option>
                    					<option value="기타">기타</option>
                    				</select>
                    				<span id="warn_stuffType">칵테일 재료 종류를 선택해주세요.</span>
                    			</div>
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
        let levelCheck = false;        // 난이도

        
        /* 입력값 변수 */
        let stuffName = $('input[name=stuffName]').val();        
        let stuffType = $('select[name=stuffType]').val();

        
        /* 공란 경고 span태그 */
        let wstuffName = $('#warn_stuffName');
        let wstuffType = $('#warn_stuffType');


        
        /* 칵테일 이름 공란 체크 */
        if(stuffName ===''){
        	wstuffName.css('display', 'block');
            nameCheck = false;
        } else{
        	wstuffName.css('display', 'none');
            nameCheck = true;
        }
        



        
        /* 난이도 공란 체크 */
        if(stuffType ==='none'){
        	wstuffType.css('display', 'block');
        	levelCheck = false;
        } else{
        	wstuffType.css('display', 'none');
        	levelCheck = true;
        } 
        
       
        
        /* 최종 검사 */
        if(nameCheck && levelCheck){
            $("#enrollForm").submit();    
        } else{
            return;
        }
    });
     
    
    /* 취소 버튼 */
    $("#cancelBtn").click(function(){
        location.href="/admin/main"
    });
    
   

	
</script>
</body>
</html>