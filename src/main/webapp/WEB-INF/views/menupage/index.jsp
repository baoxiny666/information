<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	var path = "<%=path%>";
	var basePath = "<%=basePath%>";
</script>
<script type="text/javascript" src="<%=basePath%>static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>static/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>static/easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="./css/index.css">
<script type="text/javascript" src="<%=basePath%>/maintenance/js/index.js?v=54"></script>
<title></title>
</head>
	<body style="width:100%;height:100%;margin:0px;padding:0px">
		
	
	</body>
</html>