<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="initial-scale=1, width=device-width, maximum-scale=1, minimum-scale=1, user-scalable=no">
<title>jQuery Lightboxed Plugin Example</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href="<c:url value="/styles/lightboxed.css"/>" rel="stylesheet" />
<script src="<c:url value="/js/lightboxed.js"/>" ></script>

<style>
html, * {
	box-sizing: border-box;
}

body {
	background-color: #fafafa;
	line-height: 1.6;
}

.lead {
	font-size: 1.5rem;
	font-weight: 300;
}

.container {
	margin: 70px auto;
	max-width: 960px;
}

.btn {
	padding: 1.25rem;
	border: 0;
	border-radius: 3px;
	background-color: #4F46E5;
	color: #fff;
	cursor: pointer;
}

.container img {
	width: 300px;
}
.lightboxed{
	
}
a{
	text-decoration: none;
	color:black;
}
</style>
<script>
$(function(){});
</script>
</head>
<body>
	<div class="container">
		<!-- jquery plugin best 2021 로 검색 -->
		<h1>이미지 슬라이드</h1>
		<div id="carbon-block" style="margin: 30px auto"></div>
		
		
		<img class="lightboxed" rel="group1"
			src="<c:url value="/images/img1.jpg"/>"
			data-link="<c:url value="/images/img1.jpg"/>" alt="슬라이드1"
			data-caption="슬라이드1" /> 
			<img class="lightboxed" rel="group1"
			src="<c:url value="/images/img2.jpg"/>"
			data-link="<c:url value="/images/img2.jpg"/>" alt="슬라이드2"
			data-caption="슬라이드2" /> 
			<img class="lightboxed" rel="group1"
			src="<c:url value="/images/img3.jpg"/>"
			data-link="<c:url value="/images/img3.jpg"/>" alt="슬라이드3"
			data-caption="슬라이드3" /> 
			<img class="lightboxed" rel="group1"
			src="<c:url value="/images/img4.jpg"/>"
			data-link="<c:url value="/images/img4.jpg"/>" alt="슬라이드4"
			data-caption="슬라이드4" /> 	
			
			<img class="lightboxed" rel="group1"
			src="<c:url value="/images/img5.jpg"/>"
			data-link="https://www.youtube.com/embed/7Twk0V4KPUA"
			data-width="560" data-height="315" data-caption="노래듣기"/> <br />
		
		
		<a href="https://www.youtube.com/embed/7Twk0V4KPUA" class="lightboxed" data-width="560" data-height="315">영상 보기</a> <br />
		
		<a href="<c:url value="/images/img4.jpg"/>" class="lightboxed" data-width="560" data-height="315">이미지 보기</a> <br />
		
		
		<a href="#inline" class="lightboxed">인라인 컨텐츠-주로 텍스트 컨텐츠</a>
		<div id="inline" style="display: none;">
			<div style="position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%); color: #fff;">
				이경규는 오는 12월 딸 이예림의 결혼을 앞둔 기분을 묻자 "우리 딸이 떠나면 내가 어떻게 살 것인가 고민한다"고 답했다. 이어 "딸이 떠나고 나면 걱정인 게 아내랑 둘이 살아야 한다. 내가 버텨낼 수 있을까. 중간에 스펀지가 있어야 하는데 예림이가 사라져 버리니까 과연 내가 잘살 수 있을까 싶다. 이제 아내랑 대 1로 살아야 한다"며 생각지 못한 걱정을 토로해 폭소케 했다.

평소 월드컵도 보지 않던 이예림이 K리그를 챙겨보고, 그중에서도 한 팀의 경기만 계속 보는 걸 보고 남자친구가 축구선수라는 걸 알게 됐다는 이경규. 그는 예비 사위 김영찬의 첫인상에 대해 "내가 좋아하는 종목이라 좋았고, 그래서 쉽게 허락을 했다"며 "마음에 들고 안 들고가 없다. 딸이 만나고 있는 사람이고 딸이 선택했으니까"라고 말했다.

그러나 아직은 김영찬과의 관계가 불편하다는 이경규는 "사위가 백년손님이라 어렵긴 어렵다. 나보고 아버님이라고 하는데 미치겠다. '내가 왜 쟤 아버님이지?' 싶다"고 고백했다. 이어 "이번에 '도시어부'에 사위랑 같이 출연했다. 사위가 물고기를 잡고 내가 뜰채로 떠줘야 하는 상황인데 잘 안 됐다. 뒤에서 '아버님'이라고 부르는데 '왜 내가 쟤 아버님이지?' 싶었다. 아직 익숙하지 않다. 아버지도 아니고 아버님이라고 하니까"라고 털어놨다.
			</div>		
		</div>
	</div>
	
</body>
</html>