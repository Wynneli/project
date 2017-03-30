
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">


<link rel="stylesheet" href="<%=basePath%>CSS/Admin/usermanage.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Admin/nav.js"></script>
</head>

<body>
	<div class="row">
		<table class="table table-fixed table-striped table-hover table-borderless">
			<thead>
				<tr>
					<th style="padding-left: 20px;">用户编号</th>
					<th>昵称</th>
					<th>电话</th>
					<th>邮箱</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="padding-left: 20px;">123123</td>
					<td>wynne</td>
					<td>13660342145</td>
					<td>2138012@qq.com</td>
					<td><a href="#"> <i class="icon icon-times i_color "></i>删除</a></td>
				</tr>
			</tbody>
		</table>
	</div>
</body>