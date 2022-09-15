<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap -->
    <link href="../resources/css/bootstrap.css" rel="stylesheet">
    <link href="../resources/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../resources/css/style.css" rel="stylesheet">

    <!--Font-->
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600' rel='stylesheet' type='text/css'>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
        
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">

    <style>       
    </style>

        <!-- SCRIPT ============================================================-->
        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="../resources/js/bootstrap.min.js"></script>
        <script src="../resources/js/side.js"></script>

    <script src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous"></script>
</head>

<body>

<!--HEADER ROW-->
<input type="checkbox" id="menuicon">
<ul>
    <li>
        <label for="menuicon">
            <span></span><span></span><span></span>
        </label>
    </li>
</ul>

<!--사이드 바-->
<div class="sidebar">
	<div class="sidem">
		<div class="sidem_a ">
			<div class="items sidem_mm">
			<a><img src="../resources/img/icon10.jpg" height="40" width = "40"/></a>
			</div>
			<div class="items my-f1  sidem_mm1"> 홍길동</div>
		</div>
	
		<div class="sidem_b ">
			<div class="items sidem_mm">
			<a><img src="../resources/img/icon10.jpg" height="40" width = "40"/></a></div>
			<div class="items sidem_mm">
			<a><img src="../resources/img/icon10.jpg" height="40" width = "40"/></a></div>
			<div class="items sidem_mm">
			<a><img src="../resources/img/icon10.jpg" height="40" width = "40"/></a></div>
		</div>	
	</div>
	 
	<div class="sidem-bg"></div> 
	 
	<div class="sidem2">	
		<div class="items2 items2-mm1">
			<div class="sidem2-f">등급</div> <br>
			<a><img src="../resources/img/grade/gold.png" height="90" width = "90"/></a><br><br>
			gold	
		</div>
		
    <div class=" sidem-bg2"></div>
		<div class="items2 items2-mm2">
			<div class="sidem2-f">내가 쓴 글</div>  <br><br>
			<div class="sidem2-f">21</div>  <br><br>
			<a class="btn btn-large btn-danger" href="#">  더 보러가기  </a>
		</div>
	</div>
	 
	<div class="sidem-bg3"></div> 
	 
	<ul class="nav">
		<li class="sidem-mm4 sidem2-f2 "><a href="index.html" style="color:rgb(0, 0, 0);"><b>칵테일 바 찾기</b></a></li>
		<div class="sidem-bg3"></div> 
		
		<li class="sidem-mm5 sidem2-f2"><a href="service.html" style="color:rgb(0, 0, 0);"><b>츨겨찾기</b></a></li>
		<div class="sidem-bg3"></div> 
		
		<li class="sidem-mm4 sidem2-f2"> <a href="service.html" style="color:rgb(0, 0, 0);"><b>Q & A</b></a></li>
		<div class="sidem-bg3"></div> 
		
		<li class="sidem-mm5 sidem2-f2"><a href="blog.html" style="color:rgb(0, 0, 0);"><b>공지사항</b></a></li>	
		<div class="sidem-bg3"></div> 
		
		<li class="sidem-mm4 sidem2-f2"><a href="service.html" style="color:rgb(0, 0, 0);"><b>고객센터</b></a></li>
		<div class="sidem-bg3"></div> 
		
		<li class="sidem-mm5 sidem2-f2"><a href="service.html" style="color:rgb(0, 0, 0);"><b>자유게시판</b></a></li>
		<div class="sidem-bg3"></div> 
		
		<li class="sidem-mm4 sidem2-f2"><a href="blog.html" style="color:rgb(0, 0, 0);"><b>로그아웃</b></a></li>	
	</ul>
 </div>

