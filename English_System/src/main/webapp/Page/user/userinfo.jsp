<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/user/userinfo.css">

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/User/user.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row border">
		<h2 style="padding-left: 300px;">更改个人信息</h2>
		<br />
		<div class="row">
			<div class="container">
				<div class="col-md-8">
					<form class="form-horizontal">
						<div class="form-group" id="phone_color">
							<label class="col-sm-2 control-label">手机号码：</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" id="phone"
									value="13660571248" disabled="disabled" maxlength="11">
							</div>
							<span id="phone_tip" class="span_setting"></span>
						</div>
						<br />
						<div class="form-group" id="email_color">
							<label for="inputPassword" class="col-sm-2 control-label">邮箱地址：</label>
							<div class="col-sm-7">
								<input type="text" class="form-control " id="email"
									value="1094596931@qq.com" disabled="disabled">
							</div>
							<span id="email_tip" class="span_setting"></span>
						</div>
						<br />
						<div class="form-group">
							<label for="inputPassword" class="col-sm-2 control-label">选择上传图片</label>
							<div class="col-sm-7">
								<input type="file" class="form-control" id="file"
									style="border: none;" disabled="disabled">
							</div>
						</div>
					</form>
					<br />
					<div class="setting">
						<button class="btn btn-info btn-lg" type="button" onclick="edit()">
							<i class="icon icon-edit "></i> 编辑
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-success btn-lg" type="button"
							onclick="save()">
							<i class="icon icon-save"></i> 保存
						</button>
					</div>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
		
	</div>
</body>
</html>