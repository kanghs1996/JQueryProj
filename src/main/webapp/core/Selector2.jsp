<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Selector2.jsp</title>
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
	※eq(0) 과 first:자식.부모관계 상관없이 선택된 객체에서
	                             첫번째 객체를 의미
	                             
	 eq(선택된객체수-1),last도 있다
	※first-child:자식.부모관계에서 첫번째 자식인 객체
	 last-child
	*/		
	console.log('ul태그의 수:',$('ul').length);
	console.log('첫번째 자식인 UL태그의 수:',$('ul:first-child').length);
	//li태그중 짝수번째는 글자색을 RED  홀수번째는 GREEN
	//방법1]ul:eq(0)의미 -UL태그중 첫번째 UL태그
	//$('ul:eq(0) li:even').css('color','red');
	//$('ul:eq(0) li:odd').css('color','green');
	//방법2] ul:first의 의미-UL태그중에서 첫번째 UL태그
	$('ul:first li:even').css('color','#ff0000');
	$('ul:first li:odd').css('color','#00FF00');
	//두 번째 UL의 첫번째 li의 백그라운드 YELLOW  마지막번쩨 li는 blue
	//$('ul:last-child li:first-child').css('background-color','yellow');	
	//$('ul:last li:last').css('background-color','blue');
	//변수처리 가능
	$('ul:last-child li:eq(0)').css('background-color','yellow');
	var size = $('ul:last li').length;
	//last대신에 eq(size-1) 
	$('ul:last li:eq('+(size-1)+')').css('background-color','blue');
});
</script>
</head>
<body>
	<fieldset>
		<legend>선택자 두번째</legend>
		<!-- li태그중 짝수번째는 글자색을 RED 
                홀수번째는 GREEN
   		-->
		<ul>
			<li>가</li>
			<li>나</li>
			<li>다</li>
			<li>라</li>
		</ul>
		<!--  첫번째 li의 백그라운드 YELLOW
              마지막번쩨 li는 blue
   		-->
		<ul>
			<li>A</li>
			<li>B</li>
			<li>C</li>
			<li>D</li>
			<li>E</li>
			<li>F</li>
			<li>G</li>
		</ul>
	</fieldset>
</body>
</html>