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
<link rel="stylesheet" href="<%=basePath%>CSS/user/showcet.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="panel panel-info">
		<div class="panel-heading" style="color: black;">已做四级测试试题情况</div>
		<div class="panel-body">
			<table
				class="table table-hover table-bordered  table-responsive table-fixed">
				<thead>
					<tr>
						<th>序号</th>
						<th>测试</th>
						<th>选择题数量</th>
						<th>正确数量</th>
						<th>错误数量</th>
						<th>正确率</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>2016年6月四级第一套</td>
						<td>50</td>
						<td>14</td>
						<td>36</td>
						<td>30%</td>
						<td><a href="#"><i class="icon icon-zoom-in"></i>查看试题</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><i
								class="icon icon-zoom-in"></i>查看答案</a></td>
					</tr>
					<tr>
						<td>2</td>
						<td>2016年6月四级第二套</td>
						<td>50</td>
						<td>14</td>
						<td>36</td>
						<td>30%</td>
						<td><a href="#"><i class="icon icon-zoom-in"></i>查看试题</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><i
								class="icon icon-zoom-in"></i>查看答案</a></td>
					</tr>
					<tr>
						<td>3</td>
						<td>2016年6月四级第三套</td>
						<td>50</td>
						<td>14</td>
						<td>36</td>
						<td>30%</td>
						<td><a href="#"><i class="icon icon-zoom-in"></i>查看试题</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><i
								class="icon icon-zoom-in"></i>查看答案</a></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="panel-footer"></div>
	</div>
</body>
</html>