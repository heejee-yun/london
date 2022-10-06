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
		<title>ToDoIt</title>
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    	<link rel="shortcut icon" href="">
	</head>
	<body>
	<h1>
		To do it  
	</h1>
		<a href ="/code/home">
			<button class="btn btn-primary" id="btnUser" type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">사용자</button>
		</a>
		<a href="">
			<button class="btn btn-warning" id="btnAdmin" type="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">관리자</button>
		</a>
   	<script>
		var goUrlUser = "/code/codeList"; // 사용자 
		var goUrlAdmin = "/codeGroup/codeGroupInst"; // 관리자 

		$("#btnUser").on("click", function(){
			form.attr("action", goUrlUser).submit();
		});
		
		$("#btnAdmin").on("click", function(){
			form.attr("action", goUrlAdmin).submit();
		});
	</script>
    	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    	<script src="https://kit.fontawesome.com/e29f2fca9d.js" crossorigin="anonymous"></script>
	</body>
</html>