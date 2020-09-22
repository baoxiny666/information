<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	
	String uuidndex = request.getParameter("uuidndex");
%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%=basePath%>static/layui/css/layui.css"/>
<link rel="stylesheet" href="<%=basePath%>static/css/layer.css"/>
<script type="text/javascript" src="<%=basePath%>static/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>static/layui/layui.js"></script>
<script type="text/javascript" src="<%=basePath%>static/js/layer.js"></script>
<script>
	var path = '<%=path%>';
	var basePath = '<%=basePath%>';
	var uuidindex = '${uuidindex}';
</script>
<style type="text/css">
	.layui-form-item .layui-inline {
	    display: block;
	    margin-right: 16px !important;
	    margin-bottom: 20px !important;
	    margin-top: 22px !important;
	    clear: both;
	}
</style>
<title>修改密码</title>
</head>
<body>
	  <form class="layui-form" action="">
		  <div class="layui-form-item">
		  	<div class="layui-inline">
			    <label class="layui-form-label">输入密码</label>
			    <div class="layui-input-inline">
			      <input type="password" name="password"  required  lay-verify="required"  placeholder="输入密码"  autocomplete="off"  class="layui-input">
			    </div>
			 </div>
		  </div>
		  <div class="layui-form-item">
		  	<div class="layui-inline">
			    <label class="layui-form-label">确认密码</label>
			    <div class="layui-input-inline">
			      <input type="password"  required lay-verify="required|confirmPass" placeholder="再次输入密码" autocomplete="off" class="layui-input">
			    </div>
			 </div>
		  </div>

		  <div class="layui-form-item">
		    <div class="layui-input-block">
		      <button class="layui-btn" lay-submit lay-filter="formchangePass">立即提交</button>
		    </div>
		  </div>
	</form>
 

</body>
	<script>
		layui.use('form', function(){
		  var form = layui.form;
		  //监听提交
		  form.on('submit(formchangePass)', function(data){
		    layer.msg(JSON.stringify(data.field));
		    $.ajax({
		           type:"POST",
		           url:basePath+"user/changePassword.do",
		           dataType:'json',
		           data:{uuidindex:uuidindex,upassword:data.field.password},
		           success:function(msg){
		        	   window.location.href = basePath; 
		           }
		    });
		    return false;
		  });
		  

		  form.verify({
		    confirmPass:function(value){
		        if($('input[name=password]').val() !== value)
		            return '两次密码输入不一致！';
		    }
		  });
		});
	</script>
</html>