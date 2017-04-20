
function login(){  
	var user =$("input[name='username']").val().trim();
	var password =$("input[name='userpassword']").val().trim(); 
	var pattern= /^[a-zA-Z][a-zA-Z0-9]{4,14}$/;
	var pattern2= /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,15}$/;
	var uservalidate="success";
	var passwordvalidate="success";
	var data={
			username:user,
			userpassword:password,
	}
	if(user==""||password==""){
		if(user==""){
			new $.zui.Messager('用户名不能为空', {
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
				placement: 'center' // 定义显示位置
			}).show();
		}
	}else{
		if(!pattern.test(user)){
			$("#checkuser").html("<font color='red' size='2'>用户名不正确！必须以字母开头，由字母，数字组成，长度5-15位</font>");
			$("#user").addClass("has-error");
			uservalidate="false";
		}else{
			$("#user").addClass("has-success");
			$("#checkuser").html("");
		}
		if(!pattern2.test(password)){
			$("#checkpassword").html("<font color='red' size='2'>用户名不正确！由数字和字母组成，长度6-16位</font>");
			$("#password").addClass("has-error");
			passwordvalidate="false";
		}else{
			$("#checkpassword").html("");
			$("#password").addClass("has-success");

		}
		if(uservalidate=="success"&&passwordvalidate=="success"){
			$.ajax({
				type:'post',
				url:"http://localhost:8080/English_System/user/validateUser",
				contentType:'application/json;charset=utf-8',
				data:JSON.stringify(data),
				success:function(data){
					if(data.userinfo.existe=="用户存在"){
						if(data.userinfo.attr=="success"){
							$("#loginform").submit();
						}else{
							$("#password").removeClass("has-success");
							$("#checkpassword").html("<font color='red' size='2'>密码不正确！</font>");
							$("#password").addClass("has-error");
						}
					}else{
						$("#user").removeClass("has-success");
						$("#checkuser").html("<font color='red' size='2'>用户不存在！</font>");
						$("#user").addClass("has-error");
					}
				}
			});
		}
	}  
}