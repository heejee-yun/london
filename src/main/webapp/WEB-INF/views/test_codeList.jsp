<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>


<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>AdminHome</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    	<link rel="shortcut icon" href="D:\factory\ws_sts_4151\seoul\image\logo2\logo_16px.png">
  		<!-- 위에 <link 부분 없으면  Bootstrap  부분 적용 불가함. Favicon 적용 방법 다시 찾기  -->
  		
	</head>
	<body> <!-- ######## 개인 프로젝트 회원관리 페이지 만드는데, 검색, 삭제 후가 가능하게 구현하기 / 모달 넣기 ######## -->
		<form>
		<div class="container"> 
			<div class="Navbar">
				<nav class="navbar navbar-expand-lg" style="background-color: #F6E58D;">
					<a class="navbar-brand" href="#"><img src="/resources/images/logo_nobg.png" width="200px"></a>
				</nav>
			</div>
			<!--## Tap이 있는 부분 ## -->
			<H3>Code</H3>
			<div class="tap">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link" aria-current="page" href="D:\factory\ws_sts_4151\seoul\public\toDoIt\dmin\codegroup.html">코드그룹관리</a>
					</li>
					<li class="nav-link active">
						<a class="nav-link" href="D:\factory\ws_sts_4151\seoul\public\toDoIt\dmin\code.html">코드관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">회원관리</a>
					</li>
				</ul>
				<!-- <img src="D:\factory\ws_sts_4151\seoul\image\handsForAdmin.png" style="width: 100%"> -->
			</div>
			<!-- ## 검색 블록 ## -->
			<div style="margin: 30px 100px 50px 100px; border: solid 1px; padding: 20px 20px 20px 20px;">
				<div class="row" style="margin-bottom: 20px;">
					<select class="col form-select" style="margin-right: 10px;">
						<option selected>N</option>
						<option value="1">Y</option>
					</select>	
					<select class="col form-select">
						<option selected>선택</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>	
					<div class="col">
						<input type="text" class="form-control" placeholder="시작일">
					</div>   
					<div class="col">
						<input type="text" class="form-control" placeholder="종료일">
					</div>
				</div>
				<div class="row">
					<select class="col form-select" aria-label="option">
						<option selected>검색구분</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
					</select>	
					<div class="col-3" >
						<input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" style="float: left;">
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
				</div>
			</div>
				<!-- ## 테이블 코드 ##  -->
	    	<table class="table table-striped table-hover">
			  <thead class="table-dark"> 
			    <tr>
				  <th>
			 		<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
				  </th>
			      <th scope="col">#</th>
			      <th scope="col">코드그룹코드</th>
			      <th scope="col">코드그룹 이름(한글)</th>
			      <th scope="col">코드</th>
			      <th scope="col">대체코드</th>
			      <th scope="col">코드 이름(한글)</th>
			      <th scope="col">코드 이름(영문)</th>
			      <th scope="col">사용</th>
			      <th scope="col">순서</th>
			      <th scope="col">등록일</th>
			      <th scope="col">수정일</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>1</td>
			      <td>1</td>
			      <td>통신사</td>
			      <td>1</td>
			      <td></td>
			      <td>SKT</td>
			      <td>SKT</td>
			      <td>y</td>
			      <td>1</td>
			      <td></td>
			      <td></td>
			    </tr>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>2</td>
			      <td>1</td>
			      <td>통신사</td>
			      <td>2</td>
			      <td></td>
			      <td>KT</td>
			      <td>KT</td>
			      <td>y</td>
			      <td>2</td>
			      <td></td>
			      <td></td>
			    </tr>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>3</td>
			      <td>1</td>
			      <td>통신사</td>
			      <td>3</td>
			      <td></td>
			      <td>LGT</td>
			      <td>LGT</td>
			      <td>y</td>
			      <td>3</td>
			      <td></td>
			      <td></td>
			    </tr>
			   	<tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>4</td>
			      <td>2</td>
			      <td>이메일</td>
			      <td>4</td>
			      <td></td>
			      <td>지메일</td>
			      <td>@gmail.com</td>
			      <td>y</td>
			      <td>1</td>
			      <td></td>
			      <td></td>
			    </tr>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>5</td>
			      <td>2</td>
			      <td>이메일</td>
			      <td>5</td>
			      <td></td>
			      <td>네이버</td>
			      <td>@naver.com</td>
			      <td>y</td>
			      <td>2</td>
			      <td></td>
			      <td></td>
			    </tr>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>5</td>
			      <td>2</td>
			      <td>이메일</td>
			      <td>5</td>
			      <td></td>
			      <td>핫메일</td>
			      <td>@hotmail.com</td>
			      <td>y</td>
			      <td>3</td>
			      <td></td>
			      <td></td>
			    </tr>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>6</td>
			      <td>3</td>
			      <td>가입경로</td>
			      <td>6</td>
			      <td></td>
			      <td>네이버</td>
			      <td>naver</td>
			      <td>y</td>
			      <td>1</td>
			      <td></td>
			      <td></td>
			    </tr>
				<tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>7</td>
			      <td>3</td>
			      <td>가입경로</td>
			      <td>7</td>
			      <td></td>
			      <td>인스타</td>
			      <td>Instagram</td>
			      <td>y</td>
			      <td>2</td>
			      <td></td>
			      <td></td>
			    </tr>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>8</td>
			      <td>3</td>
			      <td>가입경로</td>
			      <td>8</td>
			      <td></td>
			      <td>페북</td>
			      <td>facebook</td>
			      <td>y</td>
			      <td>3</td>
			      <td></td>
			      <td></td>
			    </tr>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>9</td>
			      <td>3</td>
			      <td>가입경로</td>
			      <td>9</td>
			      <td></td>
			      <td>지인추천</td>
			      <td>acquaintance</td>
			      <td>y</td>
			      <td>4</td>
			      <td></td>
			      <td></td>
			    </tr>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>10</td>
			      <td>4</td>
			      <td>성별</td>
			      <td>10</td>
			      <td></td>
			      <td>여성</td>
			      <td>female</td>
			      <td>y</td>
			      <td>1</td>
			      <td></td>
			      <td></td>
			    </tr>
			    <tr>
			      <td>
			      	<div>
	 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
					</div>
			      </td>
			      <td>11</td>
			      <td>4</td>
			      <td>성별</td>
			      <td>11</td>
			      <td></td>
			      <td>남성</td>
			      <td>male</td>
			      <td>y</td>
			      <td>2</td>
			      <td></td>
			      <td></td>
			    </tr>
			  </tbody>
			</table>
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">1</a></li>
			    <li class="page-item"><a class="page-link" href="#">2</a></li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
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
				<a href="memberRegForm.html"> <!-- 등록버튼 -->
					<button class="btn btn-success me-md-2" type="button"><i class="fa-solid fa-clipboard-list"></i></button>
				</a>
				<button class="btn btn-primary" type="button" href="/memberRegForm.html"><i class="fa-solid fa-plus"></i></button>
			</div>
		</div>	
		</form>
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    	<script src="https://kit.fontawesome.com/e29f2fca9d.js" crossorigin="anonymous"></script>
	</body>
</html>