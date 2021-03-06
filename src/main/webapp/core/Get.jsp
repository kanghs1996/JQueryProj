<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(function(){
	//1.팩토리 함수$()로 jQuery DOM객체 얻는다 . jQuery DOM객체에만 jQuery함수 적용 가능
	var jQueryDom=$('#naver');//제이쿼리 DOM객체
	var jsDom = document.querySelector('#naver')//자바스크립트 DOM객체
	console.log('jQueryDom:%O',jQueryDom);
	console.log('jsDom:%O',jsDom);
	//jQueryDom.css('color','red').html('NAVER');//[O]
	//jsDom.css('color','red').html('NAVER');//[X]Uncaught TypeError: jsDom.css is not a function
	//아래처럼 자바스크립트 방식으로 적용해야 한다
	//jsDom.style.color='red';
	//jsDom.innerHTML='NAVER';
	//jQueryDom.style.color='red';//[x]Cannot set properties of undefined (setting 'color')
	//3.jQuery함수 get()로 브라우저 DOM객체 얻기]
	//get(인덱스):jQuery DOM객체를 자바스크립트 DOM객체로 변환
	//          인덱스-선택된 jQuery DOM객체중 인덱스값(인덱스는 0부터 시작)
	//console.log(jQueryDom.href);//undefined
	//console.log(jsDom.href);//https://www.naver.com/
	console.log(jQueryDom.get(0).href);//https://www.naver.com/
	
	$('input[type=button]:first').click(function(){
		//1.자스 함수 이용
		console.log('자스 이용:',document.querySelector('#txt').value);
		//2.jQuery함수 이용
		console.log('제이쿼리 함수 이용:',$('#txt').get(0).value);
		console.log('제이쿼리 함수 이용:',$('#txt').val());
	});
	//문]"텍스트 변경하기" 버튼 클릭시 "실습입니다"라는 
	//   텍스트 색상을 빨간색으로
	//   글자크기는 1.8em으로 변경해라.자스(ES5)와 제이쿼리버전 둘다]
	//   단,버튼 클릭 이벤트는 순수 자바스크립트 코드를 사용하여라.	
	//document.querySelector("fieldset > input[type=button]:nth-child(8)").addEventListener("click",function(){		
	document.getElementsByTagName('input')[2].onclick=function(){
		var version = document.querySelector("#version").value;
		if(version=="js"){
			var span=document.getElementsByTagName('span')[0];
			span.style.color="red";
			span.style.fontSize="1.8em";
			console.log('자스버전으로 변경');
		}
		else{
			$('span:eq(0)').css('color','red').css('fontSize','1.8em');
			console.log('제이쿼리버전으로 변경');
		}		
	};
});
</script>
</head>
<body>
	<fieldset>
		<legend>get(인덱스)함수</legend>
		<input type="text" value="텍스트값" id="txt"/>
	    <input type="button" value="확인" />
	    <ul style="list-style-type: decimal;">
		    <li><a href="https://www.naver.com" id="naver" >네이버</a></li>
		    <li><a href="https://www.daum.net"  >다음</a></li>
		    <li><a href="https://www.nate.com"  >네이트</a></li>
	    </ul>
	    <h2>실습하기</h2>
	    <select id="version">
	    	<option value="js">자바스크립트버전</option>
	    	<option value="jquery">제이쿼리버전</option>
	    </select>
	    <span>실습입니다</span>
	    <input type='button' value="텍스트변경하기"/>
	</fieldset>
</body>
</html>