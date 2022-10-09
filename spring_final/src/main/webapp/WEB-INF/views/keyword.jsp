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

<link rel="stylesheet" href="/resources/css/style.css">
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

<style>
</style>
<!-- SCRIPT 
    ============================================================-->
<script src="http://code.jquery.com/jquery.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>

</head>
<body>
	<!--HEADER ROW-->
	<input type="checkbox" id="menuicon">
	<ul>
		<li><label for="menuicon"> <span></span><span></span><span></span>
		</label></li>
	</ul>

	<div class="sidebar">
		<div class="sidem">
			<div class="sidem_a ">
				<div class="items sidem_mm">
					<a><img src="../resources/img/icon10.jpg" height="40"
						width="40" /></a>
				</div>
				<div class="items my-f1  sidem_mm1">홍길동</div>
			</div>

			<div class="sidem_b ">
				<div class="items sidem_mm">
					<a><img src="../resources/img/icon10.jpg" height="40"
						width="40" /></a>
				</div>
				<div class="items sidem_mm">
					<a><img src="../resources/img/icon10.jpg" height="40"
						width="40" /></a>
				</div>
				<div class="items sidem_mm">
					<a><img src="../resources/img/icon10.jpg" height="40"
						width="40" /></a>
				</div>
			</div>
		</div>

		<div class="sidem-bg"></div>


		<div class="sidem2">
			<div class="items2 items2-mm1">
				<div class="sidem2-f">등급</div>
				<br> <a><img src="../resources/img/grade/gold.png"
					height="90" width="90" /></a><br> <br> gold
			</div>

			<div class=" sidem-bg2"></div>

			<div class="items2 items2-mm2">
				<div class="sidem2-f">
					<!-- 로그인 XXXXXXXXXXXX -->
					<c:if test="${member == null }">
						<div class="login_button">
							<a href="/member/login">로그인 후 이용해보세요.</a>
						</div>
						<span><a href="/member/join">회원가입</a></span>
					</c:if>
					<!-- 로그인 OOOOOOOOOOOO -->
					<c:if test="${member != null }">
						<div class="login_success_area">
							<span> 회원 : ${member.memberName}</span> <span> 충전금액 : <fmt:formatNumber
									value="${member.money}" pattern="\#,###.##" /></span> <span>
								포인트 : <fmt:formatNumber value="${member.point}" pattern="#,###" />
							</span> <a href="/member/logout.do">로그아웃</a>
						</div>
					</c:if>
					<!-- <a class="btn btn-large btn-danger" href="mypage">  </a> -->
				</div>
			</div>
		</div>

		<div class="sidem-bg3"></div>


		<!--  login off -->
		<c:if test="${member == null}">
			<div class="sidem-mm4 sidem2-f2">
				<a href="/member/login">로그인</a>
			</div>
			<div class="sidem-bg3"></div>
			<div class="sidem-mm5 sidem2-f2">
				<a href="/member/join">회원가입</a>
			</div>
		</c:if>
		<!-- login on -->
		<c:if test="${member != null}">
			<c:if test="${member.adminCk == 1}">
				<div class="sidem-mm4 sidem2-f2">
					<a href="/admin/main">관리자 페이지</a>
				</div>
				<div class="sidem-bg3"></div>
			</c:if>
			<div class="sidem-mm4 sidem2-f2">
				<a id="gnb_logout_button" style="color: rgb(0, 0, 0);"><b>로그아웃</b></a>
			</div>
			<div class="sidem-bg3"></div>
			<div class="sidem-mm5 sidem2-f2">
				<a href="service.html" style="color: rgb(0, 0, 0);"><b>츨겨찾기</b></a>
			</div>
		</c:if>
		<div class="sidem-bg3"></div>

		<div class="sidem-mm4 sidem2-f2">
			<a href="service.html" style="color: rgb(0, 0, 0);"><b>Q & A</b></a>
		</div>
		<div class="sidem-bg3"></div>

		<div class="sidem-mm5 sidem2-f2">
			<a href="blog.html" style="color: rgb(0, 0, 0);"><b>공지사항</b></a>
		</div>
		<div class="sidem-bg3"></div>

		<div class="sidem-mm4 sidem2-f2">
			<a href="service.html" style="color: rgb(0, 0, 0);"><b>고객센터</b></a>
		</div>
		<div class="sidem-bg3"></div>

		<div class="sidem-mm5 sidem2-f2">
			<a href="service.html" style="color: rgb(0, 0, 0);"><b>자유게시판</b></a>
		</div>
		<div class="sidem-bg3"></div>
	</div>


	<!-- 메뉴 색깔 ------------------------------------------------------------------------------------------>
	<div id="header-row">

		<div class="container">
			<div class="row">
				<!--로그-->

				<div class="span3">
					<a class="brand" href="#"><img src="../resources/img/logo.png" /></a>
				</div>
				<!-- /LOGO -->

				<!-- 메뉴 -->
				<div class="">
					<div class="navbar  pull-right">
						<div class="navbar-inner">

							<a data-target=".navbar-responsive-collapse"
								data-toggle="collapse" class="btn btn-navbar"> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
							</a>


							<div class="nav-collapse collapse navbar-responsive-collapse">
								<!--<div class="nav-collapse collapse navbar-responsive-collapse" -->
								<ul class="nav">
									<li><a href="main" style="color: rgb(0, 0, 0);"><b>칵테일
												설명</b></a></li>
									<li><a href="service.html" style="color: rgb(0, 0, 0);"><b>레시피</b></a></li>
									<li><a href="service.html" style="color: rgb(0, 0, 0);"><b>자유게시판</b></a></li>
									<li><a href="blog.html" style="color: rgb(0, 0, 0);"><b>top100</b></a></li>

									<li><a> </a></li>
									<li><a> </a></li>

									<!-- 우상단 비어있는 공간 -->

									<!-- login off -->
									<c:if test="${member == null}">
										<li><a href="/member/login"> 로그인 </a></li>
										<li><a href="/member/join">회원가입</a></li>
									</c:if>
									<!-- login on -->
									<c:if test="${member != null}">
										<c:if test="${member.adminCk == 1}">
											<li><a href="/admin/main">관리자 페이지</a></li>
										</c:if>
										<li><a href="/member/logout.do">로그아웃</a></li>
										<li><a href="../mypage">마이페이지</a></li>
										<li><a>장바구니</a></li>
									</c:if>
								</ul>
							</div>
						</div>

						<!-- ================================================================================= -->
						<!--<div class="nav-collapse collapse navbar-responsive-collapse" >
						<ul class="nav">
						<li><a href="service.html">레시피</a></li>
                        <li><a href="service.html">자유게시판</a></li>
                        <li><a href="blog.html">top100</a></li>	
							</ul>
					</div>	-->
					</div>
				</div>
			</div>
			<!-- MAIN NAVIGATION -->
		</div>
	</div>
	<!-- /HEADER ROW -->

  
  <div class="container">
  <div class="Search-bg">
  
  
  
