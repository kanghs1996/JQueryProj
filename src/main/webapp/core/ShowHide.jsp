<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ShowHide.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 제이쿼리 UI -->
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
$(function(){
	//페이지 최초 로드시 내용 숨기기]
	//$('.content').hide();
	//제목 클릭시 내용 보이기]
	//1]show()함수 사용-show한 상태에서 제목 다시 클릭시 그대로다.
	/*
	$('.title').click(function(){
		//$(this).next().show();
		$(this).next().show(1500,function(){
			$(this).css('background-color','yellow');
		});
	});*/
	//2]toggle()함수 사용-제목을 다시 클릭시 토글링 되어   보였던게(show) 다시 숨겨진다(hide).
	/*
	$('.title').click(function(){
		//$(this).next().toggle();
		$(this).next().toggle(1500,function(){
			$(this).css('background-color','yellow');
		});
	});*/
	/*3]toggle()함수 미 사용-show()및 hide()함수를 이용해
	제목 클릭시 다른 제목의
	내용이 열려진게 있다면 자동으로 닫히도록
            구현하여라 그리고 토글링 기능도 함께.... */
    /*
	$('.title').click(function(){
		console.log($(this).next().css('display'))
		//클릭한 제목의 내용이 숨겨져 있다면
		if($(this).next().css('display')=='none'){
			$('.content').hide(1500);
			$(this).next().show(1500);//해당 제목의 내용 보이기
		}
		else{
			$(this).next().hide(1500);
		}
	});*/
	//제이쿼리 UI 사용해서 위와 똑 같은 기능 구현 한줄로...
	$("#accordion").accordion({active: false,collapsible: true });
            
});
</script>
</head>
<body>
	<fieldset>
		<legend>show(),hide()함수</legend>
		<div id="accordion"><!-- 제이쿼리 UI적용시 추가DIV -->
			<div class="title"><h2>제목1</h2></div>
			<div class="content">
				내용입니다1<br/>
				내용입니다1<br/>
				내용입니다1<br/>
			</div>
			<div class="title"><h2>제목2</h2></div>
			<div class="content">
				내용입니다2<br/>
				내용입니다2<br/>
				내용입니다2<br/>
			</div>
			<div class="title"><h2>제목3</h2></div>
			<div class="content">
				내용입니다3<br/>
				내용입니다3<br/>
				내용입니다3<br/>
			</div>
		</div>
	</fieldset>
</body>
</html>