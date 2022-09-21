
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.augfw.infra.modules.code.CodeServiceImpl"/>

<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>MemberForm</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    	<link rel="shortcut icon" href="D:\factory\ws_sts_4151\seoul\image\logo2\logo_16px.png">
  		<style type="text/css">
/*   			th {
  				container-fluid d-grid col-6 mx-auto
  			} */
  		</style>
	</head>
	<body>
		<div class="container"> 
			<div class="Navbar">
				<nav class="navbar navbar-expand-lg" style="background-color: #F6E58D;">
					<a class="navbar-brand" href="#"><img src="/resources/images/logo_nobg.png" width="200px"></a>
				</nav>
			</div>
			<!--## Tap이 있는 부분 ## -->
			<H3>MemberForm</H3>
			<div class="tap">
				<ul class="nav nav-tabs">
					<li class="nav-link active">
						<a class="nav-link" aria-current="page" href="D:\factory\ws_sts_4151\seoul\public\toDoIt\dmin\codeGroup.html">코드그룹관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="D:\factory\ws_sts_4151\seoul\public\toDoIt\dmin\code.html">코드관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">회원관리</a>
					</li>
				</ul>
	 			<!-- ######## 개인 프로젝트 회원관리 페이지 만드는데, 검색, 삭제 후가 가능하게 구현하기 / 모달 넣기 ######## -->
				<div style="margin: 30px 100px 50px 100px; border: solid 1px; padding: 20px 20px 20px 20px;">
					<form method ="post" name="form">
					<%@include file="memberVo.jsp" %>
						<table class="table table-striped table-hover">
							<tr>
								<th>아이디</th>
								<td><input type="text" name="id" class="form-control" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합" value="<c:out value="${item.id }"/>"></td>
								<td><button type="button" class="btn btn-outline-secondary">중복확인</button></td>
							</tr>
							<tr>
								<th>비밀번호</th>
								<td>
									<input type="text" name="pw" class="form-control" placeholder="비밀번호를 입력해주세요">
								</td>
								<td></td>
							</tr>
							<tr>
								<th>비밀번호확인</th>
								<td>
									<input type="text" name=""class="form-control" placeholder="비밀번호를 한번 더 입력해주세요">
								</td>
								<td></td>
							</tr>
							<tr>
								<th>이름</th>
								<td>
									<input type="text" name="name" class="form-control" placeholder="이름을 입력해주세요" value="<c:out value="${item.name }"/>">
								</td>
								<td></td>
							</tr>
							<tr>
								<th>연락처</th>
								<td>
									<input type="text" name="mobile" class="form-control" placeholder="연락처를 입력해주세요" value="<c:out value="${item.mobile }"/>">
								</td>
								<td></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="text" name="email" class="form-control" placeholder="이메일을 입력해주세요" value="<c:out value="${item.email }"/>"></td>
								<td><button type="button" class="btn btn-outline-secondary">중복확인</button></td>
							</tr>
							<tr>
								<th>성별</th>
								<td>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1">
											여성
										</label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
										<label class="form-check-label" for="flexRadioDefault1">
											남성
										</label>
									</div>
								</td>
								<td></td>
							</tr>
							<tr class="birth field_birth">
								<th>생년월일</th>
								<td>
									<div class="birth_day">
										<input type="text" name=birth_year id="birth_year" pattern="[0-9]*" value="" label="생년월일" size=4 maxlength=4 placeholder="YYYY">
										<span class="bar"></span>
										<input type="text" name=birth[] id="birth_month" pattern="[0-9]*" value="" label="생년월일" size=2 maxlength=2 placeholder="MM">
										<span class="bar"></span>
										<input type="text" name=birth[] id="birth_day" pattern="[0-9]*" value="" label="생년월일" size=2 maxlength=2 placeholder="DD">
									</div>
									<p class="txt_guide">
										<span class="txt bad"></span>
									</p>
								</td>
							</tr>
								<tr>
									<th>주소</th>
									<td>
									<!-- 주소 넣는 부분 s -->
										<div class="row gy-2">
											<div class="col-4">
												<input type="text" name="zip" class="form-control" id="zip" aria-label="post">
											</div>
											<div class="col-6">
												<button type="button" class="btn btn-secondary" onclick="sample6_execDaumPostcode()"> 주소검색 </button>
												<button class="btn btn-danger" type="button" id="clear">
													<i class="fa-solid fa-rotate-left"></i>
												</button>
											</div>
											<br>
											<div>
												<input type="text" name="addr1" class="form-control" id="addr1" aria-label="addr">
											</div>
											<div>
												<input type="text" name="addr2" class="form-control" id="addr2" aria-label="addr2">
											</div>
											<div>
												<input type="text" name="addr3" class="form-control" id="addr3" aria-label="addr2">
											</div>
											</div>
											</div>
										</div>
									<!-- 주소 넣는 부분 e -->
									</td>
								</tr>
							<tr>
								<th>가입경로</th>
								<td>
									<select class="form-select" aria-label="Default select example">
										<option selected>경로를 선택해주세요</option>
										<option value="1">네이버</option>
										<option value="2">인스타그램</option>
										<option value="3">트위터</option>
										<option value="4">페이스북</option>
										<option value="5">지인</option>
									</select>
								</td>
								<td></td>
							</tr>
							<br>
							<br>
							<tr>
								<th>다짐</th>
								<td colspan="2">
									<input type="text" class="form-control" placeholder="다짐을 입력해주세요"><hr>
								</td>
							</tr>
						</table>
					</div>
				</form>
				<center>
					<button type="button" id="btnSave" class="btn btn-warning"><i class="fa-solid fa-plus">추가</i></button>
					<button type="button" id="btnList"class="btn btn-outline-dark">뒤로가기</button>
				</center>
			</div>
		</div>
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    	<script src="https://kit.fontawesome.com/e29f2fca9d.js" crossorigin="anonymous"></script>
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
    	<script type="text/javascript">
    	var goUrlList = "/member/memberList"; 			/* #-> */
    	var goUrlInst = "/member/memberInst"; 			/* #-> */
    	var goUrlUpdt = "/member/memberUpdt";				/* #-> */
    	var goUrlUele = "/member/memberUele";				/* #-> */
    	var goUrlDele = "/member/memberDele";				/* #-> */
    	
    	var seq = $("input:hidden[name=seq]");				/* #-> */
    	
    	var form = $("form[name=form]");
    	var formVo = $("form[name=formVo]");
    	
    	$("#btnSave").on("click", function(){
    		if (seq.val() == "0" || seq.val() == ""){
    	   		// insert
    	   		if (validationInst() == false) return false;
    	   		form.attr("action", goUrlInst).submit();
    	   	} else {
    	   		// update
    	   		/* keyName.val(atob(keyName.val())); */
    	   		if (validationUpdt() == false) return false;
    	   		form.attr("action", goUrlUpdt).submit();
    	   	}
    	}); 
    	
    	$("#btnList").on("click", function(){
    		formVo.attr("action", goUrlList).submit();
    	});
    	
    	  $('.birth_day input').focus(function(){
    		    $(this).parent().addClass('on');
    		  }).keyup(function(){
    		    var inputText = $(this).val();
    		    var number = $(this).val().replace(/[^0-9]/g,'');
    		    $(this).val(number);
    		  }).blur(function(){
    		  });
      	
  		function sample6_execDaumPostcode() {
  	        new daum.Postcode({
  	            oncomplete: function(data) {
  	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

  	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
  	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
  	                var addr = ''; // 주소 변수
  	                var extraAddr = ''; // 참고항목 변수

  	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
  	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
  	                    addr = data.roadAddress;
  	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
  	                    addr = data.jibunAddress;
  	                }

  	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
  	                if(data.userSelectedType === 'R'){
  	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
  	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
  	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
  	                        extraAddr += data.bname;
  	                    }
  	                    // 건물명이 있고, 공동주택일 경우 추가한다.
  	                    if(data.buildingName !== '' && data.apartment === 'Y'){
  	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
  	                    }
  	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
  	                    if(extraAddr !== ''){
  	                        extraAddr = ' (' + extraAddr + ')';
  	                    }
  	                    // 조합된 참고항목을 해당 필드에 넣는다.
  	                    document.getElementById("addr3").value = extraAddr;
  	                
  	                } else {
  	                    document.getElementById("addr3").value = '';
  	                }

  	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
  	                document.getElementById('zip').value = data.zonecode;
  	                document.getElementById("addr1").value = addr;
  	                // 커서를 상세주소 필드로 이동한다.
  	                document.getElementById("addr2").focus();
  	            }
  	        }).open();
  	    };
  	    
    	  </script>
    	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	</body>
</html>