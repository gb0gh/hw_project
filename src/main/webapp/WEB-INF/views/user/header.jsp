<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<% response.setContentType("text/html"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://bootswatch.com/5/vapor/bootstrap.css">
<link rel="stylesheet"
	href="https://bootswatch.com/_vendor/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://bootswatch.com/_vendor/prismjs/themes/prism-okaidia.css">
<link rel="stylesheet"
	href="https://bootswatch.com/_assets/css/custom.min.css">
	
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<!-- Global Site Tag (gtag.js) - Google Analytics -->


<style>
.source-button{
	display: hidden;
}
</style>

	
<script>
</script>
</head>
<div class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
	<div class="container">
		<a href="./main" class="navbar-brand">게시판 테스트</a>
		
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		
		<c:if test="${empty id}">
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-md-auto">
				<li class="nav-item"><a id="login"
					rel="noopener" class="nav-link" href="login"
					data-target="#login">로그인</a></li>
			</ul>
		</div>
		</c:if>
		
		<c:if test="${!empty id && id != 'admin'}">
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-md-auto">
				<!-- 로그인시 개인정보수정으로 -->
				<li class="nav-item"><a target="_blank" rel="noopener"
					class="nav-link" href="#"><i class="user_info"></i> 개인정보수정</a></li>
				<li class="nav-item"><a id="login"
					rel="noopener" class="nav-link" href="logout" 
					data-target="#logout">로그아웃</a></li>
			</ul>
		</div>
		</c:if>
		
		<c:if test="${id == 'admin'}">
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-md-auto">
				<!-- 로그인시 개인정보수정으로 -->
				<li class="nav-item"><a target="_blank" rel="noopener"
					class="nav-link" href="#"><i class="user_info"></i>관리자</a></li>
				<li class="nav-item"><a id="login"
					rel="noopener" class="nav-link" href="logout" 
					data-target="#logout">로그아웃</a></li>
			</ul>
		</div>
		</c:if>
	</div>
</div>
