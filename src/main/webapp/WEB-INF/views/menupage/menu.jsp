<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	/* String username = request.getParameter("username");
	String uuidndex = request.getParameter("uuidndex"); */

%>
<html>
<head>
<meta charset="utf-8">
<title>质保书系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<script>
	var path = '<%=path%>';
	var basePath = '<%=basePath%>';
<%-- 	var username =  '<%=username%> ';
	var uuidindex =  '<%=uuidndex%> '; 
	
		var deusername = Base64.decode(username);
	var deuuidindex = Base64.decode(uuidindex);--%>
	var username = '${username}';
	var uuidindex = '${uuidindex}';

</script>
<link rel="stylesheet" href="<%=basePath%>static/layui/css/layui.css"/>
<link rel="stylesheet" href="<%=basePath%>static/css/layer.css"/>
<link rel="shortcut icon" type="image/x-icon" href="<%=basePath%>static/img/favicon.ico" media="screen" />
<link rel="stylesheet" href="<%=basePath%>static/menupage/css/index.css"/>
<script type="text/javascript" src="<%=basePath%>static/js/jquery-1.8.2.min.js"></script>
<script src="<%=basePath%>static/js/base64.js"></script>
<script type="text/javascript" src="<%=basePath%>static/layui/layui.js"></script>
<script type="text/javascript" src="<%=basePath%>static/js/layer.js"></script>
<script type="text/javascript" src="<%=basePath%>static/menupage/js/index.js"></script>
</head>
	<body>
		<!-- class="layui-layout-body" -->
		<!-- <div class="layui-layout layui-layout-admin"> -->
		  <div class="top">
		  	<div class="top_left_one">
		  		
		  	</div>
		  	<div class="top_left_two">
		  		质保书系统
		  	</div>
		  	<div class="top_right_one">
		  		<div class="login_pic" onclick="changepassword()">
		  			<img alt="" width="25px" height="25px" src="<%=basePath%>static/menupage/img/login_user.png">
		  		</div>
		  		<div class="login_user">${username}</div>
		  		<div class="login_edit" onclick="changepassword()">
		  			<img alt="修改密码" width="20px" height="20px" src="<%=basePath%>static/menupage/img/changepassword.png">
		  		</div>
		  		<div class="login_quit" onclick="login_quit()">
		  			<img alt="退出登录" width="20px" height="20px" src="<%=basePath%>static/menupage/img/login_user_quit.png">
		  		</div>
		  		
		  	</div>
		  </div>
		  <div class="layui-side layui-bg-black">
		    <div class="layui-side-scroll">
		      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
		      <ul class="layui-nav layui-nav-tree" lay-shrink="all"   lay-filter="leftNav">
		        <li class="layui-nav-item layui-nav-itemed">
		          <a class="" href="javascript:;">菜单目录</a>
		          <dl class="layui-nav-child">
		            <dd class="layui-this"><a id="dianzda" href="javascript:;">质保书</a></dd>
		          </dl>
		        </li>
		      </ul>
		    </div>
		  </div>
		  
		  <div class="layui-body">
		    <!-- 内容主体区域 -->
		   
		  </div>
		  
		  
		 


	

	</body>
</html>
<script>
	//JavaScript代码区域
	var dizhi = location.host;
 	var bool = checkIsInsideIP(dizhi);
	$(function(){
		 $('.layui-body').empty();
		
		 if(bool ==true){
			 $('.layui-body').append('<iframe src="'+menuconfig["dianzda"].nwurl+Base64.encode(uuidindex)+'" style="width:100%;height:100%;" scrolling="auto" frameborder="0"></iframe>');
		 }else{
			 $('.layui-body').append('<iframe src="'+menuconfig["dianzda"].wwurl+Base64.encode(uuidindex)+'" style="width:100%;height:100%;" scrolling="auto" frameborder="0"></iframe>');
		 }
	})	
	
	layui.use(['element','jquery','layer'], function(){
	  var element = layui.element;
	  var $ = layui.$ //重点处
	  ,layer = layui.layer;
	  
	  element.on('nav(leftNav)', function(elem) {
		  
		  var id = elem.attr('id');
		 
		  if(id== undefined || id== null){
			  
		  }else{
			  $('.layui-body').empty();
			  if(bool ==true){
				 $('.layui-body').append('<iframe src="'+menuconfig[id].nwurl+Base64.encode(uuidindex)+'" style="width:100%;height:100%;" scrolling="auto" frameborder="0"></iframe>');
			  }else{
				 $('.layui-body').append('<iframe src="'+menuconfig[id].wwurl+Base64.encode(uuidindex)+'" style="width:100%;height:100%;" scrolling="auto" frameborder="0"></iframe>');
			  }
		  }
		 
	  });
	});
	
	
	

</script>