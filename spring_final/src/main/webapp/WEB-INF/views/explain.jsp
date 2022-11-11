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
<title>칵테일</title>
<link rel="icon" href="../resources/img/cocktail/47.png">
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

<style>
</style>
<!-- SCRIPT 
    ============================================================-->
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/side.js"></script>
<style>
.wrapper2 {
	display: flex;
	width: 1100px;
	height: 400px;
	margin-left: 5px;
}

.itemBox2 {
	border-width: 2px;
	border-color: #c0c0c0;
	border-style: solid;
	border-radius: 20px;
	background-color: #ffffff;
	width: 220px;
	height: 370px;
	margin-right: 10px;
}

.thumbnailBox {
	width: 220px;
	height: 220px;
	margin-bottom: 10px;
	margin-top: 5px;
}

.thumbnail {
	width: 200px;
	height: 200px;
	border-radius: 20px;
	margin: auto;
}

.items2 {
	height: 30px;
	text-align: center;
	font-size: 20px;
	color: #000000;
	margin-bottom: 10px;
}

.table_wrap {
	width: 1170px;
	height: 800px;
	padding: 20px;
	background: #f7f6f6;
	margin-top: 80px;
	padding-bottom: 10px;
	border-width: 2px;
	border-color: #c0c0c0;
	border-style: solid;
	border-radius: 20px;
}
/* 페이지 버튼 인터페이스 */
.pageMaker_wrap {
	text-align: center;
	margin-bottom: 40px;
}

.pageMaker_wrap a {
	color: black;
}

.pageMaker {
	list-style: none;
	display: inline-block;
}

.pageMaker_btn {
	float: left;
	width: 40px;
	height: 40px;
	line-height: 40px;
	margin-left: 20px;
}

.next, .prev {
	border: 1px solid #ccc;
	padding: 0 10px;
}

.next a, .prev a {
	color: #ccc;
}

.active { /* 현재 페이지 버튼 */
	border: 2px solid black;
	font-weight: 400;
}
/* 칵테일 상세페이지 이동 태그*/
.cocktail_table a {
	color: #1088ed;
	font-weight: 500;
}
/* 검색 영역 */
.search_wrap {
	margin-top: 15px;
}

.search_input {
	position: relative;
	text-align: center;
}

.search_input input[name='keyword'] {
	padding: 4px 10px;
	font-size: 15px;
	height: 20px;
	line-height: 20px;
}

.search_btn {
	height: 32px;
	width: 80px;
	font-weight: 600;
	font-size: 18px;
	line-height: 20px;
	position: absolute;
	margin-left: 15px;
	background-color: #c3daf7;
}

.table_empty {
	height: 50px;
	text-align: center;
	margin: 200px 0 215px 0px;
	font-size: 25px;
}

.dd {
	margin-bottom: 5px;
}

