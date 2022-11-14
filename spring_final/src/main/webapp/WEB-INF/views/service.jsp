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
  
   <link rel="stylesheet" href="../resources/css/service.css?after">


<script src="../resources/js/side2.js"></script>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
<link href="../resources/css/style2.css" rel="stylesheet">
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
   width: 240px;
    height: 240px;
    display: block;
    padding: 5px;
    margin-top: 10px;
    margin: auto;   
}

.recommand_wrap{
	width: 160px;
}

.f-bg11 ul { 
	display: inline-block; 
	text-align: left; 
	}
	
	.f-bg11 ol { 
	display: inline-block; 
	text-align: left; 
	}

.f-bg11{
        font-size: 20px;
		background: #ffffff;
		margin-right:5%;
		margin-left:5%;
		
		margin-top:15px;
		text-align: center;		
		padding-top: 40px;
		padding-bottom: 30px;		
		box-shadow: 5px 5px 5px 5px #E6E6E6;
		border-width: 5px;
		border-color: #ffffff;
		border-style: solid;
		
		
		}
		
		.f-bg11 li{
        
		margin-bottom:15px;
		
		
		}
.f-bg111{
		margin-left:5%;
		margin-right:5%;
         font-size: 20px;
		background: #ffffff;		
		margin-top:15px;
	margin-bottom:15px;
		box-shadow: 5px 5px 5px 5px #E6E6E6;
		border-color: #ffffff;
		border-style: solid;
		
		
		}

		.h_font{  
		font-weight: 1000;
		font-size: 20px;     
		margin-left:7%;
		margin-top:20px;	
			
		}
		.h_font2{ 
		font-weight: 1000;
		font-size: 20px;     
		margin-left:7%;
		margin-top:7px;	
			
		}
		.h_font3{ 
		font-weight: 1000;
		border-width: 10px;
		font-size: 20px;      
		margin-left:7%;
		margin-top:30px;
				
		}
		
		.h_font4{ 
		font-weight: 1000;
		border-width: 10px;
		font-size: 20px;      
		margin-top:30px;
				
		}
		
.menu {
  display:inline-block; .display:inline;
}



.f-bg11_1{
        font-size: 20px;
		background: #ffffff;
		margin-right:5%;
		margin-left:5%;
		
		margin-top:15px;
		text-align: center;		
		padding-top: 40px;
		padding-bottom: 20px;	
		padding-left: 6%;
		box-shadow: 5px 5px 5px 5px #E6E6E6;
		border-width: 5px;
		border-color: #ffffff;
		border-style: solid;
		
		
		}






.gallerylist2 {max-width:1200px; width:90%; }
.gallerylist2 > ul {text-align: center;	}
.gallerylist2 > ul > li {display:inline-block;width:19%; }
.gallerylist2 > ul > li > a {display:block;width:auto;text-decoration: none;}
.gallerylist2 > ul > li > a .screen {position:relative;overflow:hidden; width:160px;}
.gallerylist2 > ul > li > a .screen .top {position:absolute; bottom:170%;left:30px;z-index:2;color:#fff;font-size:19px;font-weight:900;transition:all .35s;}
.gallerylist2 > ul > li > a .screen .bottom {position:absolute;top:150%;left:30px;z-index:2;color:#fff;font-size:10px;transition:all .35s;}
.gallerylist2 > ul > li > a .screen .recommand_wrap img {width:155px;height:155px;}
.gallerylist2 > ul > li > a h2 {text-align:center;color:#000000; margin-top:5%; }
.gallerylist2 > ul > li > a b p{text-align:center;color:#000000;  font-size:20px;}
.gallerylist2 > ul > li > a .screen::after {content:'';  border-radius: 20px;    display:block;position:absolute;top:0;left:0;width:100%;height:100%;background:rgba(0,0,0,.5);z-index:1;opacity:0;transition:all .35s;}

.gallerylist2 > ul > li > a:hover .top {bottom:45%;}
.gallerylist2 > ul > li > a:hover .bottom {top:52%;}
.gallerylist2 > ul > li > a:hover .screen::after {opacity:1;}




.f-bg2_1{
			background: #000000;
			margin-top:40px;
			padding-bottom: 10px;
			width: 100%;		
			text-align:center;
			border-style: solid;
			border-radius: 20px;
			
		}



.my-f4_1{
			margin-top:1%;
			font-size: 30px;
			margin-left:20px;
			color:#ffffff;
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
   <%@include file="includes/header2.jsp" %>
   
<div class="container">

  <div class="f-bg2_1" style="margin-left:0px;">
    <table class = "my-f1" style="margin-left:30px; margin-bottom:20px">
      <tr>
        <td><div id="uploadResult">
                                                      
                           </div></td>
        <td><div class = "my-f4_1" style=""><b><c:out value="${cocktailInfo.cocktailName}"/></b></div>
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
               
               
               
               
               
          <div class="h_font ">【 재료 】</div>
          <div class="f-bg11">
          <ul>
             <script>
             for ( var i = 0; i < materialsArr.length; i++ ) {
                document.write( "<li>" + materialsArr[i] + "</li>" );
             }
             </script>
             </ul>
             </div>
         <br>
         
         
         
         
         
          <div class="h_font2">【 만드는 법 】</div>
          <div class="f-bg11">
          <ol>
             <script>
             for ( var i = 0; i < recipesArr.length; i++ ) {
                document.write( "<li>" + recipesArr[i] + ".</li>" );
             }
             </script>
             
          </ol>  
   		 </div>
 
 
 
 
 
 
 
   
       <!--  추천 기능 part -->
       
       <div class="h_font3"> 【 다른 칵테일도 보세요 】 </div>

       
       
          
         <div class="f-bg11_1">
            
        <!-- 추천된 5가지 칵테일이 출력되는 공간 -->
        
         <div class="gallerylist2">
        <ul>
       <c:forEach items="${recommand}" var="recommand" begin="0" end="4" varStatus="status">
       
       
       <li>
       
       
       <a href="/service?cocktailNo=${recommand.cocktailNo}&cocktailName=${recommand.cocktailName}">
       
       				<div class="screen" >
       
					<div class="top" style="text-align: left;">
					<p># ${recommand.cocktailLevel} <br># ${recommand.cocktailRating} </p>
					</div>
					<div class="bottom">이동하기 </div>								
					<div class="recommand_wrap" data-cocktailno="${recommand.imageList[0].cocktailNo}" data-path="${recommand.imageList[0].uploadPath}" data-uuid="${recommand.imageList[0].uuid}"data-filename="${recommand.imageList[0].fileName}">
					<img style="border-radius: 20px;"></div>
			
					</div>
								<div>
								<br>
								<b><p>${recommand.cocktailName}</p></b>
								</div>
			
		</a>
		</li>
       </c:forEach>
       
       
       
       
       </ul>
       </div>
       </div>
       
       

       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       <!-- 댓글 part -->
        <div class="hr-divider2 h_font4" style="clear:left"> 【 댓글 】</div> 
       
       
       
        <div class="content_bottom" style="margin:0;">
           
            <c:if test="${member != null}">
               <div class="reply_button_wrap">
                  <button>리뷰 쓰기</button>
               </div>
            </c:if> 
            
                 
             <div class="f-bg111">
             
            <div class="reply_not_div">
             </div>
            
            
            <ul class="reply_content_ul">
            </ul>
            
                        <br>
            <div class="repy_pageInfo_div"> 
            <br>
               <ul class="pageMaker">                          
               </ul>
            </div>
               
            
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