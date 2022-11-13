<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
					<a class="brand" href="main"><img src="../resources/img/logo.png" /></a>
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
									<li><a href="../cocktailList" style="color: rgb(0, 0, 0);"><b>레시피</b></a></li>
									<li><a href="../service.html" style="color: rgb(0, 0, 0);"><b>자유게시판</b></a></li>
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