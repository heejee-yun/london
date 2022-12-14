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
		<title>MemberList</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    	<link rel="shortcut icon" href="D:\factory\ws_sts_4151\seoul\image\logo2\logo_16px.png">
    	<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet" />
  		<!-- 위에 <link 부분 없으면  Bootstrap  부분 적용 불가함. Favicon 적용 방법 다시 찾기  -->
  		
	</head>
	<body> <!-- ######## 개인 프로젝트 회원관리 페이지 만드는데, 검색, 삭제 후가 가능하게 구현하기 / 모달 넣기 ######## -->
		<div class="container"> 
			<div class="Navbar">
				<nav class="navbar navbar-expand-lg" style="background-color: #F6E58D;">
					<a class="navbar-brand" href="#"></a>
				</nav>
			</div>
			<!--## Tap이 있는 부분 ## -->
			<form method ="post" action ="/member/memberList" name="formList"> <!-- action-> obj to move -->
			<input type="hidden" name="seq">
			<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			<input type="hidden" name="checkboxSeqArray">
			
			<H3>MemberList</H3>
			<div class="tap">
				<ul class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link" aria-current="page" href="D:\factory\ws_sts_4151\seoul\public\toDoIt\dmin\codegroup.html">코드그룹관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="D:\factory\ws_sts_4151\seoul\public\toDoIt\dmin\code.html">코드관리</a>
					</li>
					<li class="nav-link active">
						<a class="nav-link" href="D:\factory\ws_sts_4151\seoul\public\toDoIt\dmin\memberlist.html">회원관리</a>
					</li>
				</ul>
				<!-- <img src="D:\factory\ws_sts_4151\seoul\image\handsForAdmin.png" style="width: 100%"> -->
			</div>
			<!-- ## 검색 블록 ## -->
			<div style="margin: 30px 100px 50px 100px; border: solid 1px; padding: 20px 20px 20px 20px;">
				<div class="row" style="margin-bottom: 20px;">
					<select class="col-3 form-select" id="shDelNy" name="shDelNy" aria-label="option">
						<option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>삭제구분</option>
						<option value="0" <c:if test="${vo.shDelNy eq 0}"></c:if>>N</option>
						<option value="1" <c:if test="${vo.shDelNy eq 1}"></c:if>>Y</option>
					</select>	
						
					<select class="form-select" name="shOptionDate" id="name="shOptionDate">
						<option value="" <c:if test="${empty vo.shOptionDate}">selected</c:if>>::날짜::</option>
						<option value="1" <c:if test="${vo.shOptionDate eq 1}"></c:if>>생일</option>
						<option value="2" <c:if test="${vo.shOptionDate eq 2}"></c:if>>가입일</option>
						<option value="3" <c:if test="${vo.shOptionDate eq 3}"></c:if>>탈퇴일</option>
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
					<select class="col form-select" id="shOption" name="shOption" aria-label="option">
						<option value=""<c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
						<option value="1"<c:if test="${vo.shOption eq 1}">selected</c:if>>이름</option>
						<option value="2"<c:if test="${vo.shOption eq 2}">selected</c:if>>ID</option>
						<option value="3"<c:if test="${vo.shOption eq 3}">selected</c:if>>이메일</option>
						<option value="4"<c:if test="${vo.shOption eq 4}">selected</c:if>>모바일</option>
					</select>	
					<div class="col-3" >
						<input class="form-control me-2" id ="shValue" name="shVale" value="<c:out value="${vo.shValue}"/>"type="text" placeholder="Search" aria-label="Search" style="float: left;">
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
			      <th scope="col">이름</th>
			      <th scope="col">ID</th>
			      <th scope="col">모바일</th>
			      <th scope="col">이메일</th>
			      <th scope="col">생년월일</th>
			      <th scope="col">성별</th>
			      <th scope="col">레벨</th>
			      <th scope="col">가입경로</th>
			      <th scope="col">목표</th>
			      <th scope="col">가입일</th>
			      <th scope="col">탈퇴일</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('4')}"/> 
			  	<c:set var="listCodeSignupPath" value="${CodeServiceImpl.selectListCachedCode('3')}"/> <!-- 그룹 코드 시퀀스 -->
			  	<c:choose>
				  <c:when test="${fn:length(list) eq 0}">
				  	<td class ="text-center" colspan ="13"> 검색 값이 없습니다 </td>
				  </c:when>
				  <c:otherwise>
					  <c:forEach items="${list}" var="list" varStatus="status">
						    <tr>
						      <td>
						      	<div>
				 					<input class="form-check-input" type="checkbox" id="checkboxNoLabel" value="" aria-label="...">
								</div>
						      </td>
						      <td><c:out value="${list.seq }"/></td>
						      <td><a href="javascript:goForm(<c:out value="${list.seq}"/>)"><c:out value="${list.name }"/></a></td>
						      <td><c:out value="${list.id }"/></td>
						      <td><c:out value="${list.mobile }"/></td>
						      <td><c:out value="${list.email }"/></td>
						      <td><c:out value="${list.dob }"/></td>
						      <td><c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
								<c:if test="${list.gender eq listGender.orderNy}"><c:out value="${listGender.codename }"/></c:if>
								</c:forEach>
							  </td>
						      <td> 추 후 </td>
						      <td><c:forEach items="${listCodeSignupPath}" var="listSignupPath" varStatus="statusSignupPath">
								<c:if test="${list.signupPath eq listSignupPath.orderNy}"><c:out value="${listSignupPath.codename }"/></c:if>
								</c:forEach> </td>
						      <td><c:out value="${list.goal }"/></td>
						      <td><c:out value="${list.joinDate }"/></td>
						      <td><c:out value="${list.resignDate }"/></td>
						    </tr>
					    </c:forEach>
				   </c:otherwise>
				</c:choose>
			  </tbody>
			</table>
			<!-- 
			<nav aria-label="Page navigation example">
			  <ul class="pagination justify-content-center">
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Previous">
			        <span aria-hidden="true">&laquo;</span>
			      </a>
			    </li>
			    <li class="page-item"><a class="page-link" href="http://localhost:8080/member/memberList?pageNumber=1">1</a></li>
			    <li class="page-item"><a class="page-link" href="http://localhost:8080/member/memberList?pageNumber=2">2</a></li>
			    <li class="page-item"><a class="page-link" href="http://localhost:8080/member/memberList?pageNumber=3">3</a></li>
			    <li class="page-item">
			      <a class="page-link" href="#" aria-label="Next">
			        <span aria-hidden="true">&raquo;</span>
			      </a>
			    </li>
			  </ul>
			</nav>
			 -->
			<div class="container-fluid px-0 mt-2">
			    <div class="row">
			        <div class="col">
			            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
			            <ul class="pagination justify-content-center mb-0">
			                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
			<c:if test="${vo.startPage gt vo.pageNumToShow}">
			                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
			</c:if>
			<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
				<c:choose>
					<c:when test="${i.index eq vo.thisPage}">
			                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
					</c:when>
					<c:otherwise>             
			                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>                
			<c:if test="${vo.endPage ne vo.totalPages}">                
			                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
			</c:if>
			                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
			            </ul>
			        </div>
			    </div>
			</div>
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
				<button type="button" class="btn btn-danger btn-sm" name="" id="btnDelete"><i class="fa-solid fa-x">삭제</i></button>
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
				<a href="/member/memberForm">    <!-- 등록버튼 -->
					<button class="btn btn-success me-md-2" type="button"><i class="fa-solid fa-clipboard-list"></i></button>
				</a>
				<button class="btn btn-primary" type="button" href="/memberRegForm.html"><i class="fa-solid fa-plus"></i></button>
			</div>
		</form>
		</div>	
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    	<script src="https://kit.fontawesome.com/e29f2fca9d.js" crossorigin="anonymous"></script>
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				 $("input.shDate").datepicker();
			}); 
