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
<%-- <script type="text/javascript" src="<%=basePath%>static/js/jquery-1.8.2.min.js"></script> --%>
<script type="text/javascript" src="<%=basePath%>static/easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>static/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript" src="<%=basePath%>static/easyui/locale/easyui-lang-zh_CN.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/easyui/themes/default/easyui.css">

<link rel="stylesheet" type="text/css" href="./css/index.css">
<script type="text/javascript" src="<%=basePath%>/maintenance/js/index.js?v=54"></script>

<title></title>
</head>
<body style="width:100%;height:100%;background-attachment: fixed; overflow-x: hidden; overflow-y: hidden;    margin: 0;" border="1px" margin="0px" padding="0px">
	

	<div style="width:100%;height:100%" id="tablesize">	
	     <table  id="tt" title="" class="easyui-datagrid"  style="display:none;" iconCls="icon-list"  toolbar="#tb"  pageList="[50,100,200,300]" pagination="true" pageNumber="1"  rownumbers="true" striped="true" fit="true" idField="id"  nowrap="true" singleSelect="true">
				 
	     </table>
	</div>

    <div class="easyui-window" title="增加" id="addWindow" style="display:none;" closed="true">
		<div>
			<div class="datagrid-toolbar">
				<script type="text/javascript">
					function showMessageDialog_add(params){
						var content = '<iframe src="'+params+'" width="100%" height="100%"  frameborder="0"></iframe>';
						$("#addWindow").window({
							content:content,
					        title: "增加",
					        width: 1100,
					        modal: false,
					        closed: false,
					        height: 500,
					        inline:false,
					        onClose:function(){
					        	
									$(this).window("close");
								
					        }
					    });
						$("#addWindow").window("center");
					}
				</script>
			</div>
		</div>
	</div>	


	<div class="easyui-window" title="修改" id="editWindow" style="display:none;" closed="true">
		<div>
			<div class="datagrid-toolbar">
				<script type="text/javascript">
					function showMessageDialog_edit(params){
						var content = '<iframe src="'+params+'" width="100%" height="100%"  frameborder="0"></iframe>';
						$("#editWindow").window({
							content:content,
					        title: "修改",
					        width: 1100,
					        modal: false,
					        closed: false,
					        height: 500,
					        inline:false,
					        onClose:function(){
					        	
								$(this).window("close");
								
					        }
					    });
						$("#editWindow").window("center");
					}
				</script>
			</div>
		</div>
	</div>	
    <div id="tb" style="display:none;height:40px;"> 
		<div id="ttt" style="margin-top:5px;float:left;">
			
			
		</div>
	</div>  
</body>
</html>