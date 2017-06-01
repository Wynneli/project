function deleteComment(a){
	var cell = document.getElementById(a);
	if(confirm( "确定要删除这条记录吗?" )){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/comment/deleteComment",
			data:"commentId="+a,
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

function search(){
	var username=$("input[name='username']").val();
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/comment/searchcomment",
		data:"username="+username,
		success:function(data){
			if(data.attr=="success"){
				$("#show_feedbackinfo tbody").html("");
				for(var i=0;i<data.list.length;i++){
					var temp='<tr id="'+data.list[i].commentId+'">'+
					'<td>'+data.list[i].commentId+'</td>'+
					'<td>'+data.list[i].topicType+'</td>'+
					'<td>'+data.list[i].commentContent+'</td>'+
					'<td>'+data.list[i].commentFromUsername+'</td>'+
					'<td>'+data.list[i].commentToUsername+'</td>'+
					'<td><button class="btn btn-mini btn-danger"'+
					'	onclick="deleteComment('+data.list[i].commentId+')">'+
					'<i class="icon icon-trash"></i>删除'+
					'</button></td>'+
					'</tr>';
				}
				$("#show_feedbackinfo tbody").append(temp);
				new $.zui.Messager('查找成功', {
					time:'4000',
					icon: 'check',
					type: 'success' ,
					// 定义颜色主题
					placement: 'center' // 定义显示位置
				}).show();

			}else{
				new $.zui.Messager('查找失败', {
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
