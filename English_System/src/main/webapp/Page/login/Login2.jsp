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


<script src="<%=basePath%>JS/Third_Party/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery.js"></script>
<script type="text/javascript"
	src="<%=basePath%>/JS/Custom/login/login2.js"></script>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-5 form">
				<div class="row">
					<h2>用户登录</h2>
				</div>
				<div class="col-md-12">
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="icon icon-user"></i><span
								class="glyphicon glyphicon-user"></span></span> <input type="text"
								id="user" name="user" class="form-control"
								placeholder="用户名/手机/邮箱">
						</div>
					</div>
					<span id="checkuser" class="span_setting"></span> <br />
					<div class="form-group">
						<div class="input-group">
							<span class="input-group-addon"><i class="icon icon-lock"></i><span
								class="glyphicon glyphicon-user"></span></span> <input type="text"
								id="password" name="password" class="form-control" placeholder="密码">
						</div>
						<span id="checkpassword" class="span_setting"></span> <br>
						<div class="form-group">
							<label class="checkbox"> <input type="checkbox"
								name="remember" value="1" /> Remember me
							</label>
							<hr />
							<a href="#" id="register_btn" class="a_setting">创建新用户</a>
						</div>
						<div class="row">
							<div class="container">
								<button class="btn btn-block btn-success" onclick="login()" type="button">登录</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>