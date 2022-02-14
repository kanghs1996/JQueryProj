<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Append계열함수.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	$(':button').click(function(){
		var tableString="<table style=\"border-spacing: 1px; background-color: green;width:500px\">";
		var row = $('#row').val();
		var col = $('#col').val();
		for(var i=1;i<=row ;i++){
			tableString+="<tr style=\"background-color:white\">";
			for(var k=1;k<=col;k++){
				tableString+="<td>"+i+"행"+k+"열</td>";
			}
			tableString+="</tr>";
		}
		tableString+="</table>";
		//append계열 함수 미사용]
		//$('#lblDisplay').html($('#lblDisplay').html()+tableString);
		//[추가할 대상의 컨텐츠 이후에 추가됨]
		//$("선택자").append("추가할 요소")
		//$("선택자").append($()함수를 기존 객체 선택)
		//$('#lblDisplay').append(tableString);
		//$('#lblDisplay').append($('table:first'));//기존 요소 append시에는 잘라내서 붙여넣기 함
		//$("추가할 요소").appendTo("선택자")
		//$(tableString).appendTo('#lblDisplay');
		//$('table:first').appendTo('#lblDisplay');
		/*
	    [append()와 appendTo()차이점]
	    -.$("선택자").append("추가할 요소")
	     $("추가할 요소").appendTo("선택자")
	         즉 순서가 반대
	          ※공통점: 기존의 요소로 추가시 잘라내서 붙여넣기와 같다
	   */	
	   
		/*
		before():
		-DOM요소 이전에 html요소 추가
		$('선택자').before('html요소');
	
		after():
		-DOM요소 다음에 html요소 추가
		$('선택자').after('html요소');
		
		insertAfter():
		-DOM요소 다음에 html요소 추가 됨
		$('html요소').insertAfter('선택자');

		insertBefore():
		-DOM요소 이전에 html요소 추가 됨
		$('html요소').insertBefore('선택자');				
		*/
		//$('#lblDisplay').before(tableString);
		//$('#lblDisplay').before($('table:first'));//잘라내서 붙여넣기 함
		//$('#lblDisplay').after(tableString);
		$('#lblDisplay').after($('table:first'));
	});
	
	
});
</script>
</head>
<body>
	<fieldset>
		<legend>DOM객체를 동적으로 추가하는 함수들</legend>
		<h2>
			<span>제목입니다</span>
		</h2>
		<input type="text" id="row" />행 <input type="text" id="col" />열 
		<input type="button" value="테이블 동적 생성" />
		<table style="border-spacing: 1px; background-color: red">
			<tr style="background-color: white">
				<td>1행 1열</td>
				<td>1행 2열</td>
			</tr>
			<tr style="background-color: white">
				<td>2행 1열</td>
				<td>2행 2열</td>
			</tr>
		</table>	
		
		<div id="lblDisplay" style="border: 1px red solid; width: 600px">
			대상<br />대상2
		</div>
		
	</fieldset>
</body>
</html>