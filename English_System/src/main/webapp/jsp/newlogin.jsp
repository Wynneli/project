<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/newlogin.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/mzui.min.js"></script>
</head>
<body>
	<h3>用户登录</h3>
	<div class="input-group input-group-md">
		<span class="input-group-addon" id="sizing-addon1"><i
			class="icon icon-user" aria-hidden="true"></i></span> <input type="text"
			class="form-control" placeholder="用户名"
			aria-describedby="sizing-addon1">
	</div>
	<div class="input-group input-group-md">
		<span class="input-group-addon" id="sizing-addon1"><i
			class="icon icon-lock"></i></span> <input type="password"
			class="form-control" placeholder="密码"
			aria-describedby="sizing-addon1">
	</div>
</body>
</html>