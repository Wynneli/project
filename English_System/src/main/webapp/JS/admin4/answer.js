
function select(){
	var x="--筛选--";
	var cetId=$('#cet option:selected').text();
	if(cetId!=x){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/answer/Brushanswer",
			data:"answerId="+cetId,
			success:function(data){
				if(data.attr=="success"){
					if(data.list.length!=0){
						$("#answerinfo tbody").html("");
						for(var i=0;i<data.list.length;i++){
							var temp='<tr>'+
							'<td><label> <input type="checkbox" name="checkbox" value="'+data.list[i].aCetId+'">'+
							'</label></td>'+
							'<td>'+data.list[i].aCetId+'</td>'+
							'<td>'+data.list[i].a1+'</td>'+
							'<td>'+data.list[i].a2+'</td>'+
							'<td>'+data.list[i].a3+'</td>'+
							'<td>'+data.list[i].a4+'</td>'+
							'<td>'+data.list[i].a5+'</td>'+
							'<td>'+data.list[i].a6+'</td>'+
							'<td>'+data.list[i].a7+'</td>'+
							'<td>'+data.list[i].a8+'</td>'+
							'<td>'+data.list[i].a9+'</td>'+
							'<td>'+data.list[i].a10+'</td>'+
							'<td>'+data.list[i].a11+'</td>'+
							'<td>'+data.list[i].a12+'</td>'+
							'<td>'+data.list[i].a13+'</td>'+
							'<td>'+data.list[i].a14+'</td>'+
							'<td>'+data.list[i].a15+'</td>'+
							'<td>'+data.list[i].a16+'</td>'+
							'<td>'+data.list[i].a17+'</td>'+
							'<td>'+data.list[i].a18+'</td>'+
							'<td>'+data.list[i].a19+'</td>'+
							'<td><a href="http://localhost:8080/English_System/answer/editAnswer/'+data.list[i].aCetId+'" target="myframe">'+
							'<button class="btn btn-mini btn-info">'+
							'<i class="icon icon-edit"></i>编辑'+
							'</button></a> &nbsp;&nbsp;&nbsp;'+
							'<button class="btn btn-mini btn-danger"'+
							'onclick="deleteAnswer('+data.list[i].aCetId+');" type="button">'+
							'<i class="icon icon-trash "></i>删除'+
							'</button></td>'+
							'</tr>';
							$("#answerinfo tbody").append(temp);
						} 
					}
					new $.zui.Messager('数据加载成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('对不起，没有相关数据', {
						time:'4000',
						icon: 'info',
						type: 'danger' ,
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}



function deleteAnswer(a){
	if(confirm( "确定要删除这条记录吗?" )){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/answer/deleteAnswer",
			data:"answerId="+a,
			success:function(data){
				if(data.attr=="success"){
					if(data.list.length!=0){
						$("#answerinfo tbody").html("");
						for(var i=0;i<data.list.length;i++){
							var temp='<tr>'+
							'<td><label> <input type="checkbox" name="checkbox" value="'+data.list[i].aCetId+'">'+
							'</label></td>'+
							'<td>'+data.list[i].aCetId+'</td>'+
							'<td>'+data.list[i].a1+'</td>'+
							'<td>'+data.list[i].a2+'</td>'+
							'<td>'+data.list[i].a3+'</td>'+
							'<td>'+data.list[i].a4+'</td>'+
							'<td>'+data.list[i].a5+'</td>'+
							'<td>'+data.list[i].a6+'</td>'+
							'<td>'+data.list[i].a7+'</td>'+
							'<td>'+data.list[i].a8+'</td>'+
							'<td>'+data.list[i].a9+'</td>'+
							'<td>'+data.list[i].a10+'</td>'+
							'<td>'+data.list[i].a11+'</td>'+
							'<td>'+data.list[i].a12+'</td>'+
							'<td>'+data.list[i].a13+'</td>'+
							'<td>'+data.list[i].a14+'</td>'+
							'<td>'+data.list[i].a15+'</td>'+
							'<td>'+data.list[i].a16+'</td>'+
							'<td>'+data.list[i].a17+'</td>'+
							'<td>'+data.list[i].a18+'</td>'+
							'<td>'+data.list[i].a19+'</td>'+
							'<td><a href="http://localhost:8080/English_System/answer/editAnswer/'+data.list[i].aCetId+'" target="myframe">'+
							'<button class="btn btn-mini btn-info">'+
							'<i class="icon icon-edit"></i>编辑'+
							'</button></a> &nbsp;&nbsp;&nbsp;'+
							'<button class="btn btn-mini btn-danger"'+
							'onclick="deleteAnswer('+data.list[i].aCetId+');" type="button">'+
							'<i class="icon icon-trash "></i>删除'+
							'</button></td>'+
							'</tr>';
							$("#answerinfo tbody").append(temp);
						} 
					}
					new $.zui.Messager('删除成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('对不起，没有删除失败！', {
						time:'4000',
						icon: 'info',
						type: 'danger' ,
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function Batchdelete(){
	var AnswerIdList="";
	var checknum=$("input[name='checkbox']:checked").length;
	alert(checknum);
	if(checknum<1){
		new $.zui.Messager('请选择一条记录', {
			time:'100000',
			icon: 'times',
			type: 'warning' ,
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		if(confirm( "确定要批量删除?" ))
		{
			var select_obj=$("input[name='checkbox']");
			for(var i=0;i<select_obj.length;i++){
				if(select_obj.get(i).checked == true){
					AnswerIdList+=select_obj.get(i).value+",";
				}
			}
		}
		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/answer/BatchdeleteAnswer',
			data:'AnswerIdList='+AnswerIdList,
			success:function(data){
				if(data.attr=='success'){
					if(data.list.length!=0){
						$("#answerinfo tbody").html("");
						for(var i=0;i<data.list.length;i++){
							var temp='<tr>'+
							'<td><label> <input type="checkbox" name="checkbox" value="'+data.list[i].aCetId+'">'+
							'</label></td>'+
							'<td>'+data.list[i].aCetId+'</td>'+
							'<td>'+data.list[i].a1+'</td>'+
							'<td>'+data.list[i].a2+'</td>'+
							'<td>'+data.list[i].a3+'</td>'+
							'<td>'+data.list[i].a4+'</td>'+
							'<td>'+data.list[i].a5+'</td>'+
							'<td>'+data.list[i].a6+'</td>'+
							'<td>'+data.list[i].a7+'</td>'+
							'<td>'+data.list[i].a8+'</td>'+
							'<td>'+data.list[i].a9+'</td>'+
							'<td>'+data.list[i].a10+'</td>'+
							'<td>'+data.list[i].a11+'</td>'+
							'<td>'+data.list[i].a12+'</td>'+
							'<td>'+data.list[i].a13+'</td>'+
							'<td>'+data.list[i].a14+'</td>'+
							'<td>'+data.list[i].a15+'</td>'+
							'<td>'+data.list[i].a16+'</td>'+
							'<td>'+data.list[i].a17+'</td>'+
							'<td>'+data.list[i].a18+'</td>'+
							'<td>'+data.list[i].a19+'</td>'+
							'<td><a href="http://localhost:8080/English_System/answer/editAnswer/'+data.list[i].aCetId+'" target="myframe">'+
							'<button class="btn btn-mini btn-info">'+
							'<i class="icon icon-edit"></i>编辑'+
							'</button></a> &nbsp;&nbsp;&nbsp;'+
							'<button class="btn btn-mini btn-danger"'+
							'onclick="deleteAnswer('+data.list[i].aCetId+');" type="button">'+
							'<i class="icon icon-trash "></i>删除'+
							'</button></td>'+
							'</tr>';
							$("#answerinfo tbody").append(temp);
						} 
					}
					new $.zui.Messager('批量删除成功', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('批量删除失败！', {
						time:'4000',
						icon: 'info',
						type: 'danger' ,
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		})
	}
}

function editAndsavepart1(){
	var aCetId=document.getElementById("part1save").value;
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
	var data={
			aCetId:aCetId,
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