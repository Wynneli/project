
function login(){  
	var user =$("input[name='user']").val();  
	var password =$("input[name='password']").val();  
	alert(user+password);
	var isValidate=false;  
	
	if (isValidate) {  
		var ajax = Ajax();  
		ajax.get('login.php?user='+document.getElementById('user').value+'&password='+document.getElementById('password').value, function(data){  
			var con = document.getElementById('con');  
			eval(data);  
			if (login) {  
				con.innerHTML = '<font color="green">登录成功，跳转中...</font>';  
				location = 'xx.php'; // 登录成功后指定跳转页面  
			} else {  
				con.innerHTML = '<font color="red">帐号或密码错误！</font>';  
			}  
		});  
	}  

}  
re.onclick = function(){  
	user.value="";  
	password.value="";  
}  