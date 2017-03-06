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
<link rel="stylesheet" href="<%=basePath%>/CSS/Custom/login.css">

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/JS/Custom/login/login1.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
	font-family: "微软雅黑";
	font-size: 12px;
}

.box {
	width: 390px;
	height: 320px;
	border: solid 1px #ddd;
	background: #FFF;
	position: absolute;
	left: 50%;
	top: 42%;
	margin-left: -195px;
	margin-top: -160px;
}

.box h2 {
	font-weight: normal;
	color: #666;
	font-size: 16px;
	line-height: 46px;
	height: 46px;
	overflow: hidden;
	text-align: center;
	border-bottom: solid 1px #ddd;
	background: #f7f7f7;
}

.input_box {
	width: 350px;
	padding-bottom: 15px;
	margin: 0 auto;
	overflow: hidden;
}

.input_box input {
	float: left;
	width: 348px;
	height: 40px;
	font-size: 14px;
	border: solid 1px #ddd;
	text-indent: 10px;
	outline: none;
	line-height: 40px;
}

.input_box button {
	width: 350px;
	height: 48px;
	background: #3f89ec;
	border: none;
	border-radius: 2px;
	outline: none;
	cursor: pointer;
	font-size: 16px;
	color: #FFF;
}

#error_box {
	height: 40px;
	width: 350px;
	margin: 0 auto;
	line-height: 40px;
	color: #fc4343;
}
</style>
</head>

<body>
	<form action="<%=basePath%>/user/login" method="get">
		<div class="box">
			<h2>登录</h2>

			<div id="error_box"></div>
			<div class="input_box">
				<input type="text" placeholder="请输入账户名" id="uname" name="userphone" />
			</div>
			<div class="input_box">
				<input type="password" placeholder="请输入密码" id="upass"
					name="userpassword" />
			</div>
			<div class="input_box">
				<!-- <button onclick="fnLogin()">登录</button>   -->
				<button type="submit">登录</button>
			</div>
		</div>
	</form>
</body>