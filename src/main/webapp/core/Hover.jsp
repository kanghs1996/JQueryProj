<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hover.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<style>
	.bg{background-color:green}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	//mouseover()함수와 mouseout()함수로 구현]
	/*
	$('tr:gt(0)').mouseover(function(){
		$(this).addClass('bg');
	}).mouseout(function(){
		$(this).removeClass('bg');
	});*/
	//[hover()함수로 구현]
	$('tr:gt(0)').hover(function(){
		$(this).addClass('bg');
	},function(){
		$(this).removeClass('bg');
	});
	/*이미지위에 마우스오버시 2.jpg로     마우스아웃시 1.jpg]*/
	/*
	$('img').hover(function(){
		this.src="<c:url value='/images/2.jpg'/>"
	},function(){
		this.src="<c:url value='/images/1.jpg'/>"
	});*/
	/*문]이미지에 마우스 오버시 이미지크기를  가로폭은 2배
    세로폭 1.5배로 마우스 아웃시에는 원래 크기로...*/
    
   //원래 이미지 크기 얻기]
	var width = parseInt($('img').get(0).style.width);
	var height = parseInt($('img').get(0).style.height);
	$('img').hover(function(){
		this.style.width = width *2 +'px';
		this.style.height = height *1.5 +'px';
	},function(){
		this.style.width = width+'px';
		this.style.height = height +'px';
	});
});
</script>
</head>
<body>
	<fieldset>
		<legend>hover(콜백함수1,콜백함수2)</legend>
		<table cellspacing="1" bgcolor="gray" width="60%">
			<tr bgcolor="white">
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<tr bgcolor="white">
				<td>1</td>
				<td>제목1</td>
				<td>작성자1</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>2</td>
				<td>제목2</td>
				<td>작성자2</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>3</td>
				<td>제목3</td>
				<td>작성자3</td>
				<td>2013-9-12</td>
			</tr>
			<tr bgcolor="white">
				<td>4</td>
				<td>제목4</td>
				<td>작성자4</td>
				<td>2013-9-12</td>
			</tr>
		</table>
		<hr />

		<img src="<c:url value='/images/1.jpg'/>" alt="이미지"
			style="width:100px; height:100px" />

	</fieldset>
</body>
</html>