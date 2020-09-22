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
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<script>
	var path = '<%=path%>';
	var basePath = '<%=basePath%>';
</script>
	<link rel="stylesheet" href="<%=basePath%>static/login/css/login.css"/>
	<link rel="stylesheet" href="<%=basePath%>static/login/css/reset.css"/>
	<link rel="stylesheet" href="<%=basePath%>static/login/css/supersized.css"/>
	<link rel="stylesheet" href="<%=basePath%>static/login/css/style.css"/>
	<link rel="stylesheet" href="<%=basePath%>static/login/css/layer.css"/>
</head>
<!-- pattern="^[a-zA-Z]\w{5,17}$"  -->
<body style="background:url(<%=basePath%>static/img/loginbackground.png) no-repeat;background-size:100% 100%;background-attachment: fixed;" onkeydown="on_return();">

	<div class="login_kuang">
		<div border="0" width="300px" height="400px"   style="background: url(<%=basePath%>static/img/bg_login.png) repeat;background-color:#fff;overflow:hidden;border:2px solid #F0FFFF">
		   <div style="width:100%;height:10px"></div>
		   <div class="topimage">
				<img style="width:65px;height:65px;" src="<%=basePath%>static/img/peoplePic.png">
		   </div>
		   <div style="width:100%;height:10px"></div>
				   <form id="formsub" action="/information/user/checklogin.do" method="post">
					   <div class="accountsquare">
							<div class='accountsquare_left'  placeholder='请输入账户'>
								<input type="text" id="uname" name="uname" class="uname"
										placeholder="请输入用户名"  required="required"/>
							</div>
					   </div>
					   <div style="width:100%;height:10px"></div>
					   <div class="passwordsquare">
					   		<div class='passwordsquare_left'  placeholder='请输入密码'>
					   			<input type="password" id="upassword" name="upassword" class="upassword"
									pattern="^[a-zA-Z]\w{5,17}$" required="required"  title="字母开头，长度在6~18之间，只能包含字母、数字和下划线"  placeholder="请输入密码""/>
					   		</div>
					   </div>
				   </form>
			   <div style="width:100%;height:40px"></div>
	
			   <div class="loginbutton">
			   		<!-- <input type="button" value="登        录" onclick="login()" class="loginbutton_button" > -->
			   		<button class="daanniu" id="daanniu" onclick="loginCheck()"  >登录</button>
			   </div>
			  <%--  <div id="login-error" style="color: #F00">${model.error}</div> --%>
		   <div style="width:100%;height:40px"></div>
		</div>
	</div>

	<!-- Javascript -->
	<script src="<%=basePath%>static/js/jquery-1.8.2.min.js"></script>
	<script src="<%=basePath%>static/js/base64.js"></script>
	<script src="<%=basePath%>static/js/layer.js"></script>
	<script src="<%=basePath%>static/login/js/scripts.js"></script>
	<%-- <script src="<%=basePath%>static/js/supersized.3.2.7.min.js"></script>
	<script src="<%=basePath%>static/js/scripts.js"></script> --%>

</body>

</html>


