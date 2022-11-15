<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <div id="header-row">
	
	   <div class="container ">
        <nav class="sb-topnav navbar navbar-expand navbar-light ">
		
            <!-- Navbar Brand-->
             <div class="span3"><a  style="width = 50px;"   href="../main"><img src="../resources/img/logo.png"/></a></div>
            <!-- Sidebar Toggle-->
            
            <!-- Navbar Search-->

	   <div class="container my-div">			
			 <form class="d-none d-md-inline-block ">
			 <ul class="nav"  style="font-size:15px;" >
                        <li><a href="../explain"  style="color:#000;"><b>칵테일 설명</b></a></li>
                        <li><a href="../cocktailList" style="color:#000;"><b>레시피</b></a></li>
                        <li><a href="../forum/list" style="color:#000;"><b>자유게시판</b></a></li>
                        <li><a href="../top30" style="color:#000;"><b>top30</b></a></li>									
                    </ul>						
			  </form>
			
			 </div >
			
			
				
			
			<!-- login off -->
			  <div class=" my-div">	
			 <form class="d-none d-md-inline-block ">
			 <ul class="nav"  style="font-size:15px;" >
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
										
									</c:if>
			     </ul>						
			  </form>
	
			 </div >
					<button class=" btn-link  " id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
		
			
            <!-- Navbar
            <ul class="navbar-nav" id="tag11">
                <li class="nav-item dropdown" id="tag11">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Settings</a></li>
                        <li><a class="dropdown-item" href="#!">Activity Log</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Logout</a></li>
                    </ul>
                </li>
            </ul>
			-->
        </nav>
        
		</div>
		
		
		  </div>
					
		
			
    <div class="sb-nav-fixed">
		<div id="layoutSidenav">
		
		
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu" style=" padding-left: 15px;">
                        <div class="nav" style=" font-size: 22px;">	
                        
                        
                        
                        <c:if test="${member == null }">
                        				
                            <div class="sb-sidenav-menu-heading" style=" font-size: 15px;">로그인 후 이용하세요</div>
                            
                            <!-- 로그인 XXXXXXXXXXXX -->
                            
                            <a class="nav-link" href="/member/login">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                로그인
                            </a>
                             <a class="nav-link" href="/member/join">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                회원가입
                            </a>
							</c:if>
							
							
							
							
								<!-- 로그인 OOOOOOOOOOOO -->
							
								
								<c:if test="${member != null }">
								
				 				<div class="sb-sidenav-menu-heading" style=" font-size: 15px;"> 회원 : ${member.memberName}</div>
                            
                            <a class="nav-link" href="/member/logout.do">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                로그아웃
                            </a>
                            
                            <c:if test="${member.adminCk == 1}">
								  <a class="nav-link" href="/admin/main">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                관리자 페이지
                            </a>
								
								
								
							</c:if>
				                            
                            
                            
                            
                            
                            
                            					
						</c:if>
							
							
							
                            <div class="sb-sidenav-menu-heading" style=" font-size: 15px;">Interface</div>
                             <a class="nav-link" href="../cocktailList">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                레시피
                            </a>
							
							  <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Q & A
                            </a>
                             <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                공지사항
                            </a>
                             <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                고객센터
                            </a>
                             <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                자유게시판
                            </a>
                            											
                        </div>
                    </div>
					
					
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
              </div>
			    </div>
					
			  
			  
		  
