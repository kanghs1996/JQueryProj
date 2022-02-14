<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vlaidate.jsp</title>

<style>
	.error{
		margin-left:5px;
		color:red;
	}
</style>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.6.0.min.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 제이쿼리 유효성 검증용 플러그인 -->
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
<script>
	$(function() {
		/*
		※$(폼 선택자).validate({rules:{},messages:{}});
		rules규칙:
			-필수 입력 혹은 필수 선택(체크박스/라디오/선택상자)
			하위요소명 : "required"
			혹은
			2개 이상  규칙 적용시
			required:true
			
			-최소 몇자 이상 혹은 몇개 이상 선택
			minlength:최소수		
		*/
		//1]input type="submit"버튼 일때
		$('#frm').validate({
			rules:{//유효성 규칙 설정
				name:"required",
				id:{required:true,minlength:3,maxlength:5},
				pwd:{required:true,minlength:5},
				pwd2:{required:true,minlength:5,equalTo:'#pwd'},
				email:{required: true,email:true},
				inter:{required:true,minlength:2},
				gender:"required",
				sel:"required",
				file:"required",
				self:"required"
				
			},
			messages:{//유효성 규칙에 벗어날때 표시할 에러 메시지 설정
				name:"이름을 입력하세요",
				id:{required:"아이디를 입력하세요",minlength:'아이디는 3자 이상',maxlength:'아이디는 5자 이하'},
				pwd:{required:"비밀번호를 입력하세요",minlength:'비밀번호는 5자 이상'},
				pwd2:{required:"비밀번호 확인을 입력하세요",minlength:'비밀번호 확인는 5자 이상',equalTo:'비밀번호가 일치하지 않아요'},
				email:{required:"이메일을 입력하세요",email:"이메일 형식이 아닙니다"},
				inter:{required:"관심사항을 선택하세요",minlength:"최소 2개 이상 선택하세요"},
				gender:"성별을 선택하세요",
				sel:"학력을 선택하세요",
				file:"파일을 첨부하세요",
				self:"자기소개를 입력하세요"
			}		
			
			
		});
		
		//2]input type="submit"버튼이 아닐때
		//Step1] $(폼객체 선택자).validate()적용
		//Step2] $(폼객체 선택자).valid()호출 
		//       true반환시 $(폼객체 선택자).submit()호출한다
		$(":button").click(function(){
			if($('#frm').valid()){
				$('#frm').submit();
			}
		});
		
	});
</script>
</head>
<body>
	<!-- https://jqueryvalidation.org/ -->
	<fieldset>
		<legend>제이쿼리의 플러그인을 사용한 유효성체크</legend>
		<span style="color: red; font-size: 1.8em"></span>
		<form method="post" action="http://www.nate.com" id="frm">

			이름:<input type="text" name="name" /><br /> <label for="id">아이디:</label>
			<input type="text" value="" name="id" id="id" /><br /> 비밀번호:<input
				type="password" name="pwd" id="pwd" /><br /> 비밀번호 확인:<input
				type="password" name="pwd2" /><br />
				이메일 : <input type="email" name="email"/><br/>
				 
				관심분야: <input type="checkbox"
				name="inter" value="A" id="pol" />정치 
				<input type="checkbox"
				name="inter" value="B" />경제 
				<input type="checkbox" name="inter"
				value="C" />스포츠
			<!--
	                  	체크박스나 라디오버튼은 에러 메시지가
	                                        첫번째 체크박스 나 첫번째 라디오버튼 다음에
	                                        표시됨.
	                    label태그를 이용해서 특정 위치(단,form태그안에서만)에
	                                        에러메시지를 뿌려 줄 수 있다.
	                      
	                    for속성:name 속성에 지정한 값
	                    class속성:반드시  "error" 문자열
	                   -->
				<label for="inter" class="error"></label> <br /> 성별: 남자<input
				type="radio" name="gender" value="man" /> 여자<input type="radio"
				name="gender" value="woman" /> <label for="gender" class="error"></label><br />

			<!-- 
	        	option태그의 value속성에 빈 문자열("")을
	        	설정하면 선택 하지 않은 것으로 간주한다.
	        
	         -->
			<select name="sel">
				<option value="">==학력을 선택하세요==</option>
				<option value="uni">대학교</option>
				<option value="high">고등학교</option>
				<option value="middle">중학교</option>
				<option value="ele">초등학교</option>
			</select><br /> <input type="file" name="file" /><br /> 자기소개<br />
			<textarea name="self" cols="50" rows="5"></textarea>
			<br /> 
			<input type="button" value="button타입" /> 
			<input type="submit" value="submit타입" /> 
			<input type="reset" value="취소" />


		</form>
	</fieldset>
</body>
</html>