
	$(function(){
		
		$('#qigscan_form').bootstrapValidator({
			'message': '无效',
			feedbackIcons: {
				valid: 'glyphicon glyphicon-ok',
				invalid: 'glyphicon glyphicon-remove',
				validating: 'glyphicon glyphicon-refresh'
			},
			'fields': {
				flowName: {
					validators: {
						notEmpty: {
							message: '流程名称不能为空'
						}
					}
				},
				rulesName: {
					validators: {
						notEmpty: {
							message: '制度名称不能为空'
						}
					}
				}
			}
		});
		
		

		$("#depart_fu").change(function(){
			var opt=$("#depart_fu").val();
			init_sonselect(opt);
		});

		$('textarea').on('input propertychange', function(){
			var _length = $(this).val().length;
			$('#word').html(_length);
		});
		
		 $('#resetBtn').click(function() {
		     $('#qigscan_form').data('bootstrapValidator').resetForm(true);
		 });
		empty_input();
		
		init_fuselect();
	})
	
	
	function empty_input(){
		
		$('#rulesName').empty();
		$('#flowName').empty();
		$('#adviseYij').empty();
		$('#submitPerson').empty();
		$('#telePhone').empty();
	}

	function init_fuselect(){
		$.ajax({
			type: 'POST',
			url: basePath+"/qig/departmentfu",
			dataType: "json",
			success: function(res){
				$("#depart_fu").empty();
				var templateHtml = "<option value='{optValue}'>{optText}</option>";
				res.forEach((item,index) => {
					$("#depart_fu").append(templateHtml.replace(/{optValue}/g,item.id)
													   .replace(/{optText}/g,item.departName));
				});
				$("#depart_fu :first").trigger("change");
			}
		});
	}


	function init_sonselect(optFu){
		debugger;
		var objFu = document.getElementById("depart_fu");
		var fuNumber = objFu.options[objFu.selectedIndex].value;
		console.log(fuNumber);

		$.ajax({
			type: 'POST',
			url: basePath+"/qig/departmentson",
			data:{fuNumber:fuNumber},
			dataType: "json",
			success: function(res){
				debugger
				$("#depart_son").empty();
				if(res.length>0){
					var templateHtml = "<option value='{optValue}' >{optText}</option>";
					res.forEach((item,index) => {
						$("#depart_son").append(templateHtml.replace(/{optValue}/g,item.id)
							.replace(/{optText}/g,item.departName));

					});
					$("#depart_son option:first").prop("selected",'selected');
				}else{
					var templateHtml = "<option value='-1'></option>";
					$("#depart_son").append(templateHtml);
				}


			}
		});
	}


	function countChar(textareaName,spanName){
		if($(textareaName).value.length<=500){
			$(spanName).innerHTML = 500 - $(textareaName).length;
		}else{
			alert('不能在写喽~');
		}
	}

	function submitForm(){
	
		/*var flag = 0;
		if($('#rulesName').val().length <=0 || /^\s+$/.test($('#rulesName').val())){
			flag =1;
			
			
			
		}
		
		if($('#flowName').val().length <=0 || /^\s+$/.test($('#rulesName').val())){
			flag =1;
	
			
		}
		
		
		if(flag == 0){
			tijiao();
		}
		*/
	   var bootstrapValidator = $("#qigscan_form").data('bootstrapValidator');
	   bootstrapValidator.validate();
	   if(bootstrapValidator.isValid())
		   tijiao();
	   else return;
	

	}
	
	
	function tijiao(){
		var obj = new Object();
		obj.depart_ment = $('#depart_fu').val();
		obj.depart_ment_son = $('#depart_son').val();
		obj.depart_ment_fu_name = $("#depart_fu").find("option:selected").text();
		obj.depart_ment_son_name = $("#depart_son").find("option:selected").text();
		obj.rules_name = $('#rulesName').val();
		obj.flow_name = $('#flowName').val();
		obj.advise_yij = $('#adviseYij').val();
		obj.submit_person = $('#submitPerson').val();
		obj.tele_phone = $('#telePhone').val();

		debugger;
		var base64Data = window.Base64.encode(JSON.stringify(obj));
		debugger
		$.ajax({
			type: 'POST',
			url: basePath + "/qig/insertData",
			data:{base64Data:base64Data},
			dataType: "json",
			success: function (res) {
				debugger;
				if(res.code == 200){
					window.location.href = basePath+"/qigscan/success"
				}else{
					window.location.href = basePath+"/qigscan/error"
				}
			}
		})
	}
	