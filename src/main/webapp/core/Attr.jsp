<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attr.jsp</title>
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
	 속성 읽기]:$("선택자").attr("태그의 속성명")
	            ※아래도 동일
      $("선택자").get(인덱스).태그의 속성명
      this.태그의 속성명

	※단,해당 태그에 속성명 미 기술시에는 읽어 오지 못함
	속성 설정]:$("선택자").attr("태그의 속성명1","값1")
                            동시에 여러 속성 설정시에는 메소드 체인 
                            이용하거나 JSON데이타 형식 사용
           attr({속성1:'속성1값',속성2:속성2값.....})
	        속성 제거]:$("선택자").removeAttr("태그의 속성명"); 

	※속성 추가시는 attr()이나 prop()사용
            속성 읽기시는 prop()사용 ,만약 HTML태그상에 속성이 기술이 안되어 있다면 
            attr()은 undefined
            prop()은 빈문자열
            속성 삭제시에는 removeAttr()사용.
            removeProp()은   HTML태그의 속성은 제거가 안된다. 

	*/
	$('#add').click(function(){
		//attr()함수 사용]
		//메소드 체인]
		/*
		$('#div').attr('title','여기를 클릭하세요')
		         .attr('class','bg')
		         .attr('style','width:100px;height:100px;text-align:center;line-height:100px')
		         .on('click',function(){$(this).html("JQEURY")});*/
		//JSON데이타 형식 사용]
		$('#div').attr({title:'Click Me!!!','class':'bg','style':'width:100px;height:100px;text-align:center;line-height:100px'}).click(function(){$(this).html("JQEURY")});    
		//prop()함수 사용] 
		//$('#div').prop({title:'Click Me!!!','class':'bg','style':'width:100px;height:100px;text-align:center;line-height:100px'}).click(function(){$(this).html("JQEURY")});    
	});
	
	$('#read').click(function(){
		//attr()은 HTML의 속성(attribute),
		//prop()는 자스의 프로파티(property)를 취급하는 함수
		//체크박스의 값이나 a태그의 href속성값을 읽어보면 차이를 알수 있다.
		//<a href='#'>클릭</a>
		//<input type='checkbox' checked/>
		console.log('checkbox의 checked속성(attr):',$(':checkbox').attr('checked'));//undefined
		console.log('checkbox의 checked속성(prop):',$(':checkbox').prop('checked'));//false
		console.log('a의 href속성(attr):',$('#atag').attr('href'));//#
		console.log('a의 href속성(prop):',$('#atag').prop('href'));//http://localhost:8080/JQueryProj/core/Attr.jsp#
		//속성추가버튼 클릭하지 않고 테스트
		console.log('div의 class속성(attr):',$('#div').attr('class'));//undefined
		console.log('div의 class속성(prop):',$('#div').prop('class'));//빈문자열
		
		console.log('div의 id속성(attr):',$('#div').attr('id'));//"div"
		console.log('div의 id속성(prop):',$('#div').prop('id'));//"div"
		//위의 속성추가 클릭후 테스트	
		//$("선택자").get(0).class사용 불가 (class는 예약어)
		//고로 attr()함수나 prop()함수로 속성값을 읽어 온다
		console.log('div의 class속성(get(0).class):',$('#div').get(0).class);//undefined
		
	});
	$('#remove').click(function(){
		$('#div').removeAttr('class').removeAttr('style');
		//$('#div').removeProp('class').removeProp('style');//제거 안됨
		
	});
	
	$('button:gt(2)').click(function(){
		$('img').attr('src','<c:url value="/images/'+this.id+'.jpg"/>');	
	});
	//href속성이 없는 a태그의 href속성 읽어 오기
	$('a:eq(0)').click(function(){
		console.log('표기하지 않는 속성.href(attr):',$(this).attr('href'));//undefined
		console.log('표기하지 않는 속성.href(prop):',$(this).prop('href'));//빈문자열
		console.log('표기하지 않는 속성.href(get):',$(this).get(0).href);//빈문자열
		//this 는 $(this).get(0)와 같다
		console.log('표기하지 않는 속성.href(get):',this.href);//빈문자열
	});
	//value속성이 없는 type=text의 값 읽어오기:val()로 읽는게 유리하다
	$('#button').click(function(){
		console.log('attr():',$(':text').attr('value'));//undefined
		console.log('prop():',$(':text').prop('value'));//빈문자열
		console.log('val():',$(':text').val());//빈문자열
	});
	//동적으로 체크박스 체크하기
	$('#chkbtn').click(function(){
		if($(':checkbox').prop('checked'))
			$(':checkbox').prop('checked',false);
		else
			$(':checkbox').prop('checked',true);
	});
});
</script>
<style>
	.bg{
		background-color: green
	}
</style>
</head>
<body>
	<fieldset>
		<legend >attr()함수 및 removeAttr(),prop()함수</legend>
		<button id="add">속성추가</button>
		<button id="read">속성읽기</button>
		<button id="remove">속성제거</button>
		<div id="div" >DIV태그</div>
		
		<button id="1">1번 이미지</button>
		<button id="2">2번 이미지</button>
		<button id="3">3번 이미지</button>
		<button id="4">4번 이미지</button>
		<br /> 
		<img src="#" alt="이미지" /><br /> 
		<a>href속성을 미 지정한 A태그</a><br />
		<input type="text"	size="30" />
		<input value="확인" type="button" id="button" /> 
		
		<hr />
		<input type='checkbox' />체크박스 
		<a href="#" id="atag">A태그</a> 
		<input type="button" id="chkbtn" value="attr및 prop으로 체크 설정하기" />
	</fieldset>
</body>
</html>