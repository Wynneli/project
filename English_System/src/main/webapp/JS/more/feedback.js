function getSecond(){
	var seconds=[  
	             ["四级词汇","六级词汇"],  
	             ["四级试题","六级试题"],  
	             ["词汇下载","录音下载","试题下载","视频下载"],  
	             ["密码修改","词汇学习情况","个人信息管理","测试情况"] , 
	             ["考试动态","报名动态","政策大纲"] 
	             ]; 
	var sltfirst=document.getElementById("first");
	var sltsecond=document.getElementById("second");
	var index=first.selectedIndex;
	var second=seconds[index-1];
	sltsecond.length=1;
	for(var i=0;i<second.length;i++){  
		sltsecond[i+1]=new Option(second[i],second[i]);  
	}  
}

function submit2(){
	var username=$("#getusername").text();

	var f="请选择一级标题";
	var s="请选择二级标题";
	var sltfirst=$('#first option:selected').text();
	var sltsecond=$('#second option:selected').text();
	if(sltsecond==s){
		relsecond="";
	}else{
		relsecond=sltsecond;
	}
	var title=$("input[name='title']").val().trim();
	var details=$("#details").val().trim();
	var advice=$("#advice").val().trim();
	var data={
			feedbackUsername:username,
			feedbackFirst:sltfirst,
			feedbackSecond:relsecond,
			feedbackTitle:title,
			feedbackDesctiption:details,
			feedbackAdvice:advice
	}
	var first="success";
	var second="success";
	if(username!=""){
		if(sltfirst==f){
			first="false";
			new $.zui.Messager('请从一级标题中选择内容！', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				// 定义颜色主题
				placement: 'top' // 定义显示位置
			}).show();
		}else if(sltfirst!="其他"){
			if(sltsecond==s){
				second="false";
				new $.zui.Messager('请从二级标题中选择内容！', {
					time:'4000',
					icon: 'times',
					type: 'danger' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}
		}
		if(first=="success"&&second=="success"){
			if(title!=""&&details!=""&&advice!=""){
				$.ajax({
					type:'post',
					url:"http://localhost:8080/English_System/user/feedback",
					data:JSON.stringify(data),
					contentType: "application/json;charset=utf-8",
					success:function(data){
						if(data.attr=="success"){
							new $.zui.Messager('提交成功,正在跳转到主页！', {
								time:'4000',
								icon: 'check',
								type: 'success' ,
								// 定义颜色主题
								placement: 'top' // 定义显示位置
							}).show();
							setTimeout("",2000)
							$("#feedback_form").submit();
						}else{
							new $.zui.Messager('提交失败！', {
								time:'4000',
								icon: 'times',
								type: 'danger' ,
								// 定义颜色主题
								placement: 'top' // 定义显示位置
							}).show();
						}

					}
				});
//				$("#feedback_form").submit();
			}else{
				if(title==""){
					new $.zui.Messager('标题不能为空！', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}else  if(details==""){
					new $.zui.Messager('详情描述不能为空！', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('改进意见不能为空！', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}
			}

		}
	}else{
		new $.zui.Messager('<a style="color:white;"  href="../login/Login2.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}
}