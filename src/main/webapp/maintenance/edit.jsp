<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String dataid = request.getParameter("dataid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	var path = "<%=path%>";
	var basePath = "<%=basePath%>";
	var dataid = "<%=dataid%>";
</script>
<script type="text/javascript" src="<%=basePath%>static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>static/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript" src="<%=basePath%>static/easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/easyui/themes/default/easyui.css">

<link rel="stylesheet" type="text/css" href="./css/edit.css">
<title>Insert title here</title>
</head>
<body style="width:100%;height:100%;" border="1px" margin="0px" padding="0px">
	<form id="ff" method="post" style="line-height: 59px; " enctype="multipart/form-data" target="dummyiframe">
	 	<div class="kuang">
            <div class="titlestyle">用户名: </div>
            <div  class="valuesstyle">
                <input  class="easyui-validatebox"  data-options="required:true" type="text" id="uname" name="uname" placeholder="用户名"/>
            </div>
        </div>
        <div class="kuang">
            <div class="titlestyle">密码: </div>
            <div  class="valuesstyle">
                <input  class="easyui-validatebox"  data-options="required:true" type="text" id="upassword" name="upassword" placeholder="密码"/>
            </div>
        </div>
        <div class="kuang">
            <div class="titlestyle">用户名称: </div>
            <div  class="valuesstyle">
                <input  class="easyui-validatebox"  data-options="required:true" type="text" id="username" name="username" placeholder="用户名称"/>
            </div>
        </div>
    </form>
  
    <div style="text-align:center;padding:5px 0;clear:both">
        <a href="javascript:void(0)" class="easyui-linkbutton" id="submitForm" onclick="submitForm()" style="width:80px">提交</a>
    </div>
</body>
<script type="text/javascript" src="<%=basePath%>/maintenance/js/edit.js"></script>
</html>