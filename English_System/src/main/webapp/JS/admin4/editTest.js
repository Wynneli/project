function editAndsavePart1(){
	var cet4TestContent=$("#Part1").val();
	var cet4TestId=$("#cet4_Part1").val();
//	var cet4TestId2=document.getElementById("cet4_Part1").value;
	var data= {
			cet4TestId:cet4TestId,
			cet4TestContent:cet4TestContent,
	}
	if(cet4TestContent==""){
		new $.zui.Messager('写作要求不能为空,请填写', {
			time:'4000',
			icon: 'times',
			type: 'danger' ,
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
		$("#Part1tip").addClass("has-error");
	}else{
		$("#Part1tip").removeClass("has-error");
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet/editPart1",
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(data),
			success:function(data){
				if(data.attr=="success"){
					new $.zui.Messager('修改成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('修改失败！', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function editAndsavePart4(){
	var cet4Part4Content=$("#Part4").val();
	var cet4Part4Id=$("#cet4_Part4").val();
//	var cet4TestId2=document.getElementById("cet4_Part1").value;
	var data= {
			cet4Part4Id:cet4Part4Id,
			cet4Part4Content:cet4Part4Content
	}
	if(cet4Part4Content==""){
		new $.zui.Messager('翻译要求不能为空,请填写', {
			time:'4000',
			icon: 'times',
			type: 'danger' ,
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
		$("#Part4tip").addClass("has-error");
	}else{
		$("#Part4tip").removeClass("has-error");
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet/editPart4",
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(data),
			success:function(data){
				if(data.attr=="success"){
					new $.zui.Messager('修改成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('修改失败！', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function editAndsavePart2(){
	var cet42Id1=$("input[name='cet42Id1']").val();
	var cet42B1=$("input[name='1cet42B']").val();
	var cet42A1=$("input[name='1cet42A']").val();
	var cet42C1=$("input[name='1cet42C']").val();
	var cet42D1=$("input[name='1cet42D']").val();

	var cet42Id2=$("input[name='cet42Id2']").val();
	var cet42B2=$("input[name='2cet42B']").val();
	var cet42A2=$("input[name='2cet42A']").val();
	var cet42C2=$("input[name='2cet42C']").val();
	var cet42D2=$("input[name='2cet42D']").val();

	var cet42Id3=$("input[name='cet42Id3']").val();
	var cet42B3=$("input[name='3cet42B']").val();
	var cet42A3=$("input[name='3cet42A']").val();
	var cet42C3=$("input[name='3cet42C']").val();
	var cet42D3=$("input[name='3cet42D']").val();

	var cet42Id4=$("input[name='cet42Id4']").val();
	var cet42B4=$("input[name='4cet42B']").val();
	var cet42A4=$("input[name='4cet42A']").val();
	var cet42C4=$("input[name='4cet42C']").val();
	var cet42D4=$("input[name='4cet42D']").val();

	var cet42Id5=$("input[name='cet42Id5']").val();
	var cet42B5=$("input[name='5cet42B']").val();
	var cet42A5=$("input[name='5cet42A']").val();
	var cet42C5=$("input[name='5cet42C']").val();
	var cet42D5=$("input[name='5cet42D']").val();

	var cet42Id6=$("input[name='cet42Id6']").val();
	var cet42B6=$("input[name='6cet42B']").val();
	var cet42A6=$("input[name='6cet42A']").val();
	var cet42C6=$("input[name='6cet42C']").val();
	var cet42D6=$("input[name='6cet42D']").val();

	var cet42Id7=$("input[name='cet42Id7']").val();
	var cet42B7=$("input[name='7cet42B']").val();
	var cet42A7=$("input[name='7cet42A']").val();
	var cet42C7=$("input[name='7cet42C']").val();
	var cet42D7=$("input[name='7cet42D']").val();

	var cet42Id8=$("input[name='cet42Id8']").val();
	var cet42B8=$("input[name='8cet42B']").val();
	var cet42A8=$("input[name='8cet42A']").val();
	var cet42C8=$("input[name='8cet42C']").val();
	var cet42D8=$("input[name='8cet42D']").val();

	var cet42Id9=$("input[name='cet42Id9']").val();
	var cet42B9=$("input[name='9cet42B']").val();
	var cet42A9=$("input[name='9cet42A']").val();
	var cet42C9=$("input[name='9cet42C']").val();
	var cet42D9=$("input[name='9cet42D']").val();

	var cet42Id10=$("input[name='cet42Id10']").val();
	var cet42B10=$("input[name='10cet42B']").val();
	var cet42A10=$("input[name='10cet42A']").val();
	var cet42C10=$("input[name='10cet42C']").val();
	var cet42D10=$("input[name='10cet42D']").val();

	var cet42Id11=$("input[name='cet42Id11']").val();
	var cet42B11=$("input[name='11cet42B']").val();
	var cet42A11=$("input[name='11cet42A']").val();
	var cet42C11=$("input[name='11cet42C']").val();
	var cet42D11=$("input[name='11cet42D']").val();

	var cet42Id12=$("input[name='cet42Id12']").val();
	var cet42B12=$("input[name='12cet42B']").val();
	var cet42A12=$("input[name='12cet42A']").val();
	var cet42C12=$("input[name='12cet42C']").val();
	var cet42D12=$("input[name='12cet42D']").val();

	var cet42Id13=$("input[name='cet42Id13']").val();
	var cet42B13=$("input[name='13cet42B']").val();
	var cet42A13=$("input[name='13cet42A']").val();
	var cet42C13=$("input[name='13cet42C']").val();
	var cet42D13=$("input[name='13cet42D']").val();

	var cet42Id14=$("input[name='cet42Id14']").val();
	var cet42B14=$("input[name='14cet42B']").val();
	var cet42A14=$("input[name='14cet42A']").val();
	var cet42C14=$("input[name='14cet42C']").val();
	var cet42D14=$("input[name='14cet42D']").val();

	var cet42Id15=$("input[name='cet42Id15']").val();
	var cet42B15=$("input[name='15cet42B']").val();
	var cet42A15=$("input[name='15cet42A']").val();
	var cet42C15=$("input[name='15cet42C']").val();
	var cet42D15=$("input[name='15cet42D']").val();

	var cet42Id16=$("input[name='cet42Id16']").val();
	var cet42B16=$("input[name='16cet42B']").val();
	var cet42A16=$("input[name='16cet42A']").val();
	var cet42C16=$("input[name='16cet42C']").val();
	var cet42D16=$("input[name='16cet42D']").val();

	var cet42Id17=$("input[name='cet42Id17']").val();
	var cet42B17=$("input[name='17cet42B']").val();
	var cet42A17=$("input[name='17cet42A']").val();
	var cet42C17=$("input[name='17cet42C']").val();
	var cet42D17=$("input[name='17cet42D']").val();

	var cet42Id18=$("input[name='cet42Id18']").val();
	var cet42B18=$("input[name='18cet42B']").val();
	var cet42A18=$("input[name='18cet42A']").val();
	var cet42C18=$("input[name='18cet42C']").val();
	var cet42D18=$("input[name='18cet42D']").val();

	var cet42Id19=$("input[name='cet42Id19']").val();
	var cet42B19=$("input[name='19cet42B']").val();
	var cet42A19=$("input[name='19cet42A']").val();
	var cet42C19=$("input[name='19cet42C']").val();
	var cet42D19=$("input[name='19cet42D']").val();

	var cet42Id20=$("input[name='cet42Id20']").val();
	var cet42B20=$("input[name='20cet42B']").val();
	var cet42A20=$("input[name='20cet42A']").val();
	var cet42C20=$("input[name='20cet42C']").val();
	var cet42D20=$("input[name='20cet42D']").val();

	var cet42Id21=$("input[name='cet42Id21']").val();
	var cet42B21=$("input[name='21cet42B']").val();
	var cet42A21=$("input[name='21cet42A']").val();
	var cet42C21=$("input[name='21cet42C']").val();
	var cet42D21=$("input[name='21cet42D']").val();

	var cet42Id22=$("input[name='cet42Id22']").val();
	var cet42B22=$("input[name='22cet42B']").val();
	var cet42A22=$("input[name='22cet42A']").val();
	var cet42C22=$("input[name='22cet42C']").val();
	var cet42D22=$("input[name='22cet42D']").val();

	var cet42Id23=$("input[name='cet42Id23']").val();
	var cet42B23=$("input[name='23cet42B']").val();
	var cet42A23=$("input[name='23cet42A']").val();
	var cet42C23=$("input[name='23cet42C']").val();
	var cet42D23=$("input[name='23cet42D']").val();

	var cet42Id24=$("input[name='cet42Id24']").val();
	var cet42B24=$("input[name='24cet42B']").val();
	var cet42A24=$("input[name='24cet42A']").val();
	var cet42C24=$("input[name='24cet42C']").val();
	var cet42D24=$("input[name='24cet42D']").val();

	var cet42Id25=$("input[name='cet42Id25']").val();
	var cet42B25=$("input[name='25cet42B']").val();
	var cet42A25=$("input[name='25cet42A']").val();
	var cet42C25=$("input[name='25cet42C']").val();	
	var cet42D25=$("input[name='25cet42D']").val();

//	for(var i=1;i<=25;i++){
//	var Atip=i+"A";
//	var Btip=i+"B";
//	var Ctip=i+"C";
//	var Dtip=i+"D";
//	var a=i+"cet42A";
//	var b=i+"cet42B";
//	var b=i+"cet42C";
//	var b=i+"cet42D";
//	if($("input[name='"+a+"']").val()==""){
//	$(this).parent.parent.addClass("has-error");
//	}
//	}
	var data=[
	          {cet42Id:cet42Id1,cet42A:cet42A1,cet42B:cet42B1,cet42C:cet42C1,cet42D:cet42D1},
	          {cet42Id:cet42Id2,cet42A:cet42A2,cet42B:cet42B2,cet42C:cet42C2,cet42D:cet42D2},
	          {cet42Id:cet42Id3,cet42A:cet42A3,cet42B:cet42B3,cet42C:cet42C3,cet42D:cet42D3},
	          {cet42Id:cet42Id4,cet42A:cet42A4,cet42B:cet42B4,cet42C:cet42C4,cet42D:cet42D4},
	          {cet42Id:cet42Id5,cet42A:cet42A5,cet42B:cet42B5,cet42C:cet42C5,cet42D:cet42D5},
	          {cet42Id:cet42Id6,cet42A:cet42A6,cet42B:cet42B6,cet42C:cet42C6,cet42D:cet42D6},
	          {cet42Id:cet42Id7,cet42A:cet42A7,cet42B:cet42B7,cet42C:cet42C7,cet42D:cet42D7},
	          {cet42Id:cet42Id8,cet42A:cet42A8,cet42B:cet42B8,cet42C:cet42C8,cet42D:cet42D8},
	          {cet42Id:cet42Id9,cet42A:cet42A9,cet42B:cet42B9,cet42C:cet42C9,cet42D:cet42D9},
	          {cet42Id:cet42Id10,cet42A:cet42A10,cet42B:cet42B10,cet42C:cet42C10,cet42D:cet42D10},
	          {cet42Id:cet42Id11,cet42A:cet42A11,cet42B:cet42B11,cet42C:cet42C11,cet42D:cet42D11},
	          {cet42Id:cet42Id12,cet42A:cet42A12,cet42B:cet42B12,cet42C:cet42C12,cet42D:cet42D12},
	          {cet42Id:cet42Id13,cet42A:cet42A13,cet42B:cet42B13,cet42C:cet42C13,cet42D:cet42D13},
	          {cet42Id:cet42Id14,cet42A:cet42A14,cet42B:cet42B14,cet42C:cet42C14,cet42D:cet42D14},
	          {cet42Id:cet42Id15,cet42A:cet42A15,cet42B:cet42B15,cet42C:cet42C15,cet42D:cet42D15},
	          {cet42Id:cet42Id16,cet42A:cet42A16,cet42B:cet42B16,cet42C:cet42C16,cet42D:cet42D16},
	          {cet42Id:cet42Id17,cet42A:cet42A17,cet42B:cet42B17,cet42C:cet42C17,cet42D:cet42D17},
	          {cet42Id:cet42Id18,cet42A:cet42A18,cet42B:cet42B18,cet42C:cet42C18,cet42D:cet42D18},
	          {cet42Id:cet42Id19,cet42A:cet42A19,cet42B:cet42B19,cet42C:cet42C19,cet42D:cet42D19},
	          {cet42Id:cet42Id20,cet42A:cet42A20,cet42B:cet42B20,cet42C:cet42C20,cet42D:cet42D20},
	          {cet42Id:cet42Id21,cet42A:cet42A21,cet42B:cet42B21,cet42C:cet42C21,cet42D:cet42D21},
	          {cet42Id:cet42Id22,cet42A:cet42A22,cet42B:cet42B22,cet42C:cet42C22,cet42D:cet42D22},
	          {cet42Id:cet42Id23,cet42A:cet42A23,cet42B:cet42B23,cet42C:cet42C23,cet42D:cet42D23},
	          {cet42Id:cet42Id24,cet42A:cet42A24,cet42B:cet42B24,cet42C:cet42C24,cet42D:cet42D24},
	          {cet42Id:cet42Id25,cet42A:cet42A25,cet42B:cet42B25,cet42C:cet42C25,cet42D:cet42D25},
	          ];
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/cet/editPart2",
		contentType:'application/json;charset=utf-8',
		data:JSON.stringify(data),
		success:function(data){
			if(data.attr=="success"){
				new $.zui.Messager('修改成功！', {
					time:'4000',
					icon: 'check',
					type: 'success' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}else{
				new $.zui.Messager('修改失败！', {
					time:'4000',
					icon: 'times',
					type: 'danger' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}
		}
	});
}

function editAndsavePart3A(){
	var cetid=$("#cetPart3A").val();
	var cet4Part3aBody=$("#aPart3A").val()
	if(cet4Part3aBody==""){
		new $.zui.Messager('选词填空原文不能为空！', {
			time:'4000',
			icon: 'times',
			type: 'danger' ,
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
		$("#aPart3Atip").addClass("has-error");
	}else{
		$("#aPart3Atip").removeClass("has-error");
		var data={
				cet4Part3aId:cetid,
				cet4Part3aBody:cet4Part3aBody,
				cet4Part3aA:$("input[name='cet4Part3aA']").val(),
				cet4Part3aB:$("input[name='cet4Part3aB']").val(),
				cet4Part3aC:$("input[name='cet4Part3aC']").val(),
				cet4Part3aD:$("input[name='cet4Part3aD']").val(),
				cet4Part3aE:$("input[name='cet4Part3aE']").val(),
				cet4Part3aF:$("input[name='cet4Part3aF']").val(),
				cet4Part3aG:$("input[name='cet4Part3aF']").val(),
				cet4Part3aH:$("input[name='cet4Part3aG']").val(),
				cet4Part3aI:$("input[name='cet4Part3aH']").val(),
				cet4Part3aJ:$("input[name='cet4Part3aJ']").val(),
				cet4Part3aK:$("input[name='cet4Part3aK']").val(),
				cet4Part3aL:$("input[name='cet4Part3aL']").val(),
				cet4Part3aM:$("input[name='cet4Part3aM']").val(),
				cet4Part3aN:$("input[name='cet4Part3aN']").val(),
				cet4Part3aO:$("input[name='cet4Part3aO']").val()
		}
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet/editPart3A",
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(data),
			success:function(data){
				if(data.attr=="success"){
					new $.zui.Messager('修改成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('修改失败！', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function editAndsavePart3B(){
	var validate="succcess";
	var cet4Part3bId=$("#cet4Part3bId").val();
	var cet4Part3bA=$("#cet4Part3bA").val();
	var cet4Part3bB=$("#cet4Part3bB").val();
	var cet4Part3bC=$("#cet4Part3bC").val();
	var cet4Part3bD=$("#cet4Part3bD").val();
	var cet4Part3bE=$("#cet4Part3bE").val();
	var cet4Part3bF=$("#cet4Part3bF").val();
	var cet4Part3bG=$("#cet4Part3bG").val();
	var cet4Part3bH=$("#cet4Part3bH").val();
	var cet4Part3bI=$("#cet4Part3bI").val();
	var cet4Part3bJ=$("#cet4Part3bJ").val();
	var cet4Part3bK=$("#cet4Part3bK").val();
	var cet4Part3bL=$("#cet4Part3bL").val();
	var cet4Part3bM=$("#cet4Part3bM").val();
	var cet4Part3bN=$("#cet4Part3bN").val();
	var cet4Part3b36=$("input[name='cet4Part3b36']").val();
	var cet4Part3b37=$("input[name='cet4Part3b37']").val();
	var cet4Part3b38=$("input[name='cet4Part3b38']").val();
	var cet4Part3b39=$("input[name='cet4Part3b39']").val();
	var cet4Part3b40=$("input[name='cet4Part3b40']").val();
	var cet4Part3b41=$("input[name='cet4Part3b41']").val();
	var cet4Part3b42=$("input[name='cet4Part3b42']").val();
	var cet4Part3b43=$("input[name='cet4Part3b43']").val();
	var cet4Part3b44=$("input[name='cet4Part3b44']").val();
	var cet4Part3b45=$("input[name='cet4Part3b45']").val();
	var data={
			cet4Part3bId:cet4Part3bId,
			cet4Part3bA:cet4Part3bA,
			cet4Part3bB:cet4Part3bB,
			cet4Part3bC:cet4Part3bC,
			cet4Part3bD:cet4Part3bD,
			cet4Part3bE:cet4Part3bE,
			cet4Part3bF:cet4Part3bF,
			cet4Part3bG:cet4Part3bG,
			cet4Part3bH:cet4Part3bH,
			cet4Part3bI:cet4Part3bI,
			cet4Part3bJ:cet4Part3bJ,
			cet4Part3bK:cet4Part3bK,
			cet4Part3bL:cet4Part3bL,
			cet4Part3bM:cet4Part3bM,
			cet4Part3bN:cet4Part3bN,
			cet4Part3b36:cet4Part3b36,
			cet4Part3b37:cet4Part3b37,
			cet4Part3b38:cet4Part3b38,
			cet4Part3b39:cet4Part3b39,
			cet4Part3b40:cet4Part3b40,
			cet4Part3b41:cet4Part3b41,
			cet4Part3b42:cet4Part3b42,
			cet4Part3b43:cet4Part3b43,
			cet4Part3b44:cet4Part3b44,
			cet4Part3b45:cet4Part3b45
	};

	if(cet4Part3bA==""){
		$("#cet4Part3bAtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bAtip").removeClass("has-error");
	}

	if(cet4Part3bB==""){
		$("#cet4Part3bBtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bBtip").removeClass("has-error");
	}

	if(cet4Part3bC==""){
		$("#cet4Part3bCtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bCtip").removeClass("has-error");
	}

	if(cet4Part3bD==""){
		$("#cet4Part3bDtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bDtip").removeClass("has-error");
	}

	if(cet4Part3bE==""){
		$("#cet4Part3bEtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bEtip").removeClass("has-error");
	}

	if(cet4Part3bF==""){
		$("#cet4Part3bFtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bFtip").removeClass("has-error");
	}

	if(cet4Part3bG==""){
		$("#cet4Part3bGtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bGtip").removeClass("has-error");
	}

	if(cet4Part3bH==""){
		$("#cet4Part3bHtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bHtip").removeClass("has-error");
	}

	if(cet4Part3bI==""){
		$("#cet4Part3bItip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bItip").removeClass("has-error");
	}

	if(cet4Part3bJ==""){
		$("#cet4Part3bJtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bJtip").removeClass("has-error");
	}

	if(cet4Part3bK==""){
		$("#cet4Part3bKtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bKtip").removeClass("has-error");
	}

	if(cet4Part3bL==""){
		$("#cet4Part3bLtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bLtip").removeClass("has-error");
	}

	if(cet4Part3bM==""){
		$("#cet4Part3bMtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bMtip").removeClass("has-error");
	}

	if(cet4Part3bN==""){
		$("#cet4Part3bNtip").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3bNtip").removeClass("has-error");
	}

	if(cet4Part3b36==""){
		$("#cet4Part3b36").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b36").removeClass("has-error");
	}

	if(cet4Part3b37==""){
		$("#cet4Part3b37").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b37").removeClass("has-error");
	}

	if(cet4Part3b38==""){
		$("#cet4Part3b38").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b38").removeClass("has-error");
	}

	if(cet4Part3b39==""){
		$("#cet4Part3b39").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b39").removeClass("has-error");
	}

	if(cet4Part3b40==""){
		$("#cet4Part3b40").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b40").removeClass("has-error");
	}

	if(cet4Part3b41==""){
		$("#cet4Part3b41").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b41").removeClass("has-error");
	}

	if(cet4Part3b42==""){
		$("#cet4Part3b42").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b42").removeClass("has-error");
	}

	if(cet4Part3b45==""){
		$("#cet4Part3b45").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b45").removeClass("has-error");
	}

	if(cet4Part3b43==""){
		$("#cet4Part3b43").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b43").removeClass("has-error");
	}

	if(cet4Part3b44==""){
		$("#cet4Part3b44").addClass("has-error");
		validate="false";
	}else{
		$("#cet4Part3b44").removeClass("has-error");
	}

	if(validate=="false"){
		new $.zui.Messager('短文或者问题不能有空，请填写！', {
			time:'4000',
			icon: 'times',
			type: 'danger' ,
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet/editPart3B",
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(data),
			success:function(data){
				if(data.attr=="success"){
					new $.zui.Messager('修改成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('修改失败！', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function editAndsavePart3C(){
	var validate="success";
	var artile1=$("#cet4PartcArticle1").val();
	var artile2=$("#cet4PartcArticle2").val();
	var cet4PartcId1=$("#cet4PartcId1").html();
	var cet4PartcId2=$("#cet4PartcId2").html();
	var cet4PartcId3=$("#cet4PartcId3").html();
	var cet4PartcId4=$("#cet4PartcId4").html();
	var cet4PartcId5=$("#cet4PartcId5").html();
	var cet4PartcId6=$("#cet4PartcId6").html();
	var cet4PartcId7=$("#cet4PartcId7").html();
	var cet4PartcId8=$("#cet4PartcId8").html();
	var cet4PartcId9=$("#cet4PartcId9").html();
	var cet4PartcId10=$("#cet4PartcId10").html();
	var data=[
	          {cet4PartcArticle:artile1,cet4PartcA:$("input[name='cet4PartcA1']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC1']").val(),cet4PartcB:$("input[name='cet4PartcB1']").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD1']").val(),cet4PartcId:cet4PartcId1
	          },
	          {cet4PartcA:$("input[name='cet4PartcA2']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC2']").val(),cet4PartcB:$("input[name='cet4PartcB2']").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD2']").val(),cet4PartcId:cet4PartcId2
	          },
	          {cet4PartcA:$("input[name='cet4PartcA3']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC3']").val(),cet4PartcB:$("input[name='cet4PartcB3']").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD3']").val(),cet4PartcId:cet4PartcId3
	          },
	          {cet4PartcA:$("input[name='cet4PartcA4']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC4']").val(),cet4PartcB:$("input[name='cet4PartcB4]").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD4']").val(),cet4PartcId:cet4PartcId4
	          },
	          {cet4PartcA:$("input[name='cet4PartcA5']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC5']").val(),cet4PartcB:$("input[name='cet4PartcB5']").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD5']").val(),cet4PartcId:cet4PartcId5
	          },
	          {cet4PartcArticle:artile2,cet4PartcA:$("input[name='cet4PartcA6']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC6']").val(),cet4PartcB:$("input[name='cet4PartcB6']").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD6']").val(),cet4PartcId:cet4PartcId6
	          },
	          {cet4PartcA:$("input[name='cet4PartcA7']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC7']").val(),cet4PartcB:$("input[name='cet4PartcB7']").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD7']").val(),cet4PartcId:cet4PartcId7
	          },
	          {cet4PartcA:$("input[name='cet4PartcA8']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC8']").val(),cet4PartcB:$("input[name='cet4PartcB8']").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD8']").val(),cet4PartcId:cet4PartcId8
	          },
	          {cet4PartcA:$("input[name='cet4PartcA9']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC9']").val(),cet4PartcB:$("input[name='cet4PartcB9']").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD9']").val(),cet4PartcId:cet4PartcId9
	          },
	          {cet4PartcA:$("input[name='cet4PartcA10']").val(),
	        	  cet4PartcC:$("input[name='cet4PartcC10']").val(),cet4PartcB:$("input[name='cet4PartBC10']").val()
	        	  ,cet4PartcD:$("input[name='cet4PartcD10']").val(),cet4PartcId:cet4PartcId10
	          },
	          ];
	if(artile1==""){
		$("#reading1").addClass("has-error");
		validate="false";
	}else{
		$("#reading1").removeClass("has-error");
	}

	if(artile2==""){
		$("#reading2").addClass("has-error");
		validate="false";
	}else{
		$("#reading2").removeClass("has-error");
	}

	if(validate=="false"){
		new $.zui.Messager('阅读文章不能为空', {
			time:'4000',
			icon: 'times',
			type: 'danger' ,
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet/editPart3C",
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(data),
			success:function(data){
				if(data.attr=="success"){
					new $.zui.Messager('修改成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('修改失败！', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}