
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
<script type="text/javascript" src="<%=basePath%>JS/Admin/UserManage.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Admin/common.js"></script>
</head>

<body>
	<div class="panel panel-info">
		<div class="panel-heading">用户信息管理</div>
		<div class="panel-body">
			<form class="form-inline">
				<div class="row">
					<div class="col-md-2">
						<button type="button" class="btn btn-success btn-block"
							onclick="adduser()">
							<i class="icon icon-plus"></i>新增用户
						</button>
					</div>
					<div class="col-md-4"></div>
					<div class="col-md-6">
						<div class="form-group">
							<label for="exampleInputName2">用户编号</label> <input type="text"
								class="form-control" name="userid" placeholder="用户编号">
						</div>
						&nbsp;&nbsp;&nbsp;
						<div class="form-group">
							<label for="exampleInputEmail2">昵称</label> <input type="text"
								class="form-control" name="username" placeholder="昵称">
						</div>
						<button type="button" class="btn btn-info" onclick="search()">
							<i class=" icon-search"></i>查 找
						</button>
					</div>
				</div>
			</form>
			<br />
			<table
				class="table table-fixed table-condensed table-hover table-bordered"
				id="show_userinfo">
				<thead>
					<tr>
						<th><input type="checkbox" onclick="selectAll(this);" />
							&nbsp;全选/取消全选</th>
						<th>用户编号</th>
						<th>昵称</th>
						<th>电话</th>
						<th>邮箱</th>
						<th>操作</th>
					</tr>
				</thead>
				<c:if test="${not empty AllUser_list}">
					<tbody>
						<c:forEach items="${AllUser_list}" var="list" varStatus="count">
							<c:choose>
								<c:when test="${count.count%2==1}">
									<tr>
										<td><label> <input type="checkbox"
												name="checkbox">
										</label></td>
										<td>${list.userid}</td>
										<td>${list.username}</td>
										<td>${list.userphone}</td>
										<td>${list.useremail}</td>
										<td><a id="${list.userid}" href="#"
											onclick="deleteUser(${list.userid})"> <i
												class="icon icon-times i_color "></i>删除
										</a></td>
									</tr>
								</c:when>
								<c:otherwise>
									<tr>
										<td><label> <input type="checkbox"
												name="checkbox">
										</label></td>
										<td>${list.userid}</td>
										<td>${list.username}</td>
										<td>${list.userphone}</td>
										<td>${list.useremail}</td>
										<td><a id="${list.userid}" href="#"
											onclick="deleteUser(${list.userid})"> <i
												class="icon icon-times i_color "></i>删除
										</a></td>
									</tr>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</tbody>
				</c:if>
			</table>
		</div>
		<div class="container">
			<ul class="pager pager-pills pager-loose" id="pagecontent">
				<li class="previous"><a href="#">首页</a></li>
				<c:forEach items="${count_list}" varStatus="page_count">
					<c:choose>
						<c:when test="${page_count.count<=13}">
							<c:choose>
								<c:when test="${page_count.count==1}">
									<li class="active"><a href="#"
										onclick="page(${page_count.count})">${page_count.count}</a></li>
								</c:when>
								<c:otherwise>
									<li><a href="#" onclick="page(${page_count.count})">${page_count.count}</a></li>
								</c:otherwise>
							</c:choose>
						</c:when>
					</c:choose>
				</c:forEach>
				<c:choose>
					<c:when test="${not empty pagecontent_user }">
						<li class="disabled "><a href="#"><span
								style="color: red;">共${pagecontent_user}页</span></a></li>
					</c:when>
					<c:otherwise>
						<li class="disabled "><a href="#"><span
								style="color: red;">共 0 页</span></a></li>
					</c:otherwise>
				</c:choose>
				<span style="margin-left: 20px;">跳转到</span>
				<input style="width: 50px; margin-left: 6px; text-align: center;"
					type="text" />
				<span>页</span>
				<button class="btn btn-warning " type="button">确认</button>
			</ul>
		</div>
	</div>
</body>