<div class="text-box">집에 있는 재료로 만들 수 있는 칵테일 검색</div>
	
    <div class="slidecontainer">
	<div class="slider-f1">도수 :  </div>
	<div class="slider-f2">최소도수 </div>
        <input type="range" min="1" max="50" value="25" class="slider" id="dosu1">
       
		
		<div class="slider-f1">최대도수 </div>
		<input type="range" min="1" max="50" value="25" class="slider" id="dosu2">
		
        <div class="slider-f2"> 도수 :  <span id="b"></span>~<span id="d"></span></div>
		
		  		
		<a class="btn btn-large btn-danger Search_button" id="tag3">도수 추가</a><br>
    </div>


<!-- 도수-->
    <script>
		 var slider1 = document.getElementById("dosu1");//최소도수
        var output1 = document.getElementById("b");
		
        var slider2 = document.getElementById("dosu2");//최대도수
        var output2 = document.getElementById("d");
		output1.innerHTML = slider1.value;
        output2.innerHTML = slider2.value+ '%';
         
		  slider1.oninput = function() {
            output1.innerHTML = this.value;
        }
        slider2.oninput = function() {
            output2.innerHTML = this.value + '%';
        }

		
    </script>
   
   
   <br><Br>
 

<!-- 세로 메뉴 부분 -->
  <script>
