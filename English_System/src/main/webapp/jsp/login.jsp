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
<style>
.input-group {
	margin: 10px 0px;
}

h3 {
	padding: 5px;
	border-bottom: 1px solid #ddd;
}

li {
	list-style-type: square;
	margin: 10px 0;
}

em {
	color: #c7254e;
	font-style: inherit;
	background-color: #f9f2f4;
}
</style>
</head>
<body>
	<div class="row" style="margin-top: 30px;">
		<div class="col-md-6" style="border-right: 1px solid #ddd;">
			<div class="well col-md-10">
				<h3>用户登录</h3>
				<div class="input-group input-group-md">
					<span class="input-group-addon" id="sizing-addon1"><i
						class="icon icon-user" aria-hidden="true"></i></span> <input
						type="text" class="form-control" placeholder="用户名"
						aria-describedby="sizing-addon1">
				</div>
				<div class="input-group input-group-md">
					<span class="input-group-addon" id="sizing-addon1"><i
						class="icon icon-lock"></i></span> <input type="password"
						class="form-control" placeholder="密码"
						aria-describedby="sizing-addon1">
				</div>
				<div class="well well-sm" style="text-align: center;">
					<input type="radio" name="kind" value="tea"> 老师 <input
						type="radio" name="kind" value="stu"> 学生
				</div>
				<button type="submit" class="btn btn-success btn-block">登录
				</button>
			</div>
		</div>
		<div class="col-md-6">
			<h3>欢迎使用学生作业管理系统</h3>
			<ul>
				<li>学生使用<em>学号</em>登录，初始密码为<em>6个1</em>，登录后请及时修改密码
				</li>
				<li>老师请使用<em>工号</em>登录，初始密码为<em>6个1</em>，登录后请及时修改密码
				</li>
			</ul>
		</div>
	</div>
</body>
</html>