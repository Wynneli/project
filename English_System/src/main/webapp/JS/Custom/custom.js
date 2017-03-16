
function next(){
	$.ajax({
		type:"post",
		url:"http://localhost:8080/English_System/cet4/nextword",
//		contentType:'application/json;chrset=utf-8',
//		data:"cet4Id"+$(#cet4_info_id").text(),
		data:"cet4Id="+$("#cet4_info_id").text()+"&username="+$("#getusername").text(),
		success:function(data){
			$('#cet4_info_id').text(data.Cet4Id);
			$('#cet4_info_vocabulary').text(data.Cet4Vocabulary);
			$('#cet4_info_pronunciation').text(data.Cet4Pronunciation);
			$('#cet4_info_meaning').text(data.Cet4Meaning);
//			alert(data.message);
			if(data.message!=""){
//				alert("here")
				$("#add_or_remove_unknown_word").text(data.message);
			}
		}
	});
};

function pre(){
	var data={cet4Id:$('#cet4_info_id').text()};
	if($('#cet4_info_id').text()!=""&&$('#cet4_info_id').text()!="cet4_0001"){
		$.ajax({
			type:"post",
			url:"http://localhost:8080/English_System/cet4/preword",
			contentType:'application/json;chrset=utf-8',
//			data:'{"cet4Id":"$(#cet4_info_id").text()"}',
			data:JSON.stringify(data),
			success:function(data){
				$("#add_or_remove_unknown_word").text("收入我的词库");
				$('#cet4_info_id').text(data.cet4Id);
				$('#cet4_info_vocabulary').text(data.cet4Vocabulary);
				$('#cet4_info_pronunciation').text(data.cet4Pronunciation);
				$('#cet4_info_meaning').text(data.cet4Meaning);
			}
		});
	}else{
		alert("这已经是最开始的一个")
	}
};

function add_or_remove_unknown_word(){
	if($("#getusername").text()!=""){
		if($("#add_or_remove_unknown_word").text()=="收入我的词库"){
//			alert("132");

			$.ajax({
				type:'post',
				url:"http://localhost:8080/English_System/cet4/add_unknown_word",
				data:"cet4Id="+$("#cet4_info_id").text()+
				"&cet4Vocabulary="+$("#cet4_info_vocabulary").text()+
				"&cet4Pronunciation="+$("#cet4_info_pronunciation").text()+
				"&cet4Meaning="+$("#cet4_info_meaning").text()+
				"&username="+$("#getusername").text(),
				success:function(data){
//					alert(data.success)
					if(data.success=="success"){
						$("#add_or_remove_unknown_word").text("移出我的词库");
						new $.zui.Messager('添加成功!', {
							time:'4000',
							icon: 'check',
							type: 'success' ,
							// 定义颜色主题
							placement: 'center' // 定义显示位置
						}).show();
					}else{
						new $.zui.Messager('添加失败!', {
							time:'4000',
							icon: 'times',
							type: 'warning' ,
							// 定义颜色主题
							placement: 'center' // 定义显示位置
						}).show();
					}
				}
			});
		}else{
			var data={cet4Id:$("#cet4_info_id").text()}
			$.ajax({
				type:'post',
				url:"http://localhost:8080/English_System/cet4/remove_unknown_word",
				data:JSON.stringify(data),
				contentType: "application/json;charset=utf-8",
				success:function(data){
					$("#add_or_remove_unknown_word").text("收入我的词库");
					new $.zui.Messager('成功移除!', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
					}).show();
				},
			});
		}
	}else{
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}
};

function reply(){
	if($("#getusername").text()!=""){

	}else{
		new $.zui.Messager('请登录后再回复', {
			time:'4000',
			icon: 'info-sign',
			type: 'important' ,
			// 定义颜色主题
			placement: 'center' // 定义显示位置
		}).show();
	}
}

function sumuit_comment(){
	var comment=document.getElementById("comment_content").value;
	var username=$("#getusername").text();
	if(username!=""){
		if(comment!=""){
			$(".comment").after('<div class="comment">'+
					'<a href="#" class="avatar"><i class="icon-user icon-2x"></i>'+
					'</a><div class="content">'+
					'<div class="pull-right text-muted">2 个小时前</div>'+
					'<div><a href="#"><strong>'+username+'</strong></a> '+
					'<span class="text-muted">回复</span> <a href="#"></a>'+
					'</div><div class="text">'+comment+'</div>'+
					'<div class="actions">'+
					'<a href="#" id="comment_a" onclick="reply()">回复</a>'+
			'</div></div></div>');
			document.getElementById("comment_content").value="";
			new $.zui.Messager('评论成功', {
				time:'4000',
				icon: 'check',
				type: 'success' ,
				// 定义颜色主题
				placement: 'center' // 定义显示位置
			}).show();
		}else{
			new $.zui.Messager('请输入评论内容', {
				time:'4000',
				icon: 'info-sign',
				type: 'info' ,
				// 定义颜色主题
				placement: 'center' // 定义显示位置
			}).show();
		}
	}else{
		new $.zui.Messager('请登录后再评论', {
			time:'4000',
			icon: 'info-sign',
			type: 'important' ,
			// 定义颜色主题
			placement: 'center' // 定义显示位置
		}).show();
	}

}

function commit_comment(){
	if($("#getusername").text()==""){
		new $.zui.Messager('请登录后再评论', {
			time:'4000',
			icon: 'info-sign',
			type: 'important' ,
			// 定义颜色主题
			placement: 'center' // 定义显示位置
		}).show();
	}
}

function show_comment(){
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/comment/loading_comment",
		data:"cet4Id="+$("#cet4_info_id").text(),
		success:function(data){
			alert("success"); 
			if($("#cet4_button").text()=="展开评论"){
				$("#cet4_button").text("收起评论");
			}else {
				$("#cet4_button").text("展开评论");
			}
		}
	})


}





