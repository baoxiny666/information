	
	
	// var formid='';
	/*var programme_model_time = {"field":"{fieldname}","title":"{title}","width":"120","align":"center","formatter":timeformat};
	
	var programme_model_state = {"field":"{fieldname}","title":"{title}","width":"120","align":"center","formatter":State};*/
	

	var config = {
							"userconfig":[
									{"field":"ck","checkbox":"true"},
									{field:"rank",title:"序号",width:50,align:"center"},
									{field:"uuidindex",title:"uuid序列",width:80,align:"center",hidden:"true"},
									{field:"uname",title:"用户名",width:150,align:"center"},
									{field:"upassword",title:"密码",width:150,align:"center"},
									{field:"username",title:"用户名称",width:140,align:"center"},
									{field:"tianbsj",title:"填报时间",width:150,align:"center","formatter":timeformat}
									
								]
	};
	/*字段列 数组*/
	var column_shuzu = new Array();

	$(function(){
		
		anniu_view_no();
		
		onload_colunmn();
		
	})


	function anniu_view_no(){
		$("#ttt").empty();

		/*yongh = " and F_TIANBR ='"+username+"'";
		qiy = " and F_TIANBDW='"+enterid+"'";*/
		$("#ttt").append('<div  class="xin_add_button"    onclick="javascript:doAdd()"><div class="xin_button_font">增加</div></div>'+  
						 '<div  class="xin_edit_button"    onclick="javascript:doEdit()"><div class="xin_button_font">修改</div></div>'+  
						 '<div  class="xin_del_button"    onclick="javascript:doDelete()"><div class="xin_button_font">删除</div></div>');


		

		
		refreash();

	}

	function refreash(){
		try {
			var targetObj = $("#ttt");
			$.parser.parse(targetObj);
		} catch (e) {

		}
	}


	function search_column_isneed(formid){
//		$.ajax({
//			url:basePath+"/form/selectFieldsById_isNeed.do",
//			type:"POST",
//		    data:{"formid":formid},
//		    async: true,
//		    dataType: 'json',
//		    success: function(data) {
		    	/*var isneed_search = "";
		    	for(var i=0;i<data.length;i++){
		    		if(i==0){
		    			isneed_search=isneed_search+" and ((lower("+data[i].f_columnname+") like '%${search}%') or ";
		    		}else if(i>0 && i<data.length-1){
		    			isneed_search=isneed_search+" (lower("+data[i].f_columnname+") like '%${search}%') or ";
		    		}else{
		    			isneed_search=isneed_search+" (lower("+data[i].f_columnname+") like '%${search}%'))";
		    		}
		    		
		    	}*/
//		    	var co = [];
//		    	for(var i=0;i<data.length;i++){
//		    		if(i==0){
//		    			co.push(data[i].f_columnname);
//		    		}else if(i>0 && i<data.length-1){
//		    			isneed_search=isneed_search+" (lower("+data[i].f_columnname+") like '%${search}%') or ";
//		    		}else{
//		    			isneed_search=isneed_search+" (lower("+data[i].f_columnname+") like '%${search}%'))";
//		    		}
//		    	}
//		    	condition = isneed_search;
//
//		    	    	
//		    }
//		})
	}


	

	function onload_colunmn(){
	    debugger;
		$("#tt").datagrid({		
			url:basePath+"/user/userList.do",
			title:"",
		    columns:[config["userconfig"]],
		    nowrap:false,
		    pagination:true,
		    rownumbers:false,
		    onBeforeLoad:beforeLoad,
		    pageSize:20,   //表格中每页显示的行数
		    pageList:[20,50,100],
		    loadMsg:"数据正在努力加载，请稍后...",  
		    singleSelect:false,
			onLoadSuccess:function(data) {
				
				$("#tt").datagrid("clearChecked");
				
				
	            
			},onDblClickRow :function(index,row){
				

            }

        })
		/*fenyStyle();*/
		
	}

	
	/*增加功能*/
	function doAdd(){
		var addurl = basePath+"/maintenance/add.jsp";
		showMessageDialog_add(addurl);
	}

	function doAddwindowClose(){
		try {
			$("#addWindow").window("close");
		} catch (e) {

		}
		
	}

	


	function doEditwindowClose(){
		try {
			$("#editWindow").window("close");
		} catch (e) {

		}
		
	}


	function doAuditwindowClose(){
		try {
			$("#auditWindow").window("close");
		} catch (e) {

		}
		
	}

	function doAdvicewindowClose(){
		try {
			$("#adviceWindow").window("close");
		} catch (e) {

		}
		
	}
	

	/*修改功能*/
	function doEdit(){
		debugger;
    	var rows = $('#tt').datagrid('getChecked');
    	if(rows.length <= 0){
    		$.messager.alert("提示信息",'请选择一条数据编辑！','info');
    	}else if(rows.length >1){
    		$.messager.alert("提示信息","请选择一条数据编辑！",'info');
    	}else {
    		var editurl = basePath+"/maintenance/edit.jsp?dataid="+rows[0].uuidindex;
			showMessageDialog_edit(editurl);
    		
    	}
	

	}



	/*删除功能*/
	function doDelete(){
		 /*文件信息删除*/
     	
    	  var rows = $('#tt').datagrid('getChecked');
    	  if(rows.length <= 0){
    		  $.messager.alert("提示信息","请选中要删除的数据！",'info')
    	  }else{
    		  $.messager.confirm("提示信息","您确定要删除吗？",function(a){
    			  if(a){
    			  	
    				  var ids = new Array();
    				  for(var i = 0;i<rows.length;i++){
    					  ids.push(rows[i].uuidindex);
    				  }
    				 
    				  var dataids = ids.join("&");
    				  var obj = {"dataids":dataids};
    				  var dats=JSON.stringify(obj);

    				  console.log(dataids);
    				  $.ajax({
							url:basePath+"/user/userDel.do",
							type:"POST",
						    data:dats,
						    async: true,
						    contentType:"application/json;charset=utf-8",
						    dataType: 'json',
						    success: function(data) {
						    	console.log("删除成功");
						    	reloadData();
						    }
					  })
    			  }
    		  });
    	  }
      
	}

	


	/*时间处理*/
	function timeformat(value) {
		if(value == null){
			return "---";
		}else{
			var date = new Date(value.time);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
	        var Y = date.getFullYear() + '-';
	        var M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
	        var D = (date.getDate()< 10 ?('0'+date.getDate()):date.getDate())+" ";
	        var h = (date.getHours()< 10 ?('0'+date.getHours()):date.getHours()) + ':';
	        var m = (date.getMinutes()< 10 ?('0'+date.getMinutes()):date.getMinutes()) + ':';
	        var s = (date.getSeconds()< 10 ?('0'+date.getSeconds()):date.getSeconds());
	        if(h=="00:" && m=="00:" && s=="00"){
	        	 return Y+M+D;
	        }else{
				return Y+M+D+h+m+s;
	        }
	        
		}
		
     

    }

	function reloadData() {
		try {
			$("#tt").datagrid("reload");
			
		} catch (e) {

		}
	}
	function beforeLoad(param) {
		
	}


	
	function getMyDate(value){  
	    if(value == null){
			return "---";
		}else{
			var date = new Date(value.time);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
	        var Y = date.getFullYear() + '-';
	        var M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
	        var D = (date.getDate()< 10 ?('0'+date.getDate()):date.getDate());
	        
				return Y+M+D;
	        
	        
		}
	}; 


	