/* 		
			$.datepicker.setDefaults({
			    dateFormat: 'yy-mm-dd',
			    prevText: '이전 달',
			    nextText: '다음 달',
			    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
			    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
			    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
			    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
			    showMonthAfterYear: true,
			    yearSuffix: '년'
			});
			 */
			 	var goUrlDele = "/member/memberDele";
			 	var goUrlList = "/member/memberList";				// var: 변수 선언 예약어			/* #-> */
			 	/* 				var goUrlInst = "/member/memberInst"; 			/* #-> */
				var goUrlUpdt = "/member/memberUpdt";				/* #-> */
				var goUrlUele = "/member/memberUele";				/* #-> */
				var goUrlForm = "/member/memberForm";/* #-> */

				var form = $("form[name=form]");

				var seq = $("input:hidden[name=seq]");
				
				$('#btnForm').on("click", function() {
					goForm(0);                
				});

				$("#btnSearch").on("click", function(){
					form.attr("action", goUrlList).submit();
				});

				$("#btnReset").on("click", function(){
					$(location).attr("href", goUrlList);
				});
				
/* 				$("#btnDele").on("click", function(){
					$(location).attr("href", goUrlDele);
				}); */
				
				
				$("#btnDelete").on("click", function(){
					if($("input[name=checkboxSeq]:checked").length > 0 ) {
						$("input:hidden[name=exDeleteType]").val(2);
						$(".modal-title").text("확 인");
						$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
						$("#btnModalUelete").hide();
						$("#btnModalDelete").show();
						$("#modalConfirm").modal("show");
					} else {
						$(".modal-title").text("확 인");
						$(".modal-body").text("데이터를 선택해 주세요!");
						$("#modalAlert").modal("show");
					}
				});
				
				goForm = function(keyValue) {
			    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
			    	seq.val(keyValue);
			    	form.attr("action", goUrlForm).submit();
				}

			 	goList = function(thisPage){
					$("input:hidden[name=thisPage]").val(thisPage);
					form.attr("action", goUrlList).submit();
				}
			 	
			var form = $("form[name=formList]");
			goList = function(thisPage) {
				$("input:hidden[name=thisPage]").val(thisPage);
				form.attr("action", "/member/memberList").submit();
			}
		</script>
	</body>
</html>