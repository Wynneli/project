function select(){
	var f="--状态筛选--";
	var s="--是否接受--";
	var sltfirst=$('#first option:selected').text();
	var sltsecond=$('#second option:selected').text();
	if(sltfirst==f){
		sltfirst="";
	}
	if(sltsecond==s){
		sltsecond=""
	}
	var data={
			feedbackState:sltfirst,
			feedbackAccept:sltsecond,
	}
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/feedback/Brushfeedback",
		data:JSON.stringify(data),
		contentType: "application/json;charset=utf-8",
		success:function(data){
			if(data.attr=="success"){
				if(data.list.length!=0){
					$("#show_feedbackinfo tbody").html("");
					for(var i=0;i<data.list.length;i++){
						if(data.list[i].feedbackSecond==null){
							var temp='<tr id="'+data.list[i].feedbackId+'"><td><label> '+
							'<input type="checkbox" name="checkbox"></label></td>'+
							'<td>'+data.list[i].feedbackUsername+'</td>'+
							'<td>'+data.list[i].feedbackTitle+'</td>'+
							'<td>'+data.list[i].feedbackFirst+'</td>'+
							'<td>'+data.list[i].feedbackDesctiption+'</td>'+
							'<td>'+data.list[i].feedbackAdvice+'</td>'+
							'<td>'+data.list[i].feedbackState+'</td>'+
							'<td>'+data.list[i].feedbackAccept+'</td>'+
							'<td><a href="http://localhost:8080/English_System/feedback/feedbackDetails/'+data.list[i].feedbackId+'">'+
							'<button class="btn btn-mini btn-info"> '+
							'<i class="icon icon-edit"></i>编辑</button>&nbsp; </a>'+
							'<button onclick="deletefeedback('+data.list[i].feedbackId+')" '+
							'class="btn btn-mini btn-danger">'+
							'<i class="icon icon-trash  "></i>删除'+
							'</button></td></tr>';
						}else{
							var temp='<tr id="'+data.list[i].feedbackId+'"><td><label> '+
							'<input type="checkbox" name="checkbox"></label></td>'+
							'<td>'+data.list[i].feedbackUsername+'</td>'+
							'<td>'+data.list[i].feedbackTitle+'</td>'+
							'<td>'+data.list[i].feedbackFirst+"/"+data.list[i].feedbackSecond+'</td>'+
							'<td>'+data.list[i].feedbackDesctiption+'</td>'+
							'<td>'+data.list[i].feedbackAdvice+'</td>'+
							'<td>'+data.list[i].feedbackState+'</td>'+
							'<td>'+data.list[i].feedbackAccept+'</td>'+
							'<td><a href="http://localhost:8080/English_System/feedback/feedbackDetails/'+data.list[i].feedbackId+'">'+
							'<button class="btn btn-mini btn-info"> '+
							'<i class="icon icon-edit"></i>编辑</button>&nbsp; </a>'+
							'<button onclick="deletefeedback('+data.list[i].feedbackId+')" '+
							'class="btn btn-mini btn-danger">'+
							'<i class="icon icon-trash  "></i>删除'+
							'</button></td></tr>';
						}
						$("#show_feedbackinfo tbody").append(temp);
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

function deletefeedback(feedback_id){
	var cell = document.getElementById(feedback_id);
	if(confirm( "确定要删除这条记录吗?" )){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/feedback/deleteFeedBack",
			data:"feedback_id="+feedback_id,
			success:function(data){
				if(data.attr=="success"){
					document.getElementById("mytbody").removeChild(cell);
					new $.zui.Messager('删除成功', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('删除失败', {
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

function edit(feedback_id){
	var feedbackState2=$("#state option:selected").text();
	var feedbackAccept2=$("#accept option:selected").text();
	var data={
			feedbackState:feedbackState2,
			feedbackAccept:feedbackAccept2,
			feedbackId:feedback_id
	}
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/feedback/editFeedback",
		data:JSON.stringify(data),
		contentType: "application/json;charset=utf-8",
		success:function(data){
			if(data.attr=="success"){
				new $.zui.Messager('修改成功！', {
					time:'4000',
					icon: 'check',
					type: 'success' ,
					// 定义颜色主题
					placement: 'center' // 定义显示位置
				}).show();
			}else{
				new $.zui.Messager('修改失败！', {
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