/* lnb */
(function($){
  
  var lnbUI = {
    click : function (target, speed) {
      var _self = this,
          $target = $(target);
      _self.speed = speed || 300;
      
      $target.each(function(){
        if(findChildren($(this))) {
          return;
        }
        $(this).addClass('noDepth');
      });
      
      function findChildren(obj) {
        return obj.find('> ul').length > 0;
      }
      
      $target.on('click','a', function(e){
          e.stopPropagation();
          var $this = $(this),
              $depthTarget = $this.next(),
              $siblings = $this.parent().siblings();
        
        $this.parent('li').find('ul li').removeClass('on');
        $siblings.removeClass('on');
        $siblings.find('ul').slideUp(250);
        
        if($depthTarget.css('display') == 'none') {
          _self.activeOn($this);
          $depthTarget.slideDown(_self.speed);
        } else {
          $depthTarget.slideUp(_self.speed);
          _self.activeOff($this);
        }
        
      })
      
    },
    activeOff : function($target) {
      $target.parent().removeClass('on');
    },
    activeOn : function($target) {
      $target.parent().addClass('on');
    }
  };
  
  
  // Call lnbUI
  $(function(){
    lnbUI.click('#lnb li', 300)
  });
  
  
}(jQuery));
    </script>
	

<!-- chip 생성 부분 -->
    <script>
$(document)
  .ready(function () {

    var tag = {};
    var counter = 0;

    // 태그를 추가한다.
    function addTag(value) {
      tag[counter] = value; // 태그를 Object 안에 추가
      counter++; // counter 증가 삭제를 위한 del-btn 의 고유 id 가 된다.
    }

   // 최종적으로 서버에 넘길때 tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
    function marginTag() {
      return Object.values(tag)
        .filter(function (word) {
          return word !== "";
        });
    }

//체크박스
    $("#tag")
      .on("click", function (e) {
       
        var subjects=document.getElementsByName("subject");
		var  tagValue = ""
		for (var i=0; i<subjects.length ; i++) {
        if (subjects[i].checked == true) 
           tagValue = subjects[i].value; 
		   
			if (tagValue !== "") {
		     var result = Object.values(tag)
              .filter(function (word) {
                return word === tagValue;
              })

            // 태그 중복 검사
            if (result.length == 0) {
              $("#tag-list")
                .append(" <li class='chip'>" + tagValue + " <svg class='chip-svg' idx='" + counter + "'><path d='M12 2C6.47 2 2 6.47 2 12s4.47 10 10 10 10-4.47 10-10S17.53 2 12 2zm5 13.59L15.59 17 12 13.41 8.41 17 7 15.59 10.59 12 7 8.41 8.41 7 12 10.59 15.59 7 17 8.41 13.41 12 17 15.59z'></path></svg></li>");
              addTag(tagValue);
              tagValue = ""
            }
        
          e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
        }
		   
     }
	 //체크 박스 풀기
     $("input:checkbox[name='subject']").prop("checked", false);
	 
      });
    
//직접 입력
$("#tag2")
      .on("click", function (e) {
        var tagValue=document.getElementById('inp').value; 
      		   
			if (tagValue !== "") {
		     var result = Object.values(tag)
              .filter(function (word) {
                return word === tagValue;
              })

            // 태그 중복 검사
            if (result.length == 0) {
              $("#tag-list")
                .append(" <li class='chip'>" + tagValue + " <svg class='chip-svg' idx='" + counter + "'><path d='M12 2C6.47 2 2 6.47 2 12s4.47 10 10 10 10-4.47 10-10S17.53 2 12 2zm5 13.59L15.59 17 12 13.41 8.41 17 7 15.59 10.59 12 7 8.41 8.41 7 12 10.59 15.59 7 17 8.41 13.41 12 17 15.59z'></path></svg></li>");
              addTag(tagValue);
              tagValue = ""
            }
             else {
              alert("태그값이 중복됩니다.");
            }
          }
          e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
        
      });


//도수 추가
$("#tag3")
    .on("click", function (e) {
	  var slider1 = document.getElementById("dosu1");
       var slider2 = document.getElementById("dosu2");
		 var ss1 =slider1.value;
    	 var ss2 =slider2.value;  
			 
			   var tagValue =slider1.value+ '~'+slider2.value+ '%';
			   
			   
			if (tagValue !== "") {
		     var result = Object.values(tag)
            .filter(function (word) {
              return word === tagValue;
            })
			if(ss1 <= ss2){
          // 태그 중복 검사
          if (result.length == 0) {
            $("#tag-list")
              .append(" <li class='chip'>" + tagValue + " <svg class='chip-svg' idx='" + counter + "'><path d='M12 2C6.47 2 2 6.47 2 12s4.47 10 10 10 10-4.47 10-10S17.53 2 12 2zm5 13.59L15.59 17 12 13.41 8.41 17 7 15.59 10.59 12 7 8.41 8.41 7 12 10.59 15.59 7 17 8.41 13.41 12 17 15.59z'></path></svg></li>");
            addTag(tagValue);
            tagValue = ""
          }
           else {
            alert("중복됩니다.");
          }
			}else {
            alert("최대도수가 최소도수보다 작습니다. 다시 입력해주세요");
          }
			
			
			
			
        }
        e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
      
    });

    // 삭제 버튼
    $(document)
      .on("click", ".chip-svg", function (e) {
        var index = $(this)
          .attr("idx");
        tag[index] = "";
        $(this)
          .parent()
          .remove();
      });
  })
    </script>
	
	  
