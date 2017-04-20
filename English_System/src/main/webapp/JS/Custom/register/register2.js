
function register(){  
	var user =$("input[name='user']").val().trim();
	var password =$("input[name='password']").val().trim(); 
	var password2 =$("input[name='password2']").val().trim(); 
	var pattern= /^[a-zA-Z][a-zA-Z0-9]{4,14}$/;
	var pattern2= /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,15}$/;
	var uservalidate="success";
	var passwordvalidate="success";
	var passwordvalidate2="success";
	var data={
			username:user,
			userpassword:password,
	}
	if($("#remeber").is(':checked')){
		if(user==""||password==""||password2==""){
			if(user==""){
				new $.zui.Messager('用户名不能为空', {
					time:'4000',
					icon: 'times',
					type: 'danger' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}else if(password==""){
				new $.zui.Messager('密码不能为空', {
					time:'4000',
					icon: 'times',
					type: 'danger' ,
					// 定义颜色主题
					placement: 'center' // 定义显示位置
				}).show();
			}else{
				new $.zui.Messager('确认密码不能为空', {
					time:'4000',
					icon: 'times',
					type: 'danger' ,
					// 定义颜色主题
					placement: 'center' // 定义显示位置
				}).show();
			}
		}else{
			if(!pattern.test(user)){
				$("#checkuser").html("<font color='red' size='2'>用户名格式不正确！必须以字母开头，由字母，数字组成，长度5-15位</font>");
				$("#user").addClass("has-error");
				uservalidate="false";
			}else{
				$("#user").addClass("has-success");
				$("#checkuser").html("");
			}
			if(!pattern2.test(password)){
				$("#checkpassword").html("<font color='red' size='2'>密码格式不正确！由数字和字母组成，长度6-16位</font>");
				$("#password").addClass("has-error");
				passwordvalidate="false";
			}else{
				$("#checkpassword").html("");
				$("#password").addClass("has-success");
			}
			if(password!=password2){
				$("#checkpassword2").html("<font color='red' size='2'>两次输入的密码不一致</font>");
				$("#password2").addClass("has-error");
				passwordvalidate2="false";
			}else{
				$("#checkpassword2").html("");
				$("#password2").addClass("has-success");
			}
			if(uservalidate=="success"&&passwordvalidate=="success"&&passwordvalidate=="success"){
				$.ajax({
					type:'post',
					url:"http://localhost:8080/English_System/user/RegisterUser",
					contentType:'application/json;charset=utf-8',
					data:JSON.stringify(data),
					success:function(data){
						if(data.success=="success"){
							new $.zui.Messager('注册成功  ,<a style="color:red;"  href="../login/Login2.jsp">立刻登录!</a>', {
								time:'40000',
								icon: 'check',
								type: 'success' ,
								// 定义颜色主题
								placement: 'top' // 定义显示位置
							}).show();
						}else{
							$("#user").removeClass("has-success");
							$("#checkuser").html("<font color='red' size='2'>用户名已经存在，请使用其他进行注册！</font>");
							$("#user").addClass("has-error");
						}
					}
				})
			}
		}  
	}else{
		new $.zui.Messager('请选择同意协议', {
			time:'4000',
			icon: 'times',
			type: 'danger' ,
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}

}