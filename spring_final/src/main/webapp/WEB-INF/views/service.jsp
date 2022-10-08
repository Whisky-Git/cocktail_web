<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>ShapeBootstrap Clean Template</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

	<!-- css stylesheet 불러오기 -->
	<link href="../resources/css/bootstrap.min.css?after" rel="stylesheet">
	<link href="../resources/css/bootstrap-responsive.min.css?after" rel="stylesheet">
	<link href="../resources/css/style.css?after" rel="stylesheet">
  <!-- 레시피 검색 html-->
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="img/favicon.png">
  
	<link rel="stylesheet" href="../resources/css/service.css">

    <!-- SCRIPT 
    ============================================================-->
	<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
    <!--  <script src="http://code.jquery.com/jquery.js"></script>  -->
    <script src="../resources/js/bootstrap.min.js"></script>
</head>

<body>
<%@include file="includes/header.jsp" %>

<div class="container">
	  <!--PAGE TITLE 상위-->
	
<!-- 검정색 화면 결과 출력 창-->
  <div class="f-bg2" style="margin-left:0px;">
    <table class = "my-f1" style="margin-left:30px; margin-bottom:20px">
      <tr>
        <td> <img src="../resources/img/cocktail/${cocktailInfo.cocktailImage}.png" height="220" width = "220"></td>
        <td> <div class = "my-f4" style="margin-left:20px; margin-right:20px"> <b><c:out value="${cocktailInfo.cocktailName}"/></b> </div>
        <div class = "my-f4" style="margin:20px 20px 0 20px;">★★★★☆</div/td>
        <td> <a class="btn btn-large btn-danger" href="#">조회하기</a></td>
      </tr>
      <tr>
        
      </tr>
    </table>
 
  </div>

  <!-- /. PAGE TITLE-->

  <!-- 레시피 출력-->

         <div class="media-body">
					<h4 class="media-heading">
					</h4><br>
          <div class="hr-divider2"><h4>재료<h4></div>
          	<li><c:out value="${cocktailInfo.cocktailMaterials}"/></li>
			<br>
          <div class="hr-divider2"><h4>만드는 법</h4></div>
          	<h4></h4><c:out value="${cocktailInfo.cocktailRecipes}"/></h4>
          <div class="hr-divider2"><h4>관련 동영상</h4></div><br>
		  <iframe width="560" height="315" src="https://www.youtube.com/embed/iDjQSdN_ig8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		  <div class="hr-divider2"><h4>댓글</h4></div> 
		  <div class="content_bottom">
				<div class="reply_subject">
					<h2>리뷰</h2>
				</div>
				
				<c:if test="${member != null}">
					<div class="reply_button_wrap">
						<button>리뷰 쓰기</button>
					</div>
				</c:if>		
				
				<div class="reply_not_div">
					
				</div>
				<ul class="reply_content_ul">
					<!-- 
					<li>
						<div class="comment_wrap">
							<div class="reply_top">
								<span class="id_span">sjinjin7</span>
								<span class="date_span">2021-10-11</span>
								<span class="rating_span">평점 : <span class="rating_value_span">4</span>점</span>
								<a class="update_reply_btn">수정</a><a class="delete_reply_btn">삭제</a>
							</div>
							<div class="reply_bottom">
								<div class="reply_bottom_txt">
									사실 기대를 많이하고 읽기시작했는데 읽으면서 가가 쓴것이 맞는지 의심들게합니다 문체도그렇고 간결하지 않네요 제가 기대가 크던 작았던간에 책장이 사실 안넘겨집니다.
								</div>
							</div>
						</div>
					</li>
					 -->
				</ul>
				<div class="repy_pageInfo_div"> 
					<ul class="pageMaker">
					<!--					
						<li class="pageMaker_btn prev">
							<a>이전</a>
						</li>
						<li class="pageMaker_btn">
							<a>1</a>
						</li>
						<li class="pageMaker_btn">
							<a>2</a>
						</li>
						<li class="pageMaker_btn active">
							<a>3</a>
						</li>													
						<li class="pageMaker_btn next">
							<a>다음</a>
						</li>
					 -->						
					</ul>
				</div>
					
				
			</div>
		  
        </div>		
  </div>
  
