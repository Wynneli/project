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
<link rel="stylesheet" href="<%=basePath%>CSS/user/user.css">
<link rel="stylesheet"
	href="<%=basePath%>CSS/fonts/font-awesome.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/user/pintuer.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/User/user.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong><span class="icon-key"></span> 修改会员密码</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x">
				<div class="form-group">
					<div class="label">

						<label for="sitename">会员账号：</label>

					</div>
					<div class="field">
						<c:if test="${not empty user}">
							<label style="line-height: 33px;" id="username">${user.username}</label>
						</c:if>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">原密码：</label>
					</div>
					<div id="pass2">
						<input type="password" class="input " name="password" size="50"
							placeholder="请输入原密码" style="width: 280px;"
							style="border:1px solid #58b195;" /> <span class="span_setting"
							id="pass"></span>
					</div>

				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">新密码：</label>
					</div>
					<div id="newpass2">
						<input type="password" class="input " name="newpassword" size="50"
							placeholder="请输入新密码" style="width: 280px;" /> <span
							class="span_setting" id="newpass"></span>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label for="sitename">确认新密码：</label>
					</div>
					<div id="renewpass2">
						<input type="password" class="input " name="renewpassword"
							size="50" placeholder="请再次输入新密码" style="width: 280px;" /> <span
							class="span_setting" id="renewpass"></span>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main " type="submit"
							onclick="changepassowrd();return false;">
							<i class="icon-check"></i> 提交
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>