<!-- 세로 메뉴-->
<div class="lnb-bg">
<div id="lnb">
  <h1>칵테일 재료</h1>
  <ul > 
      
    <c:forEach items="${tlist}" var="tlist">
    
         <li><a><c:out value="${tlist.stuffType}"/></a>
      	<ul>
        <li><a><div  class="ingredient">
		<table width="100%" border="1" cellspacing="0" cellpadding="0">


       <c:forEach items="${slist}" var="slist">
       <c:if test="${slist.stuffType == tlist.stuffType}">	
            <tr><td><input type="checkbox" name="subject" value="${slist.stuffName}" /><c:out value="${slist.stuffName}"/></td></tr>
       </c:if>
      </c:forEach>

     </table></div></a> 
		 </li>  
		</ul>
    	</li>
    
       </c:forEach>
	
  </ul>
</div>
</div>

 <!-- 카메라, 추가버튼-->
   <div class="came_bnt_mm ">
    <img src="../resources/img/camera2.jpg" width="25px" height="25px" class="camera2">
	<a type="button" class="btn btn-large btn-danger Search_bnt  " id="tag" >추가</a><br>
	</div>
   </div>
   
   
     <!-- 검색 부분 -->
   <div class="Searchba">
   
   <input type="text" placeholder="재료 입력" id="inp"/>
   <button id="tag2"> 검색 </button>
   </div>
   
   

  <!-- chip--> 
<div class="chip_bg">
  <div class="chip_bg2">

<!-- chip이 들어가는 부분-->
         <ul id="tag-list">
        </ul>
  </div>
      <button class="chip-btn"> 검색 </button>
</div>
   
   
   
   
   
   
    </div>
   
   
   <br><br><br><br><br>


	<script>
		/* gnb_area 로그아웃 버튼 작동 */
		$("#gnb_logout_button").click(function() {
			//alert("버튼 작동");
			$.ajax({
				type : "POST",
				url : "/member/logout.do",
				success : function(data) {
					alert("로그아웃 성공");
					document.location.reload();
				}
			}); // ajax 
		});
	</script>
	<!-- /.Row View -->
	<!--Footer
==========================-->

	<footer>
		<div class="container">
			<div class="row">
				<div class="span3">
					<a href="#"><img src="../resources/img/logo.png"></a> <br>
					<br> <small><a href="#"><img src=""> ㅁ</a> <a
						href="#"><img src=""> ㅁ</a> <a href="#"><img src="">
							ㅁ</a></small>
				</div>
				<div class="span3"></div>
				<div class="span6">

					<div class="social pull-right">
						<p>연락처 : 010-0000-0000</p>
						<p>책임자: 홍길동</p>
						<p>이메일: abc@naver.com</p>
						<br>
						<!--
				  <a href="#"><img src="img/social/googleplus.png" alt=""></a>
                <a href="#"><img src="img/social/dribbble.png" alt=""></a>
                <a href="#"><img src="img/social/twitter.png" alt=""></a>
                <a href="#"><img src="img/social/dribbble.png" alt=""></a>
                <a href="#"><img src="img/social/rss.png" alt=""></a>-->
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!--/.Footer-->

</body>
</html>