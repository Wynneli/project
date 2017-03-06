<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>/CSS/Custom/register.css">
<script type="text/javascript"
	src="<%=basePath%>/JS/Third_Party/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Custom/register/register.js">
</script>
<style>
.input_div span {
	background: #FFF;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
	$('#reg-form').easyform();
});
</script>
</head>
<body>
	<br>
	<div class="form-div">
		<form id="reg-form" action="<%=basePath%>/user/register" method="post">

			<table>
				<tr>
					<td>用户名</td>
					<td><input name="username" type="text" id="username" placeholder="请输入用户名"
						easyform="length:8-15;char-normal;real-time;"
						message="用户名必须为8—15位的英文字母或数字" 
						easytip="disappear:lost-focus;theme:blue;" ajax-message="用户名已存在!">
					</td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input name="userpassword" type="password" id="psw1"  placeholder="确认密码"
						easyform="length:6-16;" message="密码必须为6—16位" 
						easytip="disappear:lost-focus;theme:blue;"></td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td><input name="userpassword2" type="password" id="psw2"   placeholder="请输入密码"
						easyform="length:6-16;equal:#psw1;" message="两次密码输入要一致"  
						easytip="disappear:lost-focus;theme:blue;"></td>
				</tr>
				<tr>
					<td>email</td>
					<td><input name="useremail" type="text" id="email"   placeholder="请输入邮箱"
						easyform="email;real-time;" message="Email格式要正确"
						easytip="disappear:lost-focus;theme:blue;"
						ajax-message="这个Email地址已经被注册过，请换一个吧!"></td>
				</tr>
				<tr>
					<td>电话</td>
					<td><input name="userphone" type="text" id="userphone"  placeholder="请输入手机号"
						easyform="length:11" message="请输入有效的手机号"
						easytip="disappear:lost-focus;theme:blue;"></td>
				</tr>
			</table>

			<div class="buttons">
				<input value="注 册" type="submit"
					style="margin-right: 20px; margin-top: 20px;"/> <input
					value="我有账号，我要登录" type="button" onclick="location.href='<%=basePath%>/Page/login/Login.jsp'"
					style="margin-right: 45px; margin-top: 20px;"/>
			</div>

			<br class="clear">
		</form>
	</div>
</body>
</html>