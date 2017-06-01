
function login(){  
	var user =$("input[name='username']").val().trim();
	var password =$("input[name='userpassword']").val().trim(); 
	var data={
			adminname:user,
			adminpassword:password,
	}
	if(user==""||password==""){
		if(user==""){
			new $.zui.Messager('账号不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				// 定义颜色主题
				placement: 'top' // 定义显示位置
			}).show();
		}else{
			new $.zui.Messager('密码不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				// 定义颜色主题
				placement: 'top' // 定义显示位置
			}).show();
		}
	}
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/admin/checkadmin",
		contentType:'application/json;charset=utf-8',
		data:JSON.stringify(data),
		success:function(data){
			if(data.attr=="success"){
				$("#loginform").submit();
			}else{
				new $.zui.Messager('账号或者密码错误！', {
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


