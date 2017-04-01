
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
<script type="text/javascript" src="<%=basePath%>JS/Admin/CommentManage.js"></script>
</head>

<body>
	<div class="row">
		<div class="col-md-2">
			用户编号：<input type="text" class="form-control" name="userid"
				placeholder="用户编号">
		</div>
		<div class="col-md-2">
			昵称：<input type="text" class="form-control" name="username"
				placeholder="昵称">
		</div>
		<div class="col-md-2">
			<button class="btn btn-warning btn-lg  btn-block" onclick="search()"
				style="margin-top: 10px;" type="button">查找</button>
		</div>
	</div>

	<div class="row">
		<table class="table table-fixed  table-hover table-borderless"
			id="show_userinfo">
			<thead>
				<tr>
					<th style="padding-left: 20px;">评论编号</th>
					<th>主题</th>
					<th>评论内容</th>
					<th>评论对象</th>
					<th>回复对象</th>
					<th>时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<c:if test="${not empty allComment_list}">
				<tbody>
					<c:forEach items="${allComment_list}" var="list" varStatus="count" begin="0" end="9">
						<c:choose>
							<c:when test="${count.count%2==1}">
								<tr>
									<td style="padding-left: 20px;">${list.commentId}</td>
									<td >${list.topicType}</td>
									<td>${list.commentContent}</td>
									<td>${list.commentFromUsername}</td>
									<td>${list.commentToUsername}</td>
									<td>${time_list.commentTime}</td>
									<td><a id="${list.commentId}" href="#" onclick="deleteUser(${list.commentId})"> <i class="icon icon-times i_color "></i>删除
									</a></td>
								</tr>
							</c:when>
							<c:otherwise>
								<tr class="active">
									<td style="padding-left: 20px;">${list.commentId}</td>
									<td >${list.topicType}</td>
									<td>${list.commentContent}</td>
									<td>${list.commentFromUsername}</td>
									<td>${list.commentToUsername}</td>
									<td>${time_list.commentTime}</td>
									<td><a id="${list.commentId}" href="#" onclick="deleteUser(${list.commentId})"> <i class="icon icon-times i_color "></i>删除
									</a></td>
								</tr>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</tbody>
			</c:if>
		</table>
	</div>
</body>