function editAndsavepart1(){
	var aCetId=$("input[name='acetId']").val().trim();
	var acetIdValidate="success";
	var font=aCetId.substring(0,8);
	var parttern=/^[0-9]*$/;
	var back=aCetId.substring(9,acetId.length);
	if(aCetId.length==14||aCetId.length==13){
		if(font=="cet4_201"||font=="cet6_201"){
			if(parttern.test(aCetId.substring(8,9))){
				if(back=="_12_1"||back=="_12_2"||back=="_12_3"||back=="_6_1"||back=="_6_2"||back=="_6_3"){
					$("#acetIdinfo").html("");
					$("#acetId").removeClass("has-error");
					$("#acetId").addClass("has-success");
					acetIdValidate="success";
				}else{
					acetIdValidate="false";
					$("#acetIdinfo").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
					$("#acetId").addClass("has-error");
				}
			}else{
				acetIdValidate="false";
				$("#acetIdinfo").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
				$("#acetId").addClass("has-error");
			}
		}else{
			acetIdValidate="false";
			$("#acetIdinfo").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
			$("#acetId").addClass("has-error");
		}
	}else{
		$("#acetIdinfo").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
		$("#acetId").addClass("has-error");
		acetIdValidate="false";
	}
	if(acetIdValidate=="success"){
		var a1=$("input[name='a1']").val().trim();
		var a2=$("input[name='a2']").val().trim();
		var a3=$("input[name='a3']").val().trim();
		var a4=$("input[name='a4']").val().trim();
		var a5=$("input[name='a5']").val().trim();
		var a6=$("input[name='a6']").val().trim();
		var a7=$("input[name='a7']").val().trim();
		var a8=$("input[name='a8']").val().trim();
		var a9=$("input[name='a9']").val().trim();
		var a10=$("input[name='a10']").val().trim();
		var a11=$("input[name='a11']").val().trim();
		var a12=$("input[name='a12']").val().trim();
		var a13=$("input[name='a13']").val().trim();
		var a14=$("input[name='a14']").val().trim();
		var a15=$("input[name='a15']").val().trim();
		var a16=$("input[name='a16']").val().trim();
		var a17=$("input[name='a17']").val().trim();
		var a18=$("input[name='a18']").val().trim();
		var a19=$("input[name='a19']").val().trim();
		var a20=$("input[name='a20']").val().trim();
		var a21=$("input[name='a21']").val().trim();
		var a22=$("input[name='a22']").val().trim();
		var a23=$("input[name='a23']").val().trim();
		var a24=$("input[name='a24']").val().trim();
		var a25=$("input[name='a25']").val().trim();
		var a26=$("input[name='a26']").val().trim();
		var a27=$("input[name='a27']").val().trim();
		var a28=$("input[name='a28']").val().trim();
		var a29=$("input[name='a29']").val().trim();
		var a30=$("input[name='a30']").val().trim();
		var a31=$("input[name='a31']").val().trim();
		var a32=$("input[name='a32']").val().trim();
		var a33=$("input[name='a33']").val().trim();
		var a34=$("input[name='a34']").val().trim();
		var a35=$("input[name='a35']").val().trim();
		var a36=$("input[name='a36']").val().trim();
		var a37=$("input[name='a37']").val().trim();
		var a38=$("input[name='a38']").val().trim();
		var a39=$("input[name='a39']").val().trim();
		var a40=$("input[name='a40']").val().trim();
		var a41=$("input[name='a41']").val().trim();
		var a42=$("input[name='a42']").val().trim();
		var a43=$("input[name='a43']").val().trim();
		var a44=$("input[name='a44']").val().trim();
		var a45=$("input[name='a45']").val().trim();
		var a46=$("input[name='a46']").val().trim();
		var a47=$("input[name='a47']").val().trim();
		var a48=$("input[name='a48']").val().trim();
		var a49=$("input[name='a49']").val().trim();
		var a50=$("input[name='a50']").val().trim();
		var a51=$("input[name='a51']").val().trim();
		var a52=$("input[name='a52']").val().trim();
		var a53=$("input[name='a53']").val().trim();
		var a54=$("input[name='a54']").val().trim();
		var a55=$("input[name='a55']").val().trim();
		var aPart1=$("#aPart1").val();
		var aPart4=$("#aPart4").val();
		var data={
				aCetId:aCetId,
				aPart1:aPart1,
				aPart4:aPart4,
				a1:a1,	
				a2:a2,	
				a3:a4,	
				a4:a4,	
				a5:a5,	
				a6:a6,	
				a7:a7,	
				a8:a8,	
				a9:a9,	
				a10:a10,	
				a11:a11,	
				a12:a12,	
				a13:a13,	
				a14:a14,	
				a15:a15,	
				a16:a16,	
				a17:a17,	
				a18:a18,	
				a19:a19,	
				a20:a20,	
				a21:a21,	
				a22:a22,	
				a23:a23,	
				a24:a24,	
				a25:a25,
				a26:a26,	
				a27:a27,	
				a28:a28,	
				a29:a29,	
				a30:a30,	
				a31:a31,	
				a32:a32,	
				a33:a33,	
				a34:a34,	
				a35:a35,	
				a36:a36,	
				a37:a37,	
				a38:a38,	
				a39:a39,	
				a40:a40,	
				a41:a41,	
				a42:a42,	
				a43:a43,	
				a44:a44,	
				a45:a45,	
				a46:a46,	
				a47:a47,	
				a48:a48,	
				a49:a49,	
				a50:a50,	
				a51:a51,	
				a52:a52,	
				a53:a53,	
				a54:a54,	
				a55:a55	
		}
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/answer/addanswer",
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(data),
			success:function(data){
				if(data.attr=="success"){
					new $.zui.Messager('保存成功 ！', {
						time:'40000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					if(data.info=="exist"){

						$("#acetIdinfo").html("试题编号已经存在，请输入其他的命名！");
						$("#acetId").removeClass("has-success");
						$("#acetId").addClass("has-error");
						
						new $.zui.Messager('保存失败 ,题编号答案已经存在,请更换或者前往修改答案即可！', {
							time:'40000',
							icon: 'info',
							type: 'info' ,
							// 定义颜色主题
							placement: 'center' // 定义显示位置
						}).show();
					}else{
						new $.zui.Messager('保存失败 ！', {
							time:'40000',
							icon: 'times',
							type: 'danger' ,
							// 定义颜色主题
							placement: 'top' // 定义显示位置
						}).show();
					}
				}
			}
		});
	}
}