<%@include file="includes/footer.jsp" %>
<script>
$(document).ready(function(){
	
	/* 리뷰 리스트 출력 */
	const cocktailNo = '${cocktailInfo.cocktailNo}';	

	$.getJSON("/reply/list", {cocktailNo : cocktailNo}, function(obj){
		
		makeReplyContent(obj);

	});
	
});

	/* 리뷰쓰기 */
	$(".reply_button_wrap").on("click", function(e){
		
		e.preventDefault();
		
		const memberId = '${member.memberId}';
		const cocktailNo = '${cocktailInfo.cocktailNo}';
		$.ajax({
			data : {
				cocktailNo : cocktailNo,
				memberId : memberId
			},
			url : '/reply/check',
			type : 'POST',
			success : function(result){
				if(result === '1'){
					alert("이미 등록된 리뷰가 존재 합니다.")
				} else if(result === '0'){
					let popUrl = "/replyEnroll/" + memberId + "?cocktailNo=" + cocktailNo;
					console.log(popUrl);
					let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
					
					window.open(popUrl,"리뷰 쓰기",popOption);							
				}				
				
			}
		});			
		
	});			
	
	/* 댓글 페이지 정보 */
	 const cri = {
		cocktailNo : '${cocktailInfo.cocktailNo}',
		pageNum : 1,
		amount : 10
	}
	
	 /* 댓글 페이지 이동 버튼 동작 */
		$(document).on('click', '.pageMaker_btn a', function(e){
				
			e.preventDefault();
			
			let page = $(this).attr("href");	
			cri.pageNum = page;		
			
			replyListInit();
				
		 });
	
	 /* 댓글 데이터 서버 요청 및 댓글 동적 생성 메서드 */
		let replyListInit = function(){
			$.getJSON("/reply/list", cri , function(obj){
				
				makeReplyContent(obj);
				
			});		
		}
	 
		/* 리뷰 수정 버튼 */
		 $(document).on('click', '.update_reply_btn', function(e){
				
			 e.preventDefault();
				let replyId = $(this).attr("href");		 
				let popUrl = "/replyUpdate?replyId=" + replyId + "&cocktailNo=" + '${cocktailInfo.cocktailNo}' + "&memberId=" + '${member.memberId}';	
				let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes"	
				
				window.open(popUrl,"리뷰 수정",popOption);
			 
		 });
		
		/* 리뷰 삭제 버튼 */
		 $(document).on('click', '.delete_reply_btn', function(e){
			
			 var result = confirm("리뷰를 삭제하시겠습니까?")
				
				if(result){
					e.preventDefault();
					let replyId = $(this).attr("name");	
					
					$.ajax({
						data : {
							replyId : replyId,
							cocktailNo : '${cocktailInfo.cocktailNo}'
						},
						url : '/reply/delete',
						type : 'POST',
						success : function(result){
							replyListInit();
							alert('삭제가 완료되엇습니다.');
						}
					});
				}else{
					return 0;
				}
			 
				
		 });

		/* 댓글(리뷰) 동적 생성 메서드 */
		function makeReplyContent(obj){
			
			if(obj.list.length === 0){
				$(".reply_not_div").html('<span>리뷰가 없습니다.</span>');
				$(".reply_content_ul").html('');
				$(".pageMaker").html('');
			} else{
				
				$(".reply_not_div").html('');
				
				const list = obj.list;
				const pf = obj.pageInfo;
				const userId = '${member.memberId}';		
				
				/* list */
				
				let reply_list = '';			
				
				$(list).each(function(i,obj){
					reply_list += '<li>';
					reply_list += '<div class="comment_wrap">';
					reply_list += '<div class="reply_top">';
					/* 아이디 */
					reply_list += '<span class="id_span">'+ obj.memberId+'</span>';
					/* 날짜 */
					reply_list += '<span class="date_span">'+ obj.regDate +'</span>';
					/* 평점 */
					reply_list += '<span class="rating_span">평점 : <span class="rating_value_span">'+ obj.rating +'</span>점</span>';
					if(obj.memberId === userId){
						reply_list += '<a class="update_reply_btn" href="'+ obj.replyId +'">수정</a><a class="delete_reply_btn" name="'+ obj.replyId +'">삭제</a>';
					}
					reply_list += '</div>'; //<div class="reply_top">
					reply_list += '<div class="reply_bottom">';
					reply_list += '<div class="reply_bottom_txt">'+ obj.content +'</div>';
					reply_list += '</div>';//<div class="reply_bottom">
					reply_list += '</div>';//<div class="comment_wrap">
					reply_list += '</li>';
				});		
				
				$(".reply_content_ul").html(reply_list);			
				
				/* 페이지 버튼 */
				
				let reply_pageMaker = '';	
				
					/* prev */
					if(pf.prev){
						let prev_num = pf.pageStart -1;
						reply_pageMaker += '<li class="pageMaker_btn prev">';
						reply_pageMaker += '<a href="'+ prev_num +'">이전</a>';
						reply_pageMaker += '</li>';	
					}
					/* numbre btn */
					for(let i = pf.pageStart; i < pf.pageEnd+1; i++){
						reply_pageMaker += '<li class="pageMaker_btn ';
						if(pf.cri.pageNum === i){
							reply_pageMaker += 'active';
						}
						reply_pageMaker += '">';
						reply_pageMaker += '<a href="'+i+'">'+i+'</a>';
						reply_pageMaker += '</li>';
					}
					/* next */
					if(pf.next){
						let next_num = pf.pageEnd +1;
						reply_pageMaker += '<li class="pageMaker_btn next">';
						reply_pageMaker += '<a href="'+ next_num +'">다음</a>';
						reply_pageMaker += '</li>';	
					}	
					
					console.log(reply_pageMaker);
				$(".pageMaker").html(reply_pageMaker);				
				
			}		
			
		}

	
</script>
</body>
</html>
