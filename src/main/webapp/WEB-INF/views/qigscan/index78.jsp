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
              <!-- form: -->
              <section>
                  <div class="col-lg-8 col-lg-offset-2">
                     <div class="page-header">
                         <h2>制度流程反馈</h2>
                     </div>
  
                     <form id="defaultForm" method="post" class="form-horizontal" action="#">
                         <div class="form-group">
                             <label class="col-lg-3 control-label">Full name</label>
                             <div class="col-lg-4">
                                 <input type="text" class="form-control" name="firstName" placeholder="First name" />
                             </div>
                              <div class="col-lg-4">
                                 <input type="text" class="form-control" name="lastName" placeholder="Last name" />
                              </div>
                          </div>
  
                         <div class="form-group">
                             <label class="col-lg-3 control-label">Username</label>
                             <div class="col-lg-5">
                                 <input type="text" class="form-control" name="username" />
                             </div>
                         </div>
  
                         <div class="form-group">
                              <label class="col-lg-3 control-label">Email address</label>
                             <div class="col-lg-5">
                                  <input type="text" class="form-control" name="email" />
                             </div>
                         </div>
 					</form>
 				</div>
 				</section>
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