.star-ratings {
	color: #e1e1e1;
	position: relative;
	unicode-bidi: bidi-override;
	width: max-content;
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

@font-face {
    font-family: 'MaplestoryOTFBold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/MaplestoryOTFBold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
</style>
</head>
<body>
	<%@include file="includes/header.jsp"%>
	<div class="feature">
		<div class="row feature-box">
		<!-- 
			<div class="span12 cnt-title" style="text-align: center;">
				<span></span>
			</div> -->		
			<font style= " display: flex; justify-content: center; font-family: 'MaplestoryOTFBold'; margin-top:20px; font-weight:lighter; font-size:50px ">칵테일이란?</font>
			<div class="f-bg" style="display: inline-flex;flex-direction: column; overflow: auto; width: 1500px; height: 700px; margin-top:20px">
					<div class="txc-textbox">
						<p style="font-size: 13px; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px;
							 text-indent: 0px; line-height: 21px; font-family: 굴림; text-align: justify;">
							<span style="font-weight: bold; font-size: 12px; line-height: 21px; font-family: 굴림; text-align: justify;">
								<span style="font-size: 11pt;">
								 <span style="font-size: 9pt;">
								  <font class="Apple-style-span" color="#e31600">
								   <span style="font-size: 11pt;"/>
								  </font>
								</span>
								 <br><br>
								  <font class="Apple-style-span" color="#e31600">1. 칵테일(Cocktail)의 정의</font></span>
							</span>
						</p>
						<br><br>

						<div class="imageblock left" style="float: left; margin-right: 10px;">
							<span
								data-url="https://t1.daumcdn.net/cfile/tistory/1604D71149C8F812B3?download"
								data-lightbox="lightbox">
								<!--  
								<img
								srcset="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&amp;fname=http%3A%2F%2Fcfile4.uf.tistory.com%2Fimage%2F1604D71149C8F812B3F10F"
								src="https://t1.daumcdn.net/cfile/tistory/1604D71149C8F812B3"
								style="cursor: pointer; max-width: 100%; height: auto"
								width="400" height="100"
								alt="Cocktail, 술, 칵테일, 칵테일 상식, 칵테일 설명, 칵테일 역사, 칵테일 유래, 칵테일 정보, 칵테일 정의, 칵테일 종류, 칵테일사랑, 칵테일상식, 칵테일의 뜻, 칵테일의 역사, 칵테일의 유래, 칵테일의 종류, 칵테일종류"
								filename="cfile4.uf@1604D71149C8F812B3F10F.jpg" filemime="">
								-->
								<img src="../../resources/img/explain.jpg" style=" width:350px; height: 300px;">
							</span>
							<p class="cap1">칵테일 정의, 칵테일이란?</p>
						</div>
						
						<div class="definition" style="font-size:17px">
							<span name="definition1">
								칵테일이란 일반적으로 「여러 가지의 약주, 과즙과 향미 등을 혼합하여 얻은 음료」즉 얼마간의 재료를 서로 섞어 만드는 음료라는 식으로 해석되고 있으나,
 								휘즈(Fizz), 콜린스(collins), 하이볼( high-ball) 및 샤우어(sour) 등과 같은 롱․드링크(long drinks)도 포함되고 있다.
 								그러나 마티니(martini), 맨해턴(manhattan) 및 사이드․카(side car) 등으로 칵테일․글래스로 제공되는 것은 그 이름 밑에 칵테일을 붙여서
	 							즉 마티니․칵테일이라고 불러도 무난하지만, 진․휘즈(gin fizz)나 위스키․샤우어(whisky sour)등은 휘즈나 샤우어라는 말로 칵테일과 같은 의미로 쓰여지고 있어 따로 그 밑에 진․휘즈․칵테일이라고 부르지 않는다.
					   		</span>
					   		<br><br>
					   		<span name="definition2">
					   			따라서 현재 칵테일이란 넓은 의미와 좁은 의미로 쓰여지고 있다. 즉 넓은 의미의 칵테일은 혼합 음료의 모두를 가리켜 믹스․드링크(mixed drinks)라 말하고
 								좁은 의미의 칵테일은 혼합의 과정에서 셰이커(shaker)나 믹스․글래스(mixing glass)를 사용하여 칵테일․글래스에 넣어 마시는 것을 말하고 있다.
 								 칵테일은 맛과 향의 예술이라 칭할 수 있듯이 사람의 기호에 따라 그 맛과 향을 달리 즐길 수 있고,
 								여러 가지의 재료와 그 기술로 독특한 칵테일을 만들어 모든 사람을 즐겁게 만들 수 있기 때문에 “칵테일은 교향악이다”라는 애주가의 호칭도 있다.
					   		</span>
					   		<br><br>
					   		<span name="definition3">
					   		실버․셰이커(silver shaker)가 얼음덩이와 같이 흔들리는 소리와 박자,
					   		 글래스에 부어 비치는 빛깔에서 마치 활짝 핀 꽃 등을 연상케 하는 풍요로운 향기가 실로 눈, 귀, 혀 등을 자극하는 신비의 예술이라 하여도 과언이 아닐 것이다. 
					   		</span>	
					   	</div>
					   </div>
					   <br><br>
					   		<div class="history">
								<font class="Apple-style-span" color="#e31600" style="float: left;  margin-right: 10px; font-weight:bold; ">2. 칵테일(Cocktail)의 역사</font></span>
								<br><br>
					   				<div class="history1" >
					   					<span style="FONT-SIZE: 17px; text-align:left;">
											술은 여러 가지의 재료를 서로 섞어서 마신다고 하는 생각은 벌써 오랜 시대부터 전해 왔지만, 
											술 중에서도 가장 오래된 맥주는 기원전부터 벌써 꿀을 섞기도 하고 대추나 야자 열매를 넣어 마시는 습관이 있었다고 한다.
 											또한 포도주도 역사가 오래된 술이지만, 그대로 마시는 사람을 야만인이라 지칭하기도 하였다 한다. 
											포도주에 물을 섞어 마실 때는 손님을 맞이하는 주인이 결정하게 되었는데, 포도주 1에 대해 물 3의 비율로 섞는 것이 합리적 혼합이라 하였다. 물론 당시 의 포도주는 지금의 것보다 맛이 담백하고 농도가 짙었으리라 생각된다.
										</span>
										<br><br>
										<span>
										이와 같이 믹스.드링크(mixed drink)의 역사는 지극히 오래된 것이지만 현재 마시고 있는 칵테일의 형태는 아마 오랜뒤에서부터 만들어졌을 것이다.왜냐하면 지금의 칵테일은 인조 얼음이 첨가되기 때문이다.
										   문헌에 의하면 1870년대에 독일의 칼르․린데에 의해서 암모니아 압축에 의한 인공냉동기가 발명되어 인조 얼음이 만들어지고 아메리카 남부에서도 혼성 음료의 대부분이 인조 얼음을 사용하여 마시게 되니 지금으로부터 약 100여 년 전에야 오늘날의 칵테일이 만들어졌다고 추정된다. 
										</span>
										<br><br>
										<span>
										   그 후 칵테일은 급속히 세계에 파급되어 1855년에 출판된 영국의 작가 삿카레의 소설《New Comes》에 “대위, 당신은 브랜디․칵테일을 마신 적이 있습니까”라는 구절이 나와 있기도 하였다. 그러나 뭐니뭐니 해도 세계 제1차 대전과 미국의 금주법에 의해서 미주 지역은 물론 유럽에까지 칵테일이 널리 보급되기에 이르렀다.
										</span>
										<br><br>
					   				</div>
					   				<br><br>
					   				<div class="origin">
					   					<br>
					   				<font class="Apple-style-span" color="#e31600" style="float: left;  margin-right: 10px; font-weight:bold; ">3. 칵테일(Cocktail)의 유래</font>
					   				<br><br>
					   				<span style="float: left;">
					   				&nbsp;&nbsp;
					   				칵테일의 유래는 여러 가지 설이 있지만 그 중에서도 몇 가지의 전설은 널리 알려지고 있다.</span>
					   				<br><br>
					   				<span>
										&nbsp;&nbsp;&nbsp;① 멕시코만 유카탄 반도의 칸베체라고 하는 옛날 항구에 영국의 배가 짐을 실으로 입항하게 되었다.
										 그 당시 영국 사람들은 강한 알코올이 함유된 술을 스트레이트(straight)로 마시는 것이 보통이지만,
										 이 지방에서는 브랜디와 럼 등의 알코올을 혼합해서 마시는 드락스(dracs)라고 하는 혼성음료가 유행되고 있었다.
										 이것이 영국의 선원들에게 매우 신기하게 보여, 특히 조그마한 술집들에서는 귀여운 소년이 이 드락스를 만들고 있었다.
										 그 소년은 술을 섞을 때에 금속성의 스푼(spoon) 대신에 멋있게 만든 나무 뿌리 막대를 사용하고 있었다 한다.
										 그 나무뿌리 막대가 닭의 꼬리 형태와 닮았다 하여 그것에 꼬라․데․가요(cora de gallo)라고 애칭을 붙이게 된 것이 영어로 직역하여 
										「Tail of cock」으로 부르게 되었다. 그리하여 영국의 선원들은 「Dracs」를 주문할 때 「Tail of cock」이라는 말로 바꿔 부르게 된 것이라 한다. 
					   				</span>
					   				<br><br>
					   				<span>
					   				   &nbsp;&nbsp;&nbsp;② 1779년 미국의 한 마을에서  조용한 여관을 경영하고 있는 「짐」이라는 남자가 살고 있었다. 그는 귀여운 딸 하나와 싸움 잘하는 투계 한 마리를 가진 자로서 자만심이 누구보다도 강한 사람이었다.
					   				    그러나 어느 날 그 싸움닭이 없어지게 되어「짐」은 광인처럼 이곳 저곳을 마구 돌아다니면서 그 닭을 찾아다녔으나 찾을 수가 없었다.
					   				       이를  지켜보고 있던 효성이 지극한 따른 누구라도 그 닭을 찾아주는 사람과 결혼을 하겠다고 선언을 하였다. 그러자 이윽고 어느 미남청년 기병사가 그 닭을 찾아 「짐」에게 넘겨주게 되어,
					   				        너무 기쁜 「짐」은 닥치는 대로 술을 양동이에 부어 넣어 축배로 제공하게 되었는데,
					   				        그 엉터리 혼합주가 독특한 맛이 있다하여 수탉의 꼬리와 연관지어 Cock(雄鷄)의 Tail(尾)이라 이름지게 되었다 한다.  
					   				</span>
					   				<br><br>
					   				<span>
					   					&nbsp;&nbsp;&nbsp;③ 독립전쟁이 한창인 때 지금의 뉴욕의 북쪽에 「엠스훠트」라고 하는 영국 식민지가 있었다.여기에서「벳치․후라나컨」이란 미녀가 조그만 바아(bar)를 경영하고 있었다.
					   					 그녀는 독립의 기상이 높은 장병들에게 동경의 대상이었다. 
					   				</span>
					   				<span>
										&nbsp;&nbsp;&nbsp;전쟁이 승리로 끝난 어느 날 밤,
										 그녀가 자만의 팔을 흔들어 만든 럼․펀치의 대형잔에 닭의 꼬리가 장식되어 있었다.
										 어는 한 장교가 “ 이 훌륭한 꼬리를 어디서 얻었는가” 라고 물으니 그녀는 콧대높게 “어느 영국의 남자가 사육하고 있던 닭의 꼬리”라고
										 하니 영국과 사이가 좋지 않던 장교들은 그녀가 만든 미국 술에 위해서 높은 소리로 「Viva, cock's tail」(닭고기 만세) 이라 외치며
										 더욱 그 술을 마셨다고 한다. 			   					
					   				</span>
					   				</div>
							</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="includes/footer.jsp"%>

</body>

</html>