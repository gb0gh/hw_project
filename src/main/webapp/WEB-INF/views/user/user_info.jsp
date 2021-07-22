<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>user_info</title>
<%@ include file="header.jsp"%>

<style>
.write_form{
  display: flex;
  justify-content: center;
  }
</style>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.js"></script>
<script>
$(function(){
	$("#back").click(function(){
		location.href= "#";
			//"${pageContext.request.contextPath}/main";
	});
});
</script>
</head>
<body>
	<div class="row write_form">
	<div class="card border-primary mb-3" style="max-width: 20rem;">
		<div class="card-body">
			<form name="loginform" action="${pageContext.request.contextPath}/# method="POST">
                <fieldset>
                  <div class="form-group row">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1" class="form-label mt-4">ID</label>
                    <input type="email" class="form-control" id="id" name="id" placeholder="Enter ID" required>
                    <small id="emailHelp" class="form-text text-muted">아이디 틀렷다</small>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1" class="form-label mt-4">Password</label>
                    <input type="password" name="pass" class="form-control" id="pass" placeholder="Password" required>
                    <small id="emailHelp" class="form-text text-muted">비번 틀렷다</small>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1" class="form-label mt-4">가입일</label>
                    <input type="radio" name="sex" class="form-control" value="남">
                    <input type="radio" name="sex" class="form-control" value="여">
                    <small id="emailHelp" class="form-text text-muted">비번 틀렷다</small>
                  </div>
           
                  
                  <button type="submit" class="btn btn-primary">submit</button>
                  <button type="button" id="back" class="btn btn-warning">back</button>
                </fieldset>
              </form>
		</div>
	</div>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>
