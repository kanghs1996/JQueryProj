<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DatePicker.jsp</title>
<!-- 제이쿼리 UI용 CSS -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 제이쿼리 UI용 라이브러리 임베드 -->
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
$(function(){
	 /*
	 위젯 생성 방법
	 방법1. $("선택자").위젯함수()
	    세터로 option 설정
	    $("선택자").위젯함수('option','옵션명','옵션값')
	 방법2. $("선택자").위젯함수({'옵션명':'옵션값'})
	 */
	 //방법1]
	 /*
	 $("#datepicker").datepicker();	
	 $("#datepicker").datepicker('option',"dateFormat", "yy-mm-dd");
	 $("#datepicker" ).datepicker( "option", "showAnim", "bounce" );*/
	 //방법2]
	 var date = new Date();
	 $("#datepicker").datepicker({
		dateFormat:"yy-mm-dd",
		showAnim:"bounce",
		//showOtherMonths: true,//현재달에 시작과 끝에 다른 달의 날짜 보이기(선택 불가)
		//selectOtherMonths: true//다른 달의 날짜 선택 가능 토록
		minDate: 0, //오늘날짜부터 이후만 선택 가능
		//minDate:new Date(date.getFullYear(),date.getMonth(),date.getDate()),
		buttonImage: "<c:url value="/images/calendar.png"/>",//showOn 속성과 함께
		buttonText:"달력이미지",
		showOn:"both",
		buttonImageOnly:true,
		onSelect:function(selectedDate,dp){
			console.log('선택한 날짜(selectedDate):',selectedDate);
			console.log('선택한 날짜(this.value):',this.value);
			console.log('데이트 피커:',dp);//데이트 피커 객체
			console.log('this:',this);//type="text"요소
			//$('#display').html(selectedDate);	
			//$('#display').html(this.value);		
			$('#display').html(dp.selectedYear+'-'+dp.selectedMonth+'-'+dp.selectedDay);
		}
		
	});	
	 
	 //달력 이미지를 입력상자 크기에 맞에 스타일 설정
	 //ui-datepicker-trigger
	 $('.ui-datepicker-trigger').css({height:'30px','vertical-align':'middle'});
});
</script>
</head>
<body>
	<fieldset>
		<legend>데이트 피커</legend>
		<input type="text" id="datepicker"/>
		<h2>선택한 날짜 아래에 표시하기</h2>
		<span id="display" style="color:red;font-size:1.5em"></span>
	</fieldset>
</body>
</html>