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
	<link rel="stylesheet" href="<%=basePath%>static/layui/css/layui.css"/>
	<link rel="stylesheet" href="<%=basePath%>static/css/layer.css"/>
	<script type="text/javascript" src="<%=basePath%>static/layui/layui.js"></script>
	<script type="text/javascript" src="<%=basePath%>static/js/layer.js"></script>
	<title>制度反馈系统</title>
</head>
<body style="width:100%;height:100%;background-attachment: fixed; overflow-x: hidden; overflow-y: hidden;    margin: 0;" border="1px" margin="0px" padding="0px">
<div class="container">
		<form class="form-horizontal" action="#" id="qigscan_form">
		  <div class="row">
              <!-- form: -->
              <section>
                  <div class="col-lg-8 col-lg-offset-2">
                     <div class="page-header">
                         <h2>制度流程反馈</h2>
                     </div>
  
                     <form  method="POST" id="qigscan_form" class="form-horizontal" action="#">
                        <div class="form-group" style="display:flex;flex-direction: row;align-content: center;">
                             <label class="col-lg-3 control-label">所属部门</label>
                             <div class="col-lg-5" style="margin-top:10px;height:30px;width:150px;">
                            	 <select  id="depart_fu" style="height:30px;width:150px;" class="col-md-5" οnchange="init_sonselect()">
								 </select>
                             </div>
                             &nbsp;
                             <div class="col-lg-5" style="margin-top:10px;height:30px;width:150px;">
                             	<select   class="col-md-5"  style="height:30px;width:150px;"  id="depart_son">
								 </select>
                             </div>
                         </div>
  
                         <div class="form-group">
                             <label class="col-lg-3 control-label">制度名称</label>
                             <div class="col-lg-5">
                                 <input id="rulesName" name="rulesName" type="text" maxlength="50" class="form-control">
                             </div>
                         </div>
  
                         <div class="form-group">
                             <label class="col-lg-3 control-label">流程名称</label>
                             <div class="col-lg-5">
                                  <input id="flowName" name="flowName" type="text" maxlength="50" class="form-control">
                             </div>
                         </div>
                         <div class="form-group">
                             <label class="col-lg-3 control-label">建议意见</label>
                             <div class="col-lg-5">
	                         	<textarea class="form-control" id="adviseYij" name="adviseYij" rows="5" cols="20"  maxlength="500"></textarea>
								<div class="text-length"><span id="word">500</span>/<span>500</span></div>
                         	 </div>
                         </div>
                         
                         <div class="form-group">
                             <label class="col-lg-3 control-label">提交人</label>
                             <div class="col-lg-5">
                                 <input id="submitPerson" name="submitPerson" type="text" maxlength="50"  class="form-control">
                             </div>
                         </div>
                         <div class="form-group">
                             <label class="col-lg-3 control-label">联系方式</label>
                             <div class="col-lg-5">
                                <input id="telePhone" name="telePhone"  type="text" maxlength="50" class="form-control"/>
                             </div>
                         </div>
                         
                         <!-- 提交 -->
                         <div class="form-group">
                            <div class="col-lg-9 col-lg-offset-3">
                                <button class="btn btn-primary"  onclick="submitForm()">提交</button>
                              
                                <button type="button" class="btn btn-info" id="resetBtn">重置</button>
                           </div>
                      	 </div>
						
 					</form>
 				</div>
 			</section>
 		</div>
	</form>
</div>
</body>
<script type="text/javascript" src="<%=basePath%>static/qigscan/js/index.js?v=34"></script>
</html>
