<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accordian.jsp</title>
<!-- 제이쿼리 UI용 CSS -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<!-- 제이쿼리 코어용 라이브러리 임베드 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 제이쿼리 UI용 라이브러리 임베드 -->
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
	$(function() {
		$("#accordion").accordion({
			active:false,
			collapsible: true,
			animate:{duration:2000,easing:'easeOutBounce'},
			//event:"mouseover click",
			activate:function( event, ui ) {
				console.log('activate이벤트 발생');
				//활성화된 헤더와 판넬 배경색 변경
				ui.newHeader.css('background-color','red');
				ui.newPanel.css('background-color','yellow');
				//비 활성화된 헤더 배경색 변경
				ui.oldHeader.css('background-color','green');
				
			},
			beforeActivate: function( event, ui ) {
				console.log('beforeActivate이벤트 발생');
			}
		});
		// getter 로 설정된 값 읽어 오기
		var animate=$('#accordion').accordion('option','animate');
		console.log('animate옵션:',animate);
		console.log('애니메이션 시간:%s,애니메이션효과:%s',animate.duration,animate.easing);
		//setter로 설정하기
		$('#accordion').accordion('option','animate',{duration:500,easing:'swing'});
		
		
		var toggle=false;
		$(':button:last').click(function(){
			if(!toggle)
				$('#accordion').accordion('disable');
			else
				$('#accordion').accordion('enable');
			toggle = !toggle;
		});
	});
</script>
</head>
<body>
	<fieldset>
		<legend>Accordian</legend>
		<div id="accordion">
			<h3>Section 1</h3>
			<div>
				<p>Mauris mauris ante, blandit et, ultrices a, suscipit eget,
					quam. Integer ut neque. Vivamus nisi metus, molestie vel, gravida
					in, condimentum sit amet, nunc. Nam a nibh. Donec suscipit eros.
					Nam mi. Proin viverra leo ut odio. Curabitur malesuada. Vestibulum
					a velit eu ante scelerisque vulputate.</p>
			</div>
			<h3>Section 2</h3>
			<div>
				<p>Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum
					sit amet purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris
					turpis porttitor velit, faucibus interdum tellus libero ac justo.
					Vivamus non quam. In suscipit faucibus urna.</p>
			</div>
			<h3>Section 3</h3>
			<div>
				<p>Nam enim risus, molestie et, porta ac, aliquam ac, risus.
					Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in
					pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac
					felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam
					nisi, eu iaculis leo purus venenatis dui.</p>
				<ul>
					<li>List item one</li>
					<li>List item two</li>
					<li>List item three</li>
				</ul>
			</div>
			<h3>Section 4</h3>
			<div>
				<p>Cras dictum. Pellentesque habitant morbi tristique senectus
					et netus et malesuada fames ac turpis egestas. Vestibulum ante
					ipsum primis in faucibus orci luctus et ultrices posuere cubilia
					Curae; Aenean lacinia mauris vel est.</p>
				<p>Suspendisse eu nisl. Nullam ut libero. Integer dignissim
					consequat lectus. Class aptent taciti sociosqu ad litora torquent
					per conubia nostra, per inceptos himenaeos.</p>
			</div>
		</div>
		<hr/>
		<button>아코디언 disable/enable메소드를 사용한 토글링</button>
	</fieldset>
</body>
</html>