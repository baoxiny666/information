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
		var path = '<%=path%>';
		var basePath = '<%=basePath%>';
	</script>
	<script type="text/javascript" src="<%=basePath%>static/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/js/bootstrap.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/js/bootstrapValidator.min.js"></script>
	<link rel="shortcut icon" type="image/x-icon" href="<%=basePath%>static/img/favicon.ico" media="screen" />
	<script src="<%=basePath%>static/js/base64_ie.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>static/qigscan/css/index.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>static/css/bootstrapValidator.min.css">
	<title>制度反馈系统</title>
</head>
<body style="width:100%;height:100%;background-attachment: fixed; overflow-x: hidden; overflow-y: hidden;    margin: 0;" border="1px" margin="0px" padding="0px">
<div class="container">
	<h1>制度流程反馈</h1>
	<form class="form-horizontal" action="#" id="qigscan_form">
		 <div class="row">
		 		<div class="form-group col-xs-12 col-md-12">
		 			<div class="col-xs-4 col-md-4" >
						<label class="control-label" >所属部门</label>
					<div>
					<div  class="col-xs-4 col-md-4" >
						<select  class="form-group col-md-4 col-xs-4" id="depart_fu" οnchange="init_sonselect()">
						</select>
					</div>
					<div class="col-xs-4 col-md-4" >
						<select  class="form-group col-md-4 col-xs-4" id="depart_son">
						</select>
					</div>
		 		</div>
				
		</div>
		<div class="row">
			<div class="form-group col-xs-12">
				<label class="control-label col-md-2" for="rulesName">制度名称</label>
				<em style="color: red;">*</em>
				<div class="col-md-4">
					<input id="rulesName" name="rulesName" type="text" maxlength="50" class="form-control">
				</div>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label col-md-2" for="flowName">流程名称</label>
			<em style="color: red;">*</em>
			<div class="col-md-4">
				<input id="flowName" name="flowName" type="text" maxlength="50" class="form-control">
			</div>
		</div>

		<!-- 建议、意见 -->
		<div class="form-group">
			<label class="control-label col-md-2" for="adviseYij">建议、意见</label>
			<div class="col-md-4">
				<textarea class="form-control" id="adviseYij" name="adviseYij" rows="5" cols="20"  maxlength="500"></textarea>
				<div class="text-length"><span id="word">500</span>/<span>500</span></div>
			</div>
		</div>

		<!-- 提交人 -->
		<div class="form-group">
			<label class="control-label col-md-2" for="submitPerson">提交人</label>
			<div class="col-md-4" >
				<input id="submitPerson" name="submitPerson" type="text" maxlength="50"  class="form-control">
			</div>
		</div>
		<!-- 联系方式 -->
		<div class="form-group">
			<label class="control-label col-md-2"  for="submitPerson">联系方式</label>
			<div class="col-md-4" >
				<input id="telePhone" name="telePhone"  type="text" maxlength="50" class="form-control"/>
			</div>
		</div>
		<!-- 提交 -->
		<div>
			<div class="col-md-4  col-md-offset-2">
				<button class="btn btn-primary" type="submit" onclick="submitForm()">提交</button>
			</div>
		</div>

		<br>
	</form>
</div>
</body>
<script type="text/javascript" src="<%=basePath%>static/qigscan/js/index.js?v=34"></script>
</html>
