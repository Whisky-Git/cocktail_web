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



 /* 리뷰쓰기 버튼 */
  .reply_button_wrap{
  	padding : 10px;
  }
  .reply_button_wrap button{
	background-color: #365fdd;
    color: white;
    font-weight: bold;
    font-size: 15px;
    padding: 5px 12px;
    cursor: pointer;  
  }
  .reply_button_wrap button:hover{
  	background-color: #1347e7;
  }
  
  /* 리뷰 영역 */
  	.content_bottom{
  		width: 80%;
  		margin : auto;
  	}
	.reply_content_ul{
		list-style: none;
	}
	.comment_wrap{
		position: relative;
    	border-bottom: 1px dotted #d4d4d4;
    	padding: 14px 0 10px 0;	
    	font-size: 12px;
	}
		/* 리뷰 머리 부분 */
		.reply_top{
			padding-bottom: 10px;
		}
		.id_span{
			padding: 0 15px 0 3px;
		    font-weight: bold;		
		}
		.date_span{
			padding: 0 15px 0;
		}
		/* 리뷰 컨텐트 부분 */
		.reply_bottom{
			padding-bottom: 10px;
		}
		
	
	/* 리뷰 선 */
	.reply_line{
		width : 80%;
		margin : auto;
		border-top:1px solid #c6c6cf;  	
	}
	
	/* 리뷰 제목 */
	.reply_subject h2{
		padding: 15px 0 5px 5px;
	}
	
	/* pageMaker */
	.repy_pageInfo_div{
		text-align: center;
	    margin-top: 30px;
	    margin-bottom: 40px;	
	}
	.pageMaker{
	    list-style: none;
	    display: inline-block;	
	}
	.pageMaker_btn{
		float: left;
	    width: 25px;
	    height: 25px;
	    line-height: 25px;
	    margin-left: 20px;
	    font-size: 10px;
	    cursor: pointer;
	}
	.active{
		border : 2px solid black;
		font-weight:400;	
	}
	.next, .prev {
	    border: 1px solid #ccc;
	    padding: 0 10px;
	}	
  
  /* 리뷰 없는 경우 div */
  .reply_not_div{
  	text-align: center;
  }
  .reply_not_div span{
	display: block;
    margin-top: 30px;
    margin-bottom: 20px; 
  }
  
  /* 리뷰 수정 삭제 버튼 */
  .update_reply_btn{
 	font-weight: bold;
    background-color: #b7b399;
    display: inline-block;
    width: 40px;
    text-align: center;
    height: 20px;
    line-height: 20px;
    margin: 0 5px 0 30px;
    border-radius: 6px;
    color: white; 
    cursor: pointer;
  }
  .delete_reply_btn{
 	font-weight: bold;
    background-color: #e7578f;
    display: inline-block;
    width: 40px;
    text-align: center;
    height: 20px;
    line-height: 20px;
    border-radius: 6px;
    color: white; 
  	cursor: pointer;
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

	<div class="reply_button_wrap">
					<button>댓글 쓰기</button>
	</div>
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
	
	/*댓글쓰기 */
	$(".reply_button_wrap").on("click", function(e){
		
		e.preventDefault();
		
		const forum_no = '${pageInfo.forum_no}';

		let popUrl = "/forum/replyEnroll?forum_no=" + forum_no;
		console.log(popUrl);
		let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";
		
		window.open(popUrl,"리뷰 쓰기",popOption);

	});
	
	
	
	const forum_no = '${pageInfo.forum_no}';	

	$.getJSON("/forumreply/list", {forum_no : forum_no}, function(obj){
		
		makeReplyContent(obj);
		
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
			
			/* list */
			
			let reply_list = '';
			
			$(list).each(function(i,obj){

				reply_list += '<li>';
				reply_list += '<div class="comment_wrap">';
				reply_list += '<div class="reply_top">';
				/* 아이디 */
				reply_list += '<span class="id_span">'+ obj.forum_mk+'</span>';
				/* 날짜 */
				reply_list += '<span class="date_span">'+ obj.forum_regDate +'</span>';
				/* 평점 */
				reply_list += '<span class="rating_span">평점 : <span class="rating_value_span">'+ obj.forum_rating +'</span>점</span>';
			
				reply_list += '<a class="update_reply_btn" href="'+ obj.forum_replyId +'">수정</a><a class="delete_reply_btn" href="'+ obj.forum_replyId +'">삭제</a>';
				reply_list += '</div>'; //<div class="reply_top">
				reply_list += '<div class="reply_bottom">';
				reply_list += '<div class="reply_bottom_txt">'+ obj.forum_content +'</div>';
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
			$(".pageMaker").html(reply_pageMaker);	
		}
	
	}	
	
	
	/* 댓글 페이지 정보 */
	 const cri = {
		forum_no : '${pageInfo.forum_no}',
		pageNum : 1,
		amount : 10
	}
	
	 /* 댓글 데이터 서버 요청 및 댓글 동적 생성 메서드 */
		let replyListInit = function(){
		 $.getJSON("/forumreply/list", cri , function(obj){
				
				makeReplyContent(obj);
				
			});	
		}
	
	 /* 댓글 페이지 이동 버튼 동작 */
		$(document).on('click', '.pageMaker_btn a', function(e){
				
			
			e.preventDefault();
			
			let page = $(this).attr("href");	
			cri.pageNum = page;		
			
			replyListInit();
				
		 });
	
</script>	
</body>
</html>