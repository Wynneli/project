
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
		new $.zui.Messager('<a style="color:white;"  href="../login/Login2.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}
};

function reply(obj){
	if($("#getusername").text()==""){
		new $.zui.Messager('请登录后再回复', {
			time:'4000',
			icon: 'info-sign',
			type: 'danger' ,
			// 定义颜色主题
			placement: 'center' // 定义显示位置
		}).show();
	}else{

		var username='回复'+$(obj).attr("value");
//		alert(username);
		if(username!=""&&$(obj).attr("value")!=$("#getusername").text()){
			$("#comment_content").attr('placeholder',username);
		}else{
			new $.zui.Messager('不能对自己进行回复', {
				time:'4000',
				icon: 'info-sign',
				type: 'warning' ,
				// 定义颜色主题
				placement: 'center' // 定义显示位置
			}).show();
		}
	}
}

function submit_comment(){
	var placeholder=$("#comment_content").attr('placeholder');
//	alert($("#comment_content").attr('placeholder'));
	var comment=document.getElementById("comment_content").value;
	var current_time=getNowFormatDate();
	var username=$("#getusername").text();
	var tousername=placeholder.substr(2,placeholder.lenght);
	if(username!=""){
		if(comment!=""){
			if(placeholder=="撰写评论"){
				$.ajax({
					type:'post',
					url:'http://localhost:8080/English_System/comment/sumuit_comment',
					data:"cet4Id="+$("#cet4_info_id").text()+
					"&commentContent="+comment+
					"&commentFromUsername="+username+
					"&commentToUsername="+"",
					success:function(data){
						if(data.attr=="success"){
							$("#show_comments").append(
									'<section class="comments-list"><div class="comment">'+
									'<a href="#" class="avatar">'+
									' <i class="icon-camera-retro icon-2x"></i>'+
									'</a><div class="content">'+
									'<div class="pull-right text-muted">'+current_time+
									'</div><div><a href="#" id="from_comment_user"><strong>'+username+'</strong></a>'+
									'<span class="text-muted">&nbsp;回复&nbsp;</span> <a href="#">'+
									'</a></div><div class="text">'+comment+
									'</div><div class="actions"><a href="#commentReplyForm2" data-target="#collapseExample" onclick="reply("'+username+'")">回复'+
							'</a></div></div></div></section>');
							new $.zui.Messager('评论成功', {
								time:'4000',
								icon: 'check',
								type: 'success' ,
								// 定义颜色主题
								placement: 'center' // 定义显示位置
							}).show();
							document.getElementById("comment_content").value="";
						}else{
							new $.zui.Messager('评论失败', {
								time:'4000',
								icon: 'times',
								type: 'danger' ,
								// 定义颜色主题
								placement: 'center' // 定义显示位置
							}).show();
							document.getElementById("comment_content").value="";
						}
					}
				});
			}else{
				$.ajax({
					type:'post',
					url:'http://localhost:8080/English_System/comment/sumuit_comment',
					data:"cet4Id="+$("#cet4_info_id").text()+
					"&commentContent="+comment+
					"&commentFromUsername="+username+
					"&commentToUsername="+tousername,
					success:function(data){
						if(data.attr=="success"){
							$("#show_comments").append(
									'<section class="comments-list"><div class="comment">'+
									'<a href="#" class="avatar">'+
									' <i class="icon-camera-retro icon-2x"></i>'+
									'</a><div class="content">'+
									'<div class="pull-right text-muted">'+current_time+
									'</div><div><a href="#" id="from_comment_user"><strong>'+username+'</strong></a>'+
									'<span class="text-muted">&nbsp;回复&nbsp;</span> <a href="#">'+tousername+
									'</a></div><div class="text">'+comment+
									'</div><div class="actions"><a href="#commentReplyForm2" data-target="#collapseExample" onclick="reply("'+username+'")">回复'+
							'</a></div></div></div></section>');
							new $.zui.Messager('回复成功', {
								time:'4000',
								icon: 'check',
								type: 'success' ,
								// 定义颜色主题
								placement: 'center' // 定义显示位置
							}).show();
							document.getElementById("comment_content").value="";
							$("#comment_content").attr('placeholder',"撰写评论");
						}else{
							new $.zui.Messager('回复失败', {
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
	if($("#cet4_button").text()=='展开评论'){
		$("#cet4_button").text('收起评论');
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/comment/loading_comment",
			data:"cet4Id="+$("#cet4_info_id").text(),
			success:function(data){
				$("#show_comments").html("");
				for(var i=0;i<data.length;i++){
					$("#show_comments").append(
							'<section class="comments-list"><div class="comment">'+
							'<a href="###" class="avatar">'+
							' <i class="icon-camera-retro icon-2x"></i>'+
							'</a><div class="content">'+
							'<div class="pull-right text-muted">'+data[i].commentTime+
							'</div><div><a href="#" id="from_comment_user"><strong>'+data[i].commentFromUsername+'</strong></a>'+
							'<span class="text-muted">&nbsp;回复&nbsp;</span> <a href="#">'+data[i].commentToUsername+
							'</a></div><div class="text">'+data[i].commentContent+
							'</div><div class="actions"><a href="#commentReplyForm2" value="'+data[i].commentFromUsername+'"  data-target="#collapseExample" onclick="reply(this)">回复'+
							'</div></div></div></section>'
					);
				}
			}
		})
	}else{
		$("#cet4_button").text('展开评论');
	}
}
//'+data[i].commentFromUsername+'
function getNowFormatDate() {
	var date = new Date();
	var seperator1 = "-";
	var seperator2 = ":";
	var month = date.getMonth() + 1;
	var strDate = date.getDate();
	if (month >= 1 && month <= 9) {
		month = "0" + month;
	}
	if (strDate >= 0 && strDate <= 9) {
		strDate = "0" + strDate;
	}
	var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
	+ " " + date.getHours() + seperator2 + date.getMinutes()
	+ seperator2 + date.getSeconds();
	return currentdate;
}

function saveProcess(){
	if($("#getusername").text()!=""){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet4/saveProcess",
			data:"cet4Id="+$("#cet4_info_id").text()+
			"&username="+$("#getusername").text(),
			success:function(data){
				if(data.attr=="success"){
					new $.zui.Messager('保存成功!', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('保存失败!', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}else{
		new $.zui.Messager('<a style="color:white;"  href="../login/Login2.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}
}

function loadProcess(){
	if($("#getusername").text()!=""){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet4/loadProcess",
			data:"cet4Id="+$("#cet4_info_id").text()+
			"&username="+$("#getusername").text(),
			success:function(data){
				if(data.attr=="success"){
					$('#cet4_info_id').text(data.cet4Custom.cet4Id);
					$('#cet4_info_vocabulary').text(data.cet4Custom.cet4Vocabulary);
					$('#cet4_info_pronunciation').text(data.cet4Custom.cet4Pronunciation);
					$('#cet4_info_meaning').text(data.cet4Custom.cet4Meaning);
					new $.zui.Messager('加载成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('加载失败！', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}
			}
		});
	}else{
		new $.zui.Messager('<a style="color:white;"  href="../login/Login2.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}
}


