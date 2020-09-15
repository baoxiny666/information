<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en" class="no-js">
<head>
<meta charset="utf-8">
<title>用户登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS -->
<link rel="stylesheet" href="<%=basePath%>static/css/reset.css">
<link rel="stylesheet" href="<%=basePath%>static/css/supersized.css">
<link rel="stylesheet" href="<%=basePath%>static/css/style.css">

</head>
<!-- pattern="^[a-zA-Z]\w{5,17}$"  -->
<body>

	<div class="page-container">
		<h1>登录</h1>
		<form action="/information/user/checklogin.do" method="post">
			<input type="text" id="uname" name="uname" class="uname"
				placeholder="请输入用户名"  required="required">
			<input type="password" id="upassword" name="upassword" class="upassword"
			pattern="^[a-zA-Z]\w{5,17}$" required="required"  title="字母开头，长度在6~18之间，只能包含字母、数字和下划线"  placeholder="请输入密码">
			<button type="submit">登录</button>
			<div id="login-error" style="color: #F00">${model.error}</div>
		</form>
	</div>

	<!-- Javascript -->
	<script src="<%=basePath%>static/js/jquery-1.8.2.min.js"></script>
	<script src="<%=basePath%>static/js/supersized.3.2.7.min.js"></script>
	<script src="<%=basePath%>static/js/scripts.js"></script>

</body>

</html>