function editAndsavepart2(){
	var aCetId=document.getElementById("part2save").value;
	var a26=$("input[name='a26']").val().trim();
	var a27=$("input[name='a27']").val().trim();
	var a28=$("input[name='a28']").val().trim();
	var a29=$("input[name='a29']").val().trim();
	var a30=$("input[name='a30']").val().trim();
	var a31=$("input[name='a31']").val().trim();
	var a32=$("input[name='a32']").val().trim();
	var a33=$("input[name='a33']").val().trim();
	var a34=$("input[name='a34']").val().trim();
	var a35=$("input[name='a35']").val().trim();
	var a36=$("input[name='a36']").val().trim();
	var a37=$("input[name='a37']").val().trim();
	var a38=$("input[name='a38']").val().trim();
	var a39=$("input[name='a39']").val().trim();
	var a40=$("input[name='a40']").val().trim();
	var a41=$("input[name='a41']").val().trim();
	var a42=$("input[name='a42']").val().trim();
	var a43=$("input[name='a43']").val().trim();
	var a44=$("input[name='a44']").val().trim();
	var a45=$("input[name='a45']").val().trim();
	var a46=$("input[name='a46']").val().trim();
	var a47=$("input[name='a47']").val().trim();
	var a48=$("input[name='a48']").val().trim();
	var a49=$("input[name='a49']").val().trim();
	var a50=$("input[name='a50']").val().trim();
	var a51=$("input[name='a51']").val().trim();
	var a52=$("input[name='a52']").val().trim();
	var a53=$("input[name='a53']").val().trim();
	var a54=$("input[name='a54']").val().trim();
	var a55=$("input[name='a55']").val().trim();
	var data={
			aCetId:aCetId,
			a26:a26,	
			a27:a27,	
			a28:a28,	
			a29:a29,	
			a30:a30,	
			a31:a31,	
			a32:a32,	
			a33:a33,	
			a34:a34,	
			a35:a35,	
			a36:a36,	
			a37:a37,	
			a38:a38,	
			a39:a39,	
			a40:a40,	
			a41:a41,	
			a42:a42,	
			a43:a43,	
			a44:a44,	
			a45:a45,	
			a46:a46,	
			a47:a47,	
			a48:a48,	
			a49:a49,	
			a50:a50,	
			a51:a51,	
			a52:a52,	
			a53:a53,	
			a54:a54,	
			a55:a55	
	}
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/answer/editAndsavepart1",
		contentType:'application/json;charset=utf-8',
		data:JSON.stringify(data),
		success:function(data){
			if(data.attr=="success"){
				new $.zui.Messager('保存成功 ！', {
					time:'40000',
					icon: 'check',
					type: 'success' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}else{
				new $.zui.Messager('保存失败 ！', {
					time:'40000',
					icon: 'times',
					type: 'danger' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}
		}
	});
}

function editAndsavepart3(){
	var aCetId=document.getElementById("part3save").value;
	var aPart1=$("#aPart1").val();
	var data={
			aCetId:aCetId,
			aPart1:aPart1	
	}
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/answer/editAndsavepart1",
		contentType:'application/json;charset=utf-8',
		data:JSON.stringify(data),
		success:function(data){
			if(data.attr=="success"){
				new $.zui.Messager('保存成功 ！', {
					time:'40000',
					icon: 'check',
					type: 'success' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}else{
				new $.zui.Messager('保存失败 ！', {
					time:'40000',
					icon: 'times',
					type: 'danger' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}
		}
	});
}

function editAndsavepart4(){
	var aCetId=document.getElementById("part4save").value;
	var aPart4=$("#aPart4").val();
	var data={
			aCetId:aCetId,
			aPart4:aPart4	
	}
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/answer/editAndsavepart1",
		contentType:'application/json;charset=utf-8',
		data:JSON.stringify(data),
		success:function(data){
			if(data.attr=="success"){
				new $.zui.Messager('保存成功 ！', {
					time:'40000',
					icon: 'check',
					type: 'success' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}else{
				new $.zui.Messager('保存失败 ！', {
					time:'40000',
					icon: 'times',
					type: 'danger' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}
		}
	});
}
