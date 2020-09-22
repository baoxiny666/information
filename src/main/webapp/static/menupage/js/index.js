	 var menuconfig = {
		 				"dianzda":{
		 							"wwurl":"http://www.tglh.net/qa/paper.php?clientid=",
		 							"nwurl":"http://www.tg/qa/paper.php?clientid="
		 				}
				 
	 }
	 
	 function login_quit(){
		 var str = "确定注销当前登录用户吗？"
		 layer.confirm(str, {btn: ['确定', '取消'], title: "提示"}, function () {
			 $.ajax({
		           type:"POST",
		           url:basePath+"user/quitlogin.do",
		           dataType:'json',
		           success:function(msg){
		        	   window.location.href = basePath;  
		           }
		     });
		 });
	}
	 
	 
	 
	 //检测是否为内部IP
	 var checkIsInsideIP = function(dizhi){
	     var address = dizhi.split(':');
	     var ipAddress = address[0];
	     if (ipAddress == "127.0.0.1" || ipAddress == "localhost")
	     {
	         return true;
	     }
	
	     var aryIpAddress = ipAddress.split('.');
	
	     if (aryIpAddress[0] == "10") {
	         return true;
	     }
	     return false;
	 }
