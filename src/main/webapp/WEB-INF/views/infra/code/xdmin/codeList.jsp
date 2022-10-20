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
		<title>Member list</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    	<link rel="shortcut icon" href="D:\factory\ws_sts_4151\seoul\image\logo2\logo_16px.png">
  		<style type="text/css">
/*   			th {
  				container-fluid d-grid col-6 mx-auto
  			} */
  		</style>
	</head>
	<body> <!-- ######## 개인 프로젝트 회원관리 페이지 만드는데, 검색, 삭제 후가 가능하게 구현하기 / 모달 넣기 ######## -->
		<div class="container"> 
			<div class="container-fluid d-grid col-6 mx-auto">
				<div class="Navbar">
					<nav class="navbar navbar-expand-lg">
						<a class="navbar-brand" href="" style="margin-left: 150px"><img src="D:\factory\ws_sts_4151\seoul\image\logo2\logo_nobg.png" width="200px"></a>
						<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarNav" style="margin-left: 50px">
							<ul class="navbar-nav">
								<li class="nav-item">
									<a class="nav-link active" aria-current="page" href="#">홈</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">To do list</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">성취</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">팀</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">응원댓글</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">마이페이지</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">회원가입</a>
								</li>
							</ul>
						</div>
						<button type="button" class="btn btn-outline-warning" style="align-content: flex-end; margin-right: 150px;">로그인</button>
					</nav>
				</div>
				<center><h2>회원가입</h2></center>
				<hr>
				<table>
					<tr>
						<th>아이디</th>
						<td><input type="text" class="form-control" placeholder="6자 이상의 영문 혹은 영문과 숫자를 조합"></td>
						<td><button type="button" class="btn btn-outline-secondary">중복확인</button></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<input type="text" class="form-control" placeholder="비밀번호를 입력해주세요">
						</td>
						<td></td>
					</tr>
					<tr>
						<th>비밀번호확인</th>
						<td>
							<input type="text" class="form-control" placeholder="비밀번호를 한번 더 입력해주세요">
						</td>
						<td></td>
					</tr>
					<tr>
						<th>이름</th>
						<td>
							<input type="text" class="form-control" placeholder="이름을 입력해주세요">
						</td>
						<td></td>
					</tr>
					<tr>
						<th>연락처</th>
						<td>
							<input type="text" class="form-control" placeholder="연락처를 입력해주세요">
						</td>
						<td></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="text" class="form-control" placeholder="이메일을 입력해주세요"></td>
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
					<tr>
						<td>

		<!-- 주소 넣는 부분 s -->
							<div class="row gy-2">
								<div class="col-4">
									<input type="text" name="zip" class="form-control" id="zip" aria-label="post">
								</div>
								<div class="col-2">
									<button type="button" class="btn btn-secondary" onclick="sample6_execDaumPostcode()"> 우편번호 검색 </button>
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
		<!-- 주소 넣는 부분 e -->

						</td>
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
						<td>
							<div class="row gy-2">
								<div class="col-4">
									<input type="text" name="zip" class="form-control" id="validationCustom01" aria-label="post">
								</div>
								<div class="col-2">
									<button type="button" class="btn btn-secondary" onclick="openZipSearch()"> 우편번호 검색 </button>
								</div>
								<br>
								<div>
									<input type="text" name="addr1" class="form-control" id="validationCustom01" aria-label="addr">
								</div>
								<div>
									<input type="text" name="addr2" class="form-control" id="validationCustom01" aria-label="addr2">
								</div>
							</div>
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
					<tr center>
						<td colspan="2">
							<center>
								<button type="button" class="btn btn-warning">가입하기</button>
								<button type="button" class="btn btn-outline-dark">뒤로가기</button>
							</center>
						</td>
					</tr>
				</table>
			</div>
		</div>
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    	<script src="https://kit.fontawesome.com/e29f2fca9d.js" crossorigin="anonymous"></script>
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
    	<script type="text/javascript">
    	  $('.birth_day input').focus(function(){
    		    $(this).parent().addClass('on');
    		  }).keyup(function(){
    		    var inputText = $(this).val();
    		    var number = $(this).val().replace(/[^0-9]/g,'');
    		    $(this).val(number);
    		  }).blur(function(){
    		  });
    	  </script>
    		function openZipSearch() {
		    new daum.Postcode({
		          oncomplete: function(data) {
		              $('[name=zip]').val(data.zonecode); // 우편번호 (5자리)
		              $('[name=addr1]').val(data.address);
		              $('[name=addr2]').val(data.buildingName);
		          }
		    }).open();
		} 
    	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	</body>
</html>
