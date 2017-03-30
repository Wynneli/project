
function next(){
	$.ajax({
		type:"post",
		url:"http://localhost:8080/English_System/cet4/nextword",
		data:"cet4Id="+$("#cet4_info_id").text()+"&username="+$("#getusername").text(),
		success:function(data){
			$('#cet4_info_id').text(data.Cet4Id);
			$('#cet4_info_vocabulary').text(data.Cet4Vocabulary);
			$('#cet4_info_pronunciation').text(data.Cet4Pronunciation);
			$('#cet4_info_meaning').text(data.Cet4Meaning);
			if(data.message!=""){
				$("#add_or_remove_unknown_word").text(data.message);
			}
		}
	});
};

function pre(){
	if($("#cet4_info_id").text()!=""&&$("#cet4_info_id").text()!="cet4_0001"){
		$.ajax({
			type:"post",
			url:"http://localhost:8080/English_System/cet4/preword",
			data:"cet4Id="+$("#cet4_info_id").text()+"&username="+$("#getusername").text(),
			success:function(data){
				$('#cet4_info_id').text(data.Cet4Id);
				$('#cet4_info_vocabulary').text(data.Cet4Vocabulary);
				$('#cet4_info_pronunciation').text(data.Cet4Pronunciation);
				$('#cet4_info_meaning').text(data.Cet4Meaning);
				$("#add_or_remove_unknown_word").text(data.message);
			}
		});
	}else{
		new $.zui.Messager('您好，这已经是第一个了', {
			time:'4000',
			icon: 'times',
			type: 'warning' ,
			// 定义颜色主题
			placement: 'center' // 定义显示位置
		}).show();
	}
};

function add_or_remove_unknown_word(){
	if($("#getusername").text()!=""){
		if($("#add_or_remove_unknown_word").text()=="收入我的词库"){

			$.ajax({
				type:'post',
				url:"http://localhost:8080/English_System/cet4/add_unknown_word",
				data:"cet4Id="+$("#cet4_info_id").text()+
				"&cet4Vocabulary="+$("#cet4_info_vocabulary").text()+
				"&cet4Pronunciation="+$("#cet4_info_pronunciation").text()+
				"&cet4Meaning="+$("#cet4_info_meaning").text()+
				"&username="+$("#getusername").text(),
				success:function(data){
					$("#add_or_remove_unknown_word").text("移出我的词库");
					if(data.success=="success"){
						new $.zui.Messager('添加成功!', {
							time:'4000',
							icon: 'check',
							type: 'success' ,
							// 定义颜色主题
							placement: 'center' // 定义显示位置
						}).show();
					}else{
						new $.zui.Messager('已经在我的词库中!', {
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
	alert($(this).find("span").toggle().value);
	if($("#getusername").text()!=""){

	}else{
		$("#comment_content").attr("placeholder","回复123");

		alert($(this).parnets(div));
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

//			if($("#cet4_button").text()=="展开评论"){
//			$("#cet4_button").text("收起评论");
//			}else {
//			$("#cet4_button").text("展开评论");
//			}
			for(var i=0;i<data.length;i++){
				$("#add_comment_context").after(
						'<section class="comments-list"><div class="comment">'+
						'<a href="###" class="avatar">'+
						' <i class="icon-camera-retro icon-2x"></i>'+
						'</a><div class="content">'+
						'<div class="pull-right text-muted">'+data[i].commentTime+
						'</div><div><a href="#" id="from_comment_user"><strong>'+data[i].commentFromUsername+'</strong></a>'+
						'<span class="text-muted">&nbsp;回复&nbsp;</span> <a href="###">'+data[i].commentToUsername+
						'</a></div><div class="text">'+data[i].commentContent+
						'</div><div class="actions"><a href="#" data-target="#collapseExample" onclick="reply()">回复'+
						'</a><span style="display:none;">'+data[i].commentFromUsername+'</span></div></div></div></section>');
			}

			$("#cet4_button").addClass("disabled");
		}
	})


}





