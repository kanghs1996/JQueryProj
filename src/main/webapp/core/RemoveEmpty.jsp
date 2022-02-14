<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RemoveEmpty.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	/*
	  ※
	  $("선택자") 하면 무조건 jQuery객체 반환.
	  해당 객체가 없어도
	  즉 null이나 undefined가 아님
	  해당 객체 존재 유무는 null이 아닌
	  $("선택자").length==0으로 판단해라.
	 */
	 console.log($('h2') == null ?'h2요소가 없다':'h2요소가 있다');
	 console.log($('h2') == 'undefined' ?'h2요소가 없다':'h2요소가 있다');
	 console.log($('h2').length == 0 ?'h2요소가 없다':'h2요소가 있다');
	 console.log($('h2'));
	 
	 $(':button').click(function(){
		 //아래는 모두 false
		 //console.log($(this).is(':first'));
		 //console.log($(this).is(':eq(0)'));
		 //첫번째 버튼일때만 true
		 console.log($(this).is('button:first'));
		 console.log($(this).is('button:eq(0)'));
		 if($(this).is('button:eq(0)')){
			//완전 사라짐.메모리에서 요소자체가 삭제됨 
			 $('div').remove();
		 }
		 else{
			//div요소 존재 .내용만 지운다
			//text("")와 같다
			 $('div').empty();
		 }
	 });
	
	
});
</script>
</head>
<body>
	<fieldset>
		<legend>remove()및 empty()함수</legend>
		<button>REMOVE</button>
		<button>EMPTY</button>
		<div style="color:green;border:1px red solid">DIV</div>
	</fieldset>
</body>
</html>