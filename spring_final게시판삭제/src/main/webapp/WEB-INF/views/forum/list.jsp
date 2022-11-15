<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>칵테일</title>
<link rel="icon" href="../resources/img/cocktail/47.png">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Bootstrap -->
<link href="../resources/css/bootstrap.css?after" rel="stylesheet">
<link href="../resources/css/bootstrap-responsive.css?after"
	rel="stylesheet">
<link href="../resources/css/style.css" rel="stylesheet">
<link href="../resources/css/style2.css" rel="stylesheet">
<link href="../resources/css/btn.css" rel="stylesheet">
<!--Font-->
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600'
	rel='stylesheet' type='text/css'>

		 <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
		   <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
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
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
  		<script src="../resources/js/side2.js"></script>
  
  
  
  <style>
  @import url('https://fonts.googleapis.com/css?family=Roboto+Condensed');
  body{
  font-size: 15px;
  }
  a{
  	text-decoration : none;
  }
  table{
 	border-collapse: collapse;
 	width: 1000px;    
 	margin-top : 20px;
 	text-align: center;
  }
  td, th{
  	/*border : 1px solid black;*/
  	height: 25px;
  	font-size: 15px;
  }
  th{
  	font-size : 17px;
  }
  thead{
  	font-weight: 700;
  }
  .table_wrap{
  	margin : 50px 0 0 50px;
  }
  .bno_width{
  	width: 12%;
  }
  .writer_width{
  	width: 20%;
  }
  .regdate_width{
  	width: 15%;
  }
  .updatedate_width{
  	width: 15%;
  }
  .top_btn{
  	font-size: 18px;
    background-color: #FFBC00;
    border: 10px solid #FFBC00;
    border-radius: 10px;
    text-decoration: none;
  }
  

 
  
  
  .pageInfo{
      list-style : none;
       text-align: center;
      display: inline-block;
      
    margin: 50px 0 0 100px;      
  }
  .pageInfo li{
  width : center;
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
  .pageInfo ul{
  		
  }
  
 a:link {color:black; text-decoration: none;}
 a:visited {color:black; text-decoration: none;}
 a:hover {color:black; text-decoration: underline;}
 .active{
      background-color: #cdd5ec;
  }
  
  /* 검색 창 */
  .board_search {
    width: 85%;
    margin-left: 17px; 
	}
	
	/* 검색창 input */
  .board_search input {
    font-size: 20px;
    width: 100%;
    padding: 10px;
    outline: none;
    float: left;
    border: 2px solid #e7e7e7;
    border-radius: 20px;
    margin-top: 10px;
    margin-right: 10px;
	}
  
  .search_area{
   margin-top : 50px; 
    display: flex;
  }
  .search_area input{
     font-size: 20px;
    height: 20px;
    width: 96%;
    padding: 10px;
    border: 0px;
    outline: none;
    float: left;
    border: 1px solid #000000;
    margin-right: 10px;
    margin-left: 10px;
  }
  .search_area button{
     width: 10%;
    font-size: 18px;
    border: 10px solid #b70f0a;
   
    border-radius: 2px;
    background: #b70f0a;
    color: white;
    text-decoration: none;
  }
  .search_area select{
  	 width: 100px;
    background-color: #ffffff;
    border: 1px solid #cccccc;
  }
  
  #result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
  .preserve-3d {
    transform-style: preserve-3d;
    -webkit-transform-style: preserve-3d;
}

/* 칵테일 보드 테이블 설정 */
.board-table {
    margin-left: 20px;
    font-size: 13px;
    width: 95%;
    border-top: 1px solid #ccc;
    border-bottom: 2px solid #ccc;
}
/* thead 설정 */
.board-table thead th {
    background: #000000;
    color: #ffffff;
}
/* tbody 설정 */
.board-table tbody {
	border-top: 1px solid #e7e7e7;
    text-align: center;
}
/* td 설정 */
.board-table tbody td {
    border-top: 1px solid #e7e7e7;
    text-align: center;
}
.board-table th, .board-table td {
    padding: 14px 0;
}
/* 테이블 번호 */
.board-table .bno_width {
    width: 100px;
    text-align: center;
}
/* 제목 */
.board-table .title_width {
    width: 200px;
    text-align: center;
}
/* 작성일 */
.board-table .regdate_width {
    width: 100px;
    text-align: center;
}
/* 조회수 */
.board-table .updatedate_width {
    width: 100px;
    text-align: center;
}
/* 추천수 */
.board-table .updatedate_width {
    width: 100px;
    text-align: center;
}
/* 작성자 */
.board-table .updatedate_width {
    width: 100px;
    text-align: center;
}
/* 페이지 타이틀 */
.board_Page-Title {
    margin-bottom: 20px;
    text-align: center;
    font-size: 60px;
    width: 100%;
    height: 50px;
    font-family: "HY바다M";
    color: #000000;
}

/* 페이지 위치 */ 
.pageInfo_area{
width : 80%;
  		text-align:center;
}

  </style>
  
  
</head>
<body>
<%@include file="../includes/header2.jsp" %>
<!-- <h1>목록페이지입니다.</h1> -->
<div class="container">
<div class="table_wrap">

	
	
	<!--  검색창 쪽 -->
<div class ="search_area">

<select name="type" class="type">
                <option value="" <c:out value="${pageMaker.cri.type == null?'selected':'' }"/>>--</option>
                <option value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                <option value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                <option value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>제목 + 내용 + 작성자</option>
            </select>    
            <input type="text" name="keyword" value="${pageMaker.cri.keyword }">
            <button>Search</button>
            
      
    </div>
    <!--  기존 테이블 -->
	<table class ="board-table">
		<thead>
			<tr>
				<th class="bno_width">번호</th>

				<th class="title_width">제목</th>
				<th class="regdate_width">작성일</th>
				<th class="updatedate_width">조회수</th>
				<th class="updatedate_width">추천수</th>
				<th class="updatedate_width">작성자</th>

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list">
            <tr>
                <td><c:out value="${list.forum_no}"/></td>
                <td>
                 <a class="move" href='<c:out value="${list.forum_no}"/>'>
       				 <c:out value="${list.forum_title}"/>
 				   </a>
 				   
 				</td>
 				<td><fmt:formatDate pattern="yyyy/MM/dd" value="${list.forum_date}"/></td>
                <td><c:out value="${list.forum_views}"/></td>
                <td><c:out value="${list.forum_recommend}"/></td>
                <td><c:out value="${list.forum_memberID}"/></td>
				
            </tr>
        </c:forEach>
        </tbody>
	</table>
	
	
	
		<div class="pageInfo_wrap" >
      	  <div class="pageInfo_area">
      	  		<ul id ="pageInfo" class = "pageInfo">
      	  		<!-- 이전페이지 버튼 -->
                <c:if test="${pageMaker.prev}">
                    <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
                </c:if>
 				  <!-- 각 번호 페이지 버튼 -->
                <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                    <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
                </c:forEach>
                <!-- 다음페이지 버튼 -->
                <c:if test="${pageMaker.next}">
                    <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
                </c:if>    
 
                </ul>
      	  </div>
      	  <a href="/forum/enroll" class="top_btn">게시판 등록</a>
 	   </div>
	<form id="moveForm" method="get">   
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
        <input type="hidden" name="amount" value="${pageMaker.cri.amount }">  
        <input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">
        <input type="hidden" name="type" value="${pageMaker.cri.type }">
    </form>
</div>
</div>
<%@include file="../includes/footer.jsp" %>
<script>

    $(document).ready(function(){
    

    	
    	
    	let result = '<c:out value="${result}"/>';
    	
    		checkAlert(result);
         	
        function checkAlert(result){
            
            if(result === ''){
                return;
            }
            
            if(result === "enroll success"){
                alert("등록이 완료되었습니다.");
            }
            if(result === "modify success"){
                alert("수정이 완료되었습니다.");
            }
            if(result === "delete success"){
                alert("삭제가 완료되었습니다.");
            }
        } 
	
    });
    
    
    let moveForm = $("#moveForm");
    
    $(".move").on("click", function(e){
        e.preventDefault();
        
        moveForm.append("<input type='hidden' name='forum_no' value='"+ $(this).attr("href")+ "'>");
        moveForm.attr("action", "/forum/get");
        moveForm.submit();
    });
    
    $(".pageInfo a").on("click", function(e){
    	 
        e.preventDefault();
        moveForm.find("input[name='pageNum']").val($(this).attr("href"));
        moveForm.attr("action", "/forum/list");
        moveForm.submit();
        
    });
    
    $(".search_area button").on("click", function(e){
        e.preventDefault();
        
        let type = $(".search_area select").val();
        let keyword = $(".search_area input[name='keyword']").val();
        
        if(!type){
            alert("검색 종류를 선택하세요.");
            return false;
        }
        
        if(!keyword){
            alert("키워드를 입력하세요.");
            return false;
        }        
        
        moveForm.find("input[name='type']").val(type);
        moveForm.find("input[name='keyword']").val(keyword);
        moveForm.find("input[name='pageNum']").val(1);
        moveForm.submit();
    });
 
</script>
</body>
</html>