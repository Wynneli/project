
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
<script type="text/javascript"
	src="<%=basePath%>JS/admin4/comment.js"></script>
</head>

<body>
	<div class="panel panel-info">
		<div class="panel-heading">评论管理</div>
		<div class="panel-body">
			<div class="row">
				<form class="form-inline">
					&nbsp;&nbsp;&nbsp;
					<div class="form-group">
						<label for="exampleInputEmail2">昵称</label> <input type="text"
							class="form-control" name="username" placeholder="昵称">
					</div>

					<button type="button" class="btn btn-info" onclick="search()">
						<i class=" icon-search"></i>查 找
					</button>
				</form>
			</div>

			<div class="row">
				<table class="table table-fixed  table-hover "
					id="show_userinfo">
					<thead>
						<tr id="${list.commentId}">
							<th>评论编号</th>
							<th>主题</th>
							<th>评论内容</th>
							<th>评论对象</th>
							<th>回复对象</th>
							<th>操作</th>
						</tr>
					</thead>
					<c:if test="${not empty allComment_list}">
						<tbody id="mytbody">
							<c:forEach items="${allComment_list}" var="list"
								varStatus="count">
								<tr id="${list.commentId}">
									<td>${list.commentId}</td>
									<td>${list.topicType}</td>
									<td>${list.commentContent}</td>
									<td>${list.commentFromUsername}</td>
									<td>${list.commentToUsername}</td>
									<td><button class="btn btn-mini btn-danger"
											onclick="deleteComment(${list.commentId})">
											<i class="icon icon-trash"></i>删除
										</button></td>
								</tr>
							</c:forEach>
						</tbody>
					</c:if>
				</table>
			</div>
		</div>
	</div>
</body>