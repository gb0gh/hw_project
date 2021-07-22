<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>login</title>
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
	$("#pass").keyup(function() {
		$.ajax({
			url : "${pageContext.request.contextPath}/idcheck",
			type : "POST",
			data : {
				id : $("#id").val(),
				pass : $("#pass").val()
			},
			success : function(result) {
				console.log(result);
				if (result != 1) {
					$("#pass_check").text("아이디나 비밀번호가 맞지 않습니다.");
					$("#login").attr("disabled","disabled");
				} else {
					$("#pass_check").text("");
					$("#login").removeAttr("disabled");
				}
			},
		})
	});
});


</script>

<%@ include file="header.jsp"%>
</head>
<body>
	<div class="row write_form">
	<div class="card text-white border-primary mb-3" style="max-width: 20rem;">
		<div class="card-header">로그인</div>
		<div class="card-body">
			<form name="loginform" action="${pageContext.request.contextPath}/login_pro" method="POST">
                <fieldset>
                  <div class="form-group">
                    <label for="exampleInputEmail1" class="form-label mt-4">ID</label>
                    <input type="text" class="form-control" id="id" name="id" placeholder="Enter ID" required>
                    <small id="id_check" class="form-text text-muted"></small>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1" class="form-label mt-4">Password</label>
                    <input type="password" name="pass" class="form-control" id="pass" placeholder="Password" required>
                    <small id="pass_check" class="form-text text-muted"></small>
                  </div>
                  <!--  
                  <button class="btn btn-danger" onclick="history.back">back</button>
                  -->
                  
                  <button type="submit" class="btn btn-primary">login</button>
                  <button type="button" id="join" class="btn btn-warning" onclick="location.href='${pageContext.request.contextPath}/join'">join us</button>
                </fieldset>
              </form>
		</div>
	</div>
	</div>
</body>
<%@ include file="footer.jsp"%>
</html>
