function save_part1(){
	var comment=document.getElementById("part1_content").value;
	if($("#getusername").text()==""){
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		if(comment==""){
			new $.zui.Messager('保存失败，请输入内容!', {
				time:'4000',
				icon: 'warning-sign',
				type: 'warning' ,
				// 定义颜色主题
				placement: 'center' // 定义显示位置
			}).show();
		}else{
			var data=
			{
					aPart1:document.getElementById("part1_content").value,
					cetType:$("#cet_no").text(),
					aUsername:$("#getusername").text()

			};
			$.ajax({
				type:'post',
				url:'http://localhost:8080/English_System/cet4/save_part1',
				data:JSON.stringify(data),
				contentType:'application/json;charset=utf-8',
				success:function(data){
					if(data.result=="success"){
						new $.zui.Messager('保存成功!', {
							time:'4000',
							icon: 'check',
							type: 'success' ,
							// 定义颜色主题
							placement: 'center' // 定义显示位置
						}).show();
					}else{
						new $.zui.Messager('保存失败!', {
							time:'4000',
							icon: 'times',
							type: 'danger' ,
							// 定义颜色主题
							placement: 'center' // 定义显示位置
						}).show();
					}
				}
			});
		}
	}
}


function save_part2(){
	if($("#getusername").text()==""){
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
//		var no1=$('input[name="optionsRadios1"]:checked').val();
		var data={
				answer1:$('input[name="optionsRadios1"]:checked').val(),
				answer2:$('input[name="optionsRadios2"]:checked').val(),
				answer3:$('input[name="optionsRadios3"]:checked').val(),
				answer4:$('input[name="optionsRadios4"]:checked').val(),
				answer5:$('input[name="optionsRadios5"]:checked').val(),
				answer6:$('input[name="optionsRadios6"]:checked').val(),
				answer7:$('input[name="optionsRadios7"]:checked').val(),
				answer8:$('input[name="optionsRadios8"]:checked').val(),
				answer9:$('input[name="optionsRadios9"]:checked').val(),
				answer10:$('input[name="optionsRadios10"]:checked').val(),
				answer11:$('input[name="optionsRadios11"]:checked').val(),
				answer12:$('input[name="optionsRadios12"]:checked').val(),
				answer13:$('input[name="optionsRadios13"]:checked').val(),
				answer14:$('input[name="optionsRadios14"]:checked').val(),
				answer15:$('input[name="optionsRadios15"]:checked').val(),
				answer16:$('input[name="optionsRadios16"]:checked').val(),
				answer17:$('input[name="optionsRadios17"]:checked').val(),
				answer18:$('input[name="optionsRadios18"]:checked').val(),
				answer19:$('input[name="optionsRadios19"]:checked').val(),
				answer20:$('input[name="optionsRadios20"]:checked').val(),
				answer21:$('input[name="optionsRadios21"]:checked').val(),
				answer22:$('input[name="optionsRadios22"]:checked').val(),
				answer23:$('input[name="optionsRadios23"]:checked').val(),
				answer24:$('input[name="optionsRadios24"]:checked').val(),
				answer25:$('input[name="optionsRadios25"]:checked').val(),
				aUsername:$("#getusername").text(),
				cetType:$("#cet_no").text()
		}
		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/cet4/save_part2',
			data:JSON.stringify(data),
			contentType:'application/json;charset=utf-8',
			success:function(data){
				if(data.result=="success"){
					new $.zui.Messager('保存成功!', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('保存失败!', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function save_part3(){
	if($("#getusername").text()==""){
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		var data={
				answer26:$('input[name="optionsRadios26"]:checked').val(),
				answer27:$('input[name="optionsRadios27"]:checked').val(),
				answer28:$('input[name="optionsRadios28"]:checked').val(),
				answer29:$('input[name="optionsRadios29"]:checked').val(),
				answer30:$('input[name="optionsRadios30"]:checked').val(),
				answer31:$('input[name="optionsRadios31"]:checked').val(),
				answer32:$('input[name="optionsRadios32"]:checked').val(),
				answer33:$('input[name="optionsRadios33"]:checked').val(),
				answer34:$('input[name="optionsRadios34"]:checked').val(),
				answer35:$('input[name="optionsRadios35"]:checked').val(),
				answer36:$('input[name="optionsRadios36"]:checked').val(),
				answer37:$('input[name="optionsRadios37"]:checked').val(),
				answer38:$('input[name="optionsRadios38"]:checked').val(),
				answer39:$('input[name="optionsRadios39"]:checked').val(),
				answer40:$('input[name="optionsRadios40"]:checked').val(),
				answer41:$('input[name="optionsRadios41"]:checked').val(),
				answer42:$('input[name="optionsRadios42"]:checked').val(),
				answer43:$('input[name="optionsRadios43"]:checked').val(),
				answer44:$('input[name="optionsRadios44"]:checked').val(),
				answer45:$('input[name="optionsRadios45"]:checked').val(),
				answer46:$('input[name="optionsRadios46"]:checked').val(),
				answer47:$('input[name="optionsRadios47"]:checked').val(),
				answer48:$('input[name="optionsRadios48"]:checked').val(),
				answer49:$('input[name="optionsRadios49"]:checked').val(),
				answer51:$('input[name="optionsRadios51"]:checked').val(),
				answer52:$('input[name="optionsRadios52"]:checked').val(),
				answer53:$('input[name="optionsRadios53"]:checked').val(),
				answer54:$('input[name="optionsRadios54"]:checked').val(),
				answer50:$('input[name="optionsRadios50"]:checked').val(),
				answer55:$('input[name="optionsRadios55"]:checked').val(),
				aUsername:$("#getusername").text(),
				cetType:$("#cet_no").text()
		}
		alert($('input[name="optionsRadios44"]:checked').val());
		alert($('input[name="optionsRadios35"]:checked').val());

		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/cet4/save_part3',
			data:JSON.stringify(data),
			contentType:'application/json;charset=utf-8',
			success:function(data){
				if(data.result=="success"){
					new $.zui.Messager('保存成功!', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('保存失败!', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function save_part4(){
	var comment=document.getElementById("part4_content").value;
	if($("#getusername").text()==""){
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		if(comment==""){
			new $.zui.Messager('保存失败，请输入内容!', {
				time:'4000',
				icon: 'warning-sign',
				type: 'warning' ,
				// 定义颜色主题
				placement: 'center' // 定义显示位置
			}).show();
		}else{
			var data=
			{
					aPart4:document.getElementById("part4_content").value,
					cetType:$("#cet_no").text(),
					aUsername:$("#getusername").text()

			};
			$.ajax({
				type:'post',
				url:'http://localhost:8080/English_System/cet4/save_part4',
				data:JSON.stringify(data),
				contentType:'application/json;charset=utf-8',
				success:function(data){
					if(data.result=="success"){
						new $.zui.Messager('保存成功!', {
							time:'4000',
							icon: 'check',
							type: 'success' ,
							// 定义颜色主题
							placement: 'center' // 定义显示位置
						}).show();
					}else{
						new $.zui.Messager('保存失败!', {
							time:'4000',
							icon: 'times',
							type: 'danger' ,
							// 定义颜色主题
							placement: 'center' // 定义显示位置
						}).show();
					}
				}
			});
		}
	}
}

function load_process(){
	var username=$("#getusername").text()
	var data={aUsername:username};
	if(username==""){
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		var data={
				cetType:$("#cet_no").text(),
				aUsername:$("#getusername").text()};
		$.ajax({
			contentType:'application/json;charset=utf-8',
			type:'post',
			data:JSON.stringify(data),
			url:'http://localhost:8080/English_System/cet4/load_process',
			success:function(data){
				if(data.result=="failure"){
					new $.zui.Messager('对不起，查找不到相关的进度信息!', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();

				}else{
					if(data.result.aPart1!=""){
						document.getElementById("part1_content").value=data.result.aPart1;
					}
					if(data.result.aPart4!=""){
						document.getElementById("part4_content").value=data.result.aPart4;
					}
					if(data.result.answer1!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios1']").get(i).value==data.result.answer1){
								$("input[type='radio'][name='optionsRadios1']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer2!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios2']").get(i).value==data.result.answer2){
								$("input[type='radio'][name='optionsRadios2']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer3!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios3']").get(i).value==data.result.answer3){
								$("input[type='radio'][name='optionsRadios3']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer4!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios4']").get(i).value==data.result.answer4){
								$("input[type='radio'][name='optionsRadios4']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer5!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios5']").get(i).value==data.result.answer5){
								$("input[type='radio'][name='optionsRadios5']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer6!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios6']").get(i).value==data.result.answer6){
								$("input[type='radio'][name='optionsRadios6']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer7!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios7']").get(i).value==data.result.answer7){
								$("input[type='radio'][name='optionsRadios7']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer8!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios8']").get(i).value==data.result.answer8){
								$("input[type='radio'][name='optionsRadios8']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer9!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios9']").get(i).value==data.result.answer9){
								$("input[type='radio'][name='optionsRadios9']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer10!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios10']").get(i).value==data.result.answer10){
								$("input[type='radio'][name='optionsRadios10']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer11!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios11']").get(i).value==data.result.answer11){
								$("input[type='radio'][name='optionsRadios11']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer12!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios12']").get(i).value==data.result.answer12){
								$("input[type='radio'][name='optionsRadios12']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer13!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios13']").get(i).value==data.result.answer13){
								$("input[type='radio'][name='optionsRadios13']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer14!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios14']").get(i).value==data.result.answer14){
								$("input[type='radio'][name='optionsRadios14']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer15!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios15']").get(i).value==data.result.answer15){
								$("input[type='radio'][name='optionsRadios15']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer16!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios16']").get(i).value==data.result.answer16){
								$("input[type='radio'][name='optionsRadios16']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer17!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios17']").get(i).value==data.result.answer17){
								$("input[type='radio'][name='optionsRadios17']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer18!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios18']").get(i).value==data.result.answer18){
								$("input[type='radio'][name='optionsRadios18']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer19!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios19']").get(i).value==data.result.answer19){
								$("input[type='radio'][name='optionsRadios19']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer20!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios20']").get(i).value==data.result.answer20){
								$("input[type='radio'][name='optionsRadios20']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer21!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios21']").get(i).value==data.result.answer21){
								$("input[type='radio'][name='optionsRadios21']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer22!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios22']").get(i).value==data.result.answer22){
								$("input[type='radio'][name='optionsRadios22']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer23!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios23']").get(i).value==data.result.answer23){
								$("input[type='radio'][name='optionsRadios23']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer24!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios24']").get(i).value==data.result.answer24){
								$("input[type='radio'][name='optionsRadios24']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer25!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios25']").get(i).value==data.result.answer25){
								$("input[type='radio'][name='optionsRadios25']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer46!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios46']").get(i).value==data.result.answer46){
								$("input[type='radio'][name='optionsRadios46']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer47!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios47']").get(i).value==data.result.answer47){
								$("input[type='radio'][name='optionsRadios47']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer48!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios48']").get(i).value==data.result.answer48){
								$("input[type='radio'][name='optionsRadios48']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer49!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios49']").get(i).value==data.result.answer49){
								$("input[type='radio'][name='optionsRadios49']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer50!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios50']").get(i).value==data.result.answer50){
								$("input[type='radio'][name='optionsRadios50']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer51!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios51']").get(i).value==data.result.answer51){
								$("input[type='radio'][name='optionsRadios51']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer52!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios52']").get(i).value==data.result.answer52){
								$("input[type='radio'][name='optionsRadios52']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer53!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios53']").get(i).value==data.result.answer53){
								$("input[type='radio'][name='optionsRadios53']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer54!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios54']").get(i).value==data.result.answer54){
								$("input[type='radio'][name='optionsRadios54']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer55!=""){
						for(var i=0;i<4;i++){
							if($("input[type='radio'][name='optionsRadios55']").get(i).value==data.result.answer55){
								$("input[type='radio'][name='optionsRadios55']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer26!=""){
						for(var i=0;i<15;i++){
//							alert($("input[type='radio'][name='optionsRadios26']").get(i).value);
							if($("input[type='radio'][name='optionsRadios26']").get(i).value==data.result.answer26){
								$("input[type='radio'][name='optionsRadios26']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer27!=""){
						for(var i=0;i<15;i++){
							if($("input[type='radio'][name='optionsRadios27']").get(i).value==data.result.answer27){
								$("input[type='radio'][name='optionsRadios27']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer28!=""){
						for(var i=0;i<15;i++){
							if($("input[type='radio'][name='optionsRadios28']").get(i).value==data.result.answer28){
								$("input[type='radio'][name='optionsRadios28']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer29!=""){
						for(var i=0;i<15;i++){
							if($("input[type='radio'][name='optionsRadios29']").get(i).value==data.result.answer29){
								$("input[type='radio'][name='optionsRadios29']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer30!=""){
						for(var i=0;i<15;i++){
							if($("input[type='radio'][name='optionsRadios30']").get(i).value==data.result.answer30){
								$("input[type='radio'][name='optionsRadios30']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer31!=""){
						for(var i=0;i<15;i++){
							if($("input[type='radio'][name='optionsRadios31']").get(i).value==data.result.answer31){
								$("input[type='radio'][name='optionsRadios31']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer32!=""){
						for(var i=0;i<15;i++){
							if($("input[type='radio'][name='optionsRadios32']").get(i).value==data.result.answer32){
								$("input[type='radio'][name='optionsRadios32']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer33!=""){
						for(var i=0;i<15;i++){
							if($("input[type='radio'][name='optionsRadios33']").get(i).value==data.result.answer33){
								$("input[type='radio'][name='optionsRadios33']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer34!=""){
						for(var i=0;i<15;i++){
							if($("input[type='radio'][name='optionsRadios34']").get(i).value==data.result.answer34){
								$("input[type='radio'][name='optionsRadios34']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer35!=""){
						for(var i=0;i<15;i++){
							if($("input[type='radio'][name='optionsRadios35']").get(i).value==data.result.answer35){
								$("input[type='radio'][name='optionsRadios35']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer36!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios36']").get(i).value==data.result.answer36){
								$("input[type='radio'][name='optionsRadios36']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer37!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios37']").get(i).value==data.result.answer37){
								$("input[type='radio'][name='optionsRadios37']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer39!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios39']").get(i).value==data.result.answer39){
								$("input[type='radio'][name='optionsRadios39']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer38!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios38']").get(i).value==data.result.answer38){
								$("input[type='radio'][name='optionsRadios38']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer40!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios40']").get(i).value==data.result.answer40){
								$("input[type='radio'][name='optionsRadios40']").get(i).checked = true;
							}
						}
					}
					if(data.result.answer41!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios41']").get(i).value==data.result.answer41){
								$("input[type='radio'][name='optionsRadios41']").get(i).checked = true;
							}
						}
					}

					if(data.result.answer42!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios42']").get(i).value==data.result.answer42){
								$("input[type='radio'][name='optionsRadios42']").get(i).checked = true;
							}
						}
					}

					if(data.result.answer43!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios43']").get(i).value==data.result.answer43){
								$("input[type='radio'][name='optionsRadios43']").get(i).checked = true;
							}
						}
					}

					if(data.result.answer44!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios44']").get(i).value==data.result.answer44){
								$("input[type='radio'][name='optionsRadios44']").get(i).checked = true;
							}
						}
					}

					if(data.result.answer45!=""){
						for(var i=0;i<14;i++){
							if($("input[type='radio'][name='optionsRadios45']").get(i).value==data.result.answer45){
								$("input[type='radio'][name='optionsRadios45']").get(i).checked = true;

							}
						}
					}
					new $.zui.Messager('加载成功!', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}
			}
		});
	}
}
var hour=2;
var min=5;
var second=0;
function time(){
	var str_sec=second;
	var str_min=min;
	var str_hour=hour;
	if(hour!=0||min!=0||second!=0){
		if(str_sec<10){
			str_sec = "0" + second;
		}
		if(str_hour<10){
			str_hour = "0" + hour;
		}
		if(str_min<10){
			str_min="0"+min;
		}
		$("#show_time").text(str_hour + ":" + str_min + ":" + str_sec);
		second--;
		if(second==0){
			second=59;
			min--;
		}
		if(min==0){
			min=59;
			hour--;
		}
	}
}


function settime (year,month,day,hour)
{

	var end = new Date (year, month, day,hour);
	var now = new Date ();

	var m = Math.round ((end - now) / 1000);
	var day = parseInt (m / 24 / 3600);
	var hours = parseInt ((m % (3600 * 24)) / 3600);
	var minutes = parseInt ((m % 3600) / 60);
	var seconds = m % 60;

	if (m < 0)
	{
		$("#show_time").text(00+":"+00+":"+00);
		return;
	}
	$("#show_time").text(hours + ":" + minutes + ":" + seconds);
	setTimeout ('settime()', 1000);
}
function show_time(){
	var get_current_date=new Date();
	var current_month=get_current_date.getMonth();
	alert(current_month);
	var current_day=get_current_date.getDay();
	var current_hours=get_current_date.getHours()+2;
//	settime(2017,current_month,current_day,current_hours);
	setInterval(function(){settime(2017,current_month,current_day,current_hours)},1000);
}