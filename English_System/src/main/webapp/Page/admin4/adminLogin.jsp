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

<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>/CSS/Custom/login.css">

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/admin4/login2.js"></script>
<body>
	<form action="<%=basePath%>admin/login" id="loginform">
		<div class="container">
			<div class="row">
				<div class="col-md-5 form">
					<div class="row">
						<h2>管理员登录</h2>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<div class="input-group" id="user">
									<span class="input-group-addon"><i
										class="icon icon-user"></i>用户名<span
										class="glyphicon glyphicon-user"></span></span> <input type="text"
										name="username" class="form-control" placeholder="用户名">
								</div>
							</div>
							<span id="checkuser" class="span_setting"></span> <br />
							<div class="form-group">
								<div class="input-group" id="password">
									<span class="input-group-addon"><i
										class="icon icon-lock"></i> 密 &nbsp;&nbsp;码 </span> <input
										type="password" name="userpassword" class="form-control"
										placeholder="密码">
								</div>
								<span id="checkpassword" class="span_setting"></span> <br />
								
							</div>
							<div class="row">

								<div class="container">
									<button class="btn btn-block btn-success" onclick="login()"
										type="button">登录</button>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>