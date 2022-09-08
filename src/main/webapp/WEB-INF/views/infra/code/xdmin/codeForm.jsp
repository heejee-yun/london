<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>CodeForm</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    	<link rel="shortcut icon" href="D:\factory\ws_sts_4151\seoul\image\logo2\logo_16px.png">
  		<!-- 위에 <link 부분 없으면  Bootstrap  부분 적용 불가함. Favicon 적용 방법 다시 찾기  -->
	</head>
	<body> <!-- ######## 개인 프로젝트 회원관리 페이지 만드는데, 검색, 삭제 후가 가능하게 구현하기 / 모달 넣기 ######## -->
		<div class="container"> 
			<div class="Navbar">
				<nav class="navbar navbar-expand-lg" style="background-color: #F6E58D;">
					<a class="navbar-brand" href="#"><img src="/resources/images/logo_nobg.png" width="200px"></a>
				</nav>
			</div>
			<!--## Tap이 있는 부분 ## -->
			<H3>CodeForm</H3>
			<div class="tap">
				<ul class="nav nav-tabs">
					<li class="nav-link active">
						<a class="nav-link" aria-current="page" href="D:\factory\ws_sts_4151\seoul\public\toDoIt\dmin\codegroup.html">코드그룹관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="D:\factory\ws_sts_4151\seoul\public\toDoIt\dmin\code.html">코드관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">회원관리</a>
					</li>
				</ul>
				<!-- <img src="D:\factory\ws_sts_4151\seoul\image\handsForAdmin.png" style="width: 100%"> -->
			</div>
			<!-- ## 검색 블록 ## -->
			<form method ="post" action ="/code/codeInst">
				<div style="margin: 30px 100px 50px 100px; border: solid 1px; padding: 20px 20px 20px 20px;">
					<table class="table table-striped table-hover">
						<tr>
							<td>seq</td>
							<td><input type="text"class="form-control" name="ccg_seq" placeholder="입력하시오"></td>
						</tr>
						<tr>
							<td>코드표시순서</td>
							<td><input type="text" name="orderNy" class="form-control" placeholder="입력하시오"></td>
						</tr>
						<tr>
							<td>코드 이름(한글)</td>
							<td><input type="text" name="codename" class="form-control" placeholder="입력하시오"></td>
						</tr>
						<tr>
							<td>삭제여부</td>
							<td><input type="text" name="" class="form-control" placeholder="자동입력됩니다(N 디폴트)"></td>
						</tr>
					</table>
				</div>
			<div class="col-3">
				<button class="btn btn-warning" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
				<button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
					<i class="fa-solid fa-rotate-left"></i>
				</button>
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="exampleModal" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">취소</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								정말 취소하시겠습니까? 
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">돌아가기</button>
       							<button type="button" class="btn btn-primary">취소</button>
							</div>
						</div>
					</div>			
				</div>
			</div>
				<!-- ## 테이블 코드 ##  -->

			<div style="float: left;">
				<button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
					<i class="fa-solid fa-rotate-left">취소</i>
				</button>
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">취소</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
							취소되었습니다. 아래 '뒤로가기' 버튼을 눌러주세요.
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">뒤로가기</button>
							</div>
						</div>
					</div>
				</div>
				<button class="btn btn-danger" type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
					<i class="fa-solid fa-trash-can">삭제</i>
				</button>
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">삭제</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
							삭제되었습니다. 아래 '뒤로가기' 버튼을 눌러주세요.
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">뒤로가기</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div style="float: right;">
				<a href="/code/codeForm"> <!-- 등록버튼 -->
					<button class="btn btn-success me-md-2" type="button"><i class="fa-solid fa-clipboard-list"></i></button>
				</a>
					<button class="btn btn-primary" type="submit"><i class="fa-solid fa-plus"></i></button>
			</div>
		</form>	
		</div>	
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    	<script src="https://kit.fontawesome.com/e29f2fca9d.js" crossorigin="anonymous"></script>
    	    	<script type="text/javascript">
    		function test(){
    			
    			alert("입력해주셔서 감사합니다");
    			
    			alert(document.getElementById('name').value);
    			
    			alert(document.getElementById('telecom').options[document.getElementById('telecom').selectedIndex].value);
    			alert(document.querySelector("input[name='happy']:checked").value);;
    			alert(document.querySelector("input[name='gender']:checked").value);;

    			if(document.getElementById("name").value == '' || document.getElementById("name").value == null){
    				alert("입력해주세요...");
    				document.getElementById("name").value= "";
    				document.getElementById("name").focus();
    			
    			return false;
    			}
    		}
    	</script>
	</body>
</html>