<!-- 메뉴 색깔 ------------------------------------------------------------------------------------------>
<div id="header-row">
    <div class="container">
        <div class="row">
                <!--로고-->
                <div class="span3"><a class="brand" href="#"><img src="../resources/img/logo.png"/></a></div>
                <!-- /LOGO -->

                <!-- 메뉴 -->  
                <div class="">
                    <div class="navbar  pull-right">
                    <div class="navbar-inner">
                        <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </a>
                        
                        
                        <div class="nav-collapse collapse navbar-responsive-collapse"><!--<div class="nav-collapse collapse navbar-responsive-collapse" -->
                        <ul class="nav">
                            <li><a href="main.jsp" style="color:rgb(0, 0, 0);"><b>칵테일 설명</b></a></li>
                            <li><a href="service.html" style="color:rgb(0, 0, 0);"><b>레시피</b></a></li>
                            <li><a href="service.html" style="color:rgb(0, 0, 0);"><b>자유게시판</b></a></li>
                            <li><a href="blog.html" style="color:rgb(0, 0, 0);"><b>top100</b></a></li>						
            
                            <li><a>  </a></li>
                            <li><a>  </a></li>
                            <li><a>  </a></li>
                            <li><a>  </a></li>
                            <li><a>  </a></li>
                            
                            <li><a href="#">ㅁ</a></li>
                            <li><a href="#">ㅁ</a></li>
                            <li><a href="#">ㅁ</a></li>	
                            <li><a href="#">ㅁ</a></li>
                            <li><a href="blog.html">ㅁ</a></li>	
            
                        </ul>
                    
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
 </div>


    <!-------->
	<div class="wrapper">
		<form id="join_form" method="post">
			<div class="wrap">
				<div class="subjecet">
					<span>회원가입</span>
				</div>

				<!-- /////////////아이디 ///////////////////////////////////////////-->
				<div class="id_wrap">
					<div class="id_name">아이디</div>
					<div class="id_input_box">
						<input class="id_input" name="memberId">
					</div>
					<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
					<span class="id_input_re_2">아이디가 이미 존재합니다.</span>
					<span class="final_id_ck"> 아이디를 입력해주세요.</span>
				</div>
			
				<!-- /////////////패스워드 ///////////////////////////////////////////-->
				<div class="pw_wrap">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input class="pw_input" name="memberPw">
					</div>
					<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
				</div>
				<div class="pwck_wrap">
					<div class="pwck_name">비밀번호 확인</div>
					<div class="pwck_input_box">
						<input class="pwck_input">
					</div>
					<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
					<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
					<span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
				</div>

				<!-- /////////////////이름 ///////////////////////////////////////-->
				<div class="user_wrap">
					<div class="user_name">이름</div>
					<div class="user_input_box">
						<input class="user_input" name="memberName">
					</div>
					<span class="final_name_ck">이름을 입력해주세요.</span>
				</div>

				<!--//////////////////이메일//////////////////////////////////////  -->
				<div class="mail_wrap">
					<div class="mail_name">이메일</div>
					<div class="mail_input_box">
						<input class="mail_input" name="memberMail">
					</div>
					<span class="final_mail_ck">이메일을 입력해주세요.</span>
					<div class="mail_check_wrap">
						<div class="mail_check_input_box" id="mail_check_input_box_false">
							<input class="mail_check_input" disabled="disabled">
						</div>
						<div class="mail_check_button">
							<span>인증번호 전송</span>
						</div>
						<div class="clearfix"></div>
						<!-- 인증번호 일치 여부 (경고글) -->
						<span id="mail_check_input_box_warn"></span>
					</div>
				</div>

				<!--///////////////////주소 /////////////////////////////////////-->
				<div class="address_wrap">
					<div class="address_name">주소</div>
					<div class="address_input_1_wrap">
						<div class="address_input_1_box">
							<input class="address_input_1" name="memberAddr1" readonly="readonly">
						</div>
						<div class="address_button" onclick="execution_daum_address()">
							<span>주소 찾기</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="address_input_2_wrap">
						<div class="address_input_2_box">
							<input class="address_input_2" name="memberAddr1" readonly="readonly">
						</div>
					</div>
					<div class="address_input_3_wrap">
						<div class="address_input_3_box">
							<input class="address_input_3" name="memberAddr1" readonly="readonly">
						</div>
					</div>
				</div>
				<span class="final_addr_ck">주소를 입력해주세요.</span>

				<!--////////////////////회원가입 버튼////////////////////////////////////  -->
				<div class="join_button_wrap">
					<input type="button" class="join_button" value="가입하기">
				</div>
			</div>
		</form>
	</div>

<!-- /.Row View -->

<!--Footer
==========================-->

