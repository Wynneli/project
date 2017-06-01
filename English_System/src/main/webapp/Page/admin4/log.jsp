
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


<link rel="stylesheet" href="<%=basePath%>CSS/Admin/common.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/comment.js"></script>
</head>

<body>
	<div class="panel panel-info">
		<div class="panel-heading">评论管理</div>
		<div class="panel-body">
			<div class="row">
				<table class="table table-fixed  table-hover " id="show_userinfo">
					<thead>
						<tr>
							<th>日志编号</th>
							<th>日志操作者</th>
							<th>具体操作</th>
							<th>时间</th>
						</tr>
					</thead>
					<c:if test="${not empty list}">
						<tbody id="mytbody">
							<c:forEach items="${list}" var="list" varStatus="count">
								<tr id="${list.userid}">
									<td>${list.userid}</td>
									<td>${list.username}</td>
									<td>${list.useroperate}</td>
									<td>${list.time}</td>
								</tr>
							</c:forEach>
						</tbody>
					</c:if>
				</table>
			</div>
		</div>
	</div>
</body>