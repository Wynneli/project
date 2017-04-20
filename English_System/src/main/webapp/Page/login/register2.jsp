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
<link rel="stylesheet" href="<%=basePath%>/CSS/Custom/register2.css">

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>/JS/Custom/register/register2.js"></script>
<body>
	<form action="<%=basePath%>/user/register2" id="registerform">
		<div class="container">
			<div class="row">
				<div class="col-md-5 form">
					<div class="row">
						<h2>用户注册</h2>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<div class="input-group" id="user">
									<span class="input-group-addon"><i
										class="icon icon-user"></i>&nbsp;用&nbsp;户&nbsp;名&nbsp;&nbsp;<span
										class="glyphicon glyphicon-user"></span></span> <input type="text"
										name="user" class="form-control" placeholder="用户名">
								</div>
							</div>
							<span id="checkuser" class="span_setting"></span> <br />
							<div class="form-group">
								<div class="input-group" id="password">
									<span class="input-group-addon"><i
										class="icon icon-lock"></i> 密 &nbsp; &nbsp; &nbsp; 码 </span> <input
										type="password" name="password" class="form-control"
										placeholder="密码">
								</div>
							</div>
							<span id="checkpassword" class="span_setting"></span> <br />
							<div class="form-group">
								<div class="input-group" id="password2">
									<span class="input-group-addon"><i
										class="icon icon-lock"></i> 确认密码 </span> <input type="password"
										name="password2" class="form-control" placeholder="再次输入密码">
								</div>
							</div>
							<span id="checkpassword2" class="span_setting"></span> <br />
							<div class="form-group font_setting">
								<label> <input type="checkbox" id="remeber" value="2" />
									已经阅读OELS协议，并同意
								</label> <br /> <a class="a_setting" href="#">《OLES用户使用协议》</a>
								<hr />
							</div>
							<div class="row">
								<div class="container">
									<button class="btn btn-block btn-success" onclick="register()"
										type="button">注册</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>