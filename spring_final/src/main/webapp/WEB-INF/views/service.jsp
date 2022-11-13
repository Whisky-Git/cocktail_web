<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"
   integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
   crossorigin="anonymous"></script>
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
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>
<style>
.star-ratings {
  color: #aaa9a9; 
  position: relative;
  unicode-bidi: bidi-override;
  width: max-content;
  -webkit-text-fill-color: transparent; /* Will override color (regardless of order) */
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
#result_card img{
   width: 220px;
    height: 220px;
    display: block;
    padding: 5px;
    margin-top: 10px;
    margin: auto;   
}
.recommand_wrap{
	width: 160px;
}
</style>
</head>
<body>
<script>
// 재료 배열
const materialsStr = '${cocktailInfo.cocktailMaterials}';
const materialsArr = materialsStr.split(", ");
// 제조법 배열
const recipesStr = '${cocktailInfo.cocktailRecipes}';
const recipesArr = recipesStr.split(". ");
</script>
   <%@include file="includes/header.jsp" %>
   
<div class="container">

  <div class="f-bg2" style="margin-left:0px;">
    <table class = "my-f1" style="margin-left:30px; margin-bottom:20px">
      <tr>
        <td><div id="uploadResult">
                                                      
                           </div></td>
        <td><div class = "my-f4" style="margin: 0 20px 20px 20px;"><center><b><c:out value="${cocktailInfo.cocktailName}"/></b></center></div>
        <div class = "my-f4" style="margin-left:20px; margin-right:20px"><c:out value="도수: ${cocktailInfo.cocktailAbv}%"/></div>
        <div class = "my-f4" style="margin-left:20px; margin-right:20px"><c:out value="난이도: ${cocktailInfo.cocktailLevel}"/></div>
        <div class="star-ratings" style="margin-left:20px">
         <span class="star-ratings-fill space-x-2 text-lg" id="rating">
            <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
         </span>
         <span class="star-ratings-base space-x-2 text-lg">
            <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
         </span>
      <span style="color:white; margin-left:5px;-webkit-text-fill-color:white;-webkit-text-stroke-color: white;-webkit-text-stroke-width: 0px;">${cocktailInfo.cocktailRating}/5.0</span></div>
        </td>
        <!--  <td> <a class="btn btn-large btn-danger" href="#">조회하기</a></td>-->
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
          <div class="hr-divider2"><h4>재료</h4></div>
             <script>
             for ( var i = 0; i < materialsArr.length; i++ ) {
                document.write( "<li>" + materialsArr[i] + "</li>" );
             }
             </script>
         <br>
          <div class="hr-divider2"><h4>만드는 법</h4></div>
          <ol>
             <script>
             for ( var i = 0; i < recipesArr.length; i++ ) {
                document.write( "<li>" + recipesArr[i] + ".</li>" );
             }
             </script>
          </ol>  
    
   
       <!--  추천 기능 part -->
       <div class="hr-divider2"><h4>다른 칵테일도 보세요</h4></div><br>
        <!-- 추천된 5가지 칵테일이 출력되는 공간 -->
       <c:forEach items="${recommand}" var="recommand" begin="0" end="4" varStatus="status">
       <div class="span3" style="width:160px;">
			<a href="/service?cocktailNo=${recommand.cocktailNo}&cocktailName=${recommand.cocktailName}">
			<div class="recommand_wrap" data-cocktailno="${recommand.imageList[0].cocktailNo}" data-path="${recommand.imageList[0].uploadPath}" data-uuid="${recommand.imageList[0].uuid}" data-filename="${recommand.imageList[0].fileName}">
				<img style="width:150px;height:150px;border-radius: 20px;margin-left:10px;"></div></a>
			<p class="my-f1">
				<center><b>${recommand.cocktailName}</b></center>
			</p>
		</div>
       </c:forEach>
       
       <!-- 댓글 part -->
        <div class="hr-divider2" style="clear:left"><h4>댓글</h4></div> 
        <div class="content_bottom" style="margin:0;">
            
            <c:if test="${member != null}">
               <div class="reply_button_wrap">
                  <button>리뷰 쓰기</button>
               </div>
            </c:if>      
            
            <div class="reply_not_div">
               
            </div>
            <ul class="reply_content_ul">
            </ul>
            <div class="repy_pageInfo_div"> 
               <ul class="pageMaker">
                                 
               </ul>
            </div>
               
            
         </div>
        
        </div>      
  </div>
  
<%@include file="includes/footer.jsp" %>
<script>
 $(document).ready(function(){
	 /* 추천리스트 이미지 삽입 */
		$(".recommand_wrap").each(function(i, obj){
			
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
 });
 
/* 평점 별표 관련 */
const rate = "${cocktailInfo.cocktailRating}" * 11.5 + '%';
$('#rating').css('width', rate);
$(document).ready(function(){
   
   /* 리뷰 리스트 출력 */
   const cocktailNo = '${cocktailInfo.cocktailNo}';   
   $.getJSON("/reply/list", {cocktailNo : cocktailNo}, function(obj){
      
      makeReplyContent(obj);
   });
   /* 이미지 정보 호출 */
   let uploadResult = $("#uploadResult");         
   
   $.getJSON("/getAttachList", {cocktailNo : cocktailNo}, function(arr){   
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
      str += "</div>";      
      
      uploadResult.html(str);                  
      
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
            $(".reply_not_div").html('<span>댓글이 없습니다.</span>');
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
               reply_list += '<div class="reply_top" style="height:20px">';
               /* 아이디 */
               reply_list += '<span class="id_span">'+ obj.memberId+'</span>';
               /* 날짜 */
               reply_list += '<span class="date_span">'+ obj.regDate +'</span>';
               /* 평점 */
               reply_list += "<span class='rating_span'><span class='rating_value_span'><span class='star-ratings' style='margin-left:20px'><span class='star-ratings-fill space-x-2 text-lg' style='width:calc("+  obj.rating*20 +"% - 1.3px);' ><span>★</span><span>★</span><span>★</span><span>★</span><span>★</span></span><span class='star-ratings-base space-x-2 text-lg'><span>★</span><span>★</span><span>★</span><span>★</span><span>★</span></span></span> "+obj.rating+"/5</span>";
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
         }      
      };
   
</script>
</body>
</html>