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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/newlogin.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/mzui.min.js"></script>
</head>
<body>
	<div class="row" style="margin-top:6%;">
		<div class="col-md-4"></div>
		<div class="col-md-4" style="border-right: 1px solid #ddd;">
			<div class="panel">
				<div class="panel-heading">
					<h5 style="text-align: center;">用户登录</h5>
				</div>
				<div class="input-group input-group-md">
					<span class="input-group-addon"><i class="icon icon-user"
						aria-hidden="true"></i></span> <input type="text" class="form-control"
						placeholder="用户名/手机号/邮箱" aria-describedby="sizing-addon1">
				</div>
				<span></span>
				<div class="input-group input-group-md">
					<span class="input-group-addon" id="sizing-addon1"><i
						class="icon icon-lock"></i></span> <input type="password"
						class="form-control" placeholder="密码"
						aria-describedby="sizing-addon1">
				</div>
				<span></span>
				<div class="checkbox">
					<label> <input style="text-align:center;" type="checkbox"> <a href="">同意<英语在线学习>协议</a>
					</label>
				</div>
				<button type="submit" class="btn btn-primary btn-block">登录</button>
			</div>

			<div class="col-md-4"></div>
		</div>
	</div>
</body>
</html>