<footer>
    <div class="container">
      <div class="row">
        <div class="span3"> <a href="#"><img src="../resources/img/logo.png" ></a>  <br><br>
        <small><a href="#"><img src="" > ㅁ</a>
                <a href="#"><img src=""> ㅁ</a>
                <a href="#"><img src=""> ㅁ</a></small>
        </div>
		<div class="span3"></div>
        <div class="span6">
		
            <div class="social pull-right">
                <p> 연락처 : 010-0000-0000</p>
				 <p> 책임자: 홍길동</p>
				  <p> 이메일: abc@naver.com</p><br>
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


	<!-- 다음 주소 검색 API 추가 -->
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- 스크립트 부분 -->
	<script>
		// 이메일 전송 후 인증번호 저장을 위한 코드
		var code = "";

		/* 유효성 검사 변수 */
		var idCheck = false; //아이디
		var idckCheck = false; //아이디 중복 검사
		var pwCheck = false; //비밀번호
		var pwckCheck = false; //비밀번호 확인
		var pwckcorCheck = false; //비밀번호 일치 검사(password correct check)
		var nameCheck = false; //이름 검사
		var mailCheck = false; //메일 검사
		var mailnumCheck = false; //메일 인증번호 검사
		var addresscheck = false; //주소

		$(document).ready(function(){
			//회원가입 버튼(회원가입 기능 작동)
			$(".join_button").click(function(){
				
				/* 입력값 변수 */
				var id = $('.id_input').val(); 				// id 입력란
				var pw = $('.pw_input').val();				// 비밀번호 입력란
				var pwck = $('.pwck_input').val();			// 비밀번호 확인 입력란
				var name = $('.user_input').val();			// 이름 입력란
				var mail = $('.mail_input').val();			// 이메일 입력란
				var addr = $('.address_input_3').val();		// 주소 입력란
				
				/* 아이디 유효성검사 */
				if(id == ""){
					$('.final_id_ck').css('display','block');
					idCheck = false;
				}else{
					$('.final_id_ck').css('display', 'none');
					idCheck = true;
				}
				
				/* 비밀번호 유효성 검사 */
				if(pw == ""){
					$('.final_pw_ck').css('display','block');
					pwCheck = false;
				}else{
					$('.final_pw_ck').css('display', 'none');
					pwCheck = true;
				}
				
				/* 비밀번호 확인 유효성 검사 */
				if(pwck == ""){
					$('.final_pwck_ck').css('display','block');
					pwckCheck = false;
				}else{
					$('.final_pwck_ck').css('display', 'none');
					pwckCheck = true;
				}
				
				/* 이름 유효성 검사 */
				if(name == ""){
					$('.final_name_ck').css('display','block');
					nameCheck = false;
				}else{
					$('.final_name_ck').css('display', 'none');
					nameCheck = true;
				}		
				
				/* 이메일 유효성 검사 */
				if(mail == ""){
					$('.final_mail_ck').css('display','block');
					mailCheck = false;
				}else{
					$('.final_mail_ck').css('display', 'none');
					mailCheck = true;
				}		
				
				/* 주소 유효성 검사 */
				if(addr == ""){
					$('.final_addr_ck').css('display','block');
					addressCheck = false;
				}else{
					$('.final_addr_ck').css('display', 'none');
					addressCheck = true;
				}		
				
				/* 최종 유효성 검사 */
				if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&mailCheck&&mailnumCheck&&addressCheck){

					$("#join_form").attr("action", "/member/join");
					$("#join_form").submit();			
					
				}		
				
				return false;

			});
		});

		/*/////////////// 아이디 중복검사 /////////////////////////*/
		$('.id_input').on(
				"propertychange change keyup paste input",
				function() {

					var memberId = $('.id_input').val(); // .id_input에 입력되는 값
					var data = {
						memberId : memberId
					} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

					$.ajax({
						type : "post",
						url : "/member/memberIdChk",
						data : data,
						success : function(result) {

							/* 	 console.log("성공 여부" + result); */
							
							if (result != 'fail') {
								$('.id_input_re_1').css("display", "inline-block");
								$('.id_input_re_2').css("display", "none");
								idCheck = true;
							} else {
								$('.id_input_re_2').css("display", "inline-block");
								$('.id_input_re_1').css("display", "none");
								idCheck = false;
							}

						}// success 종료
					}); // ajax 종료

				});// function 종료

		/* ////////////////// 인증번호 이메일 전송/////////////// */

		$(".mail_check_button").click(function() {

			var email = $(".mail_input").val(); // 입력한 이메일
			var checkBox = $(".mail_check_input"); // 인증번호 입력란
			var boxWrap = $(".mail_check_input_box"); // 인증번호 입력란 박스

			$.ajax({

				type : "GET",
				url : "mailCheck?email=" + email,
				success : function(data) {

					console.log("data : " + data);
					checkBox.attr("disabled", false);
					boxWrap.attr("id", "mail_check_input_box_true");
					code = data;

				}

			});

		});

		/* 	/////////////////// 인증번호 비교 /////////////////////// */

		$(".mail_check_input").blur(function() {

			//val() : form 값을 가져오거나 설정하는 메소드
			var inputCode = $(".mail_check_input").val(); // 입력코드    
			var checkResult = $("#mail_check_input_box_warn"); // 비교 결과   

			if (inputCode == code) { // 일치할 경우
				checkResult.html("인증번호가 일치합니다.");
				checkResult.attr("class", "correct");
				mailnumCheck = true;
			} else { // 일치하지 않을 경우
				checkResult.html("인증번호를 다시 확인해주세요.");
				checkResult.attr("class", "incorrect");
				mailnumCheck = false;
			}
		});

		/////////////// 다음 주소 연동 ////////////////////////////

		/* 다음 주소 연동 */
		function execution_daum_address() {

			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 주소변수 문자열과 참고항목 문자열 합치기
								addr += extraAddr;

							} else {
								addr += ' ';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							$(".address_input_1").val(data.zonecode);
							//$("[name=memberAddr1]").val(data.zonecode);	// 대체가능
							$(".address_input_2").val(addr);
							//$("[name=memberAddr2]").val(addr);			// 대체가능
							// 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
							$(".address_input_3").attr("readonly", false);
							$(".address_input_3").focus();

						}
					}).open();

		}
		
		/* 비밀번호 확인 유효성 검사 */
		
		$('.pwck_input').on("propertychange change keyup paste input", function(){
			
			var pw = $('.pw_input').val();
			var pwck = $('pwck_input').val();
			$('final_pwck_ck').css('display', 'none');
			
			if(pw == pwck){
				$('pwck_input_re_1').css('display','block');
				$('.pwck_input_re_2').css('display','none');
				pwCheck = true;
			}
			else{
				$('pwck_input_re_1').css('display','none');
				$('.pwck_input_re_2').css('display','block');
				pwCheck = false;
			}
		});
		
		
	</script>
</body>
</html>