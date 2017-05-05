
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

<link rel="stylesheet" href="<%=basePath%>CSS/admin4/common.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/feedback.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/common.js"></script>
</head>

<body>
	<div class="panel panel-info">
		<div class="panel-heading">反馈信息管理</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2">
					<select class="form-control" id="first" onchange="select()">
						<option value="">--状态筛选--</option>
						<option>新建</option>
						<option>已处理</option>
						<option>正在处理</option>
					</select>
				</div>
				<div class="col-md-2">
					<select class="form-control" id="second" onchange="select()">
						<option value="">--是否接受--</option>
						<option>是</option>
						<option>否</option>
					</select>
				</div>
				<div class="col-md-7">
					<form class="form-inline">
						<div class="form-group">
							<label for="exampleInputName1">用户编号</label> <input type="text"
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
					</form>
				</div>
			</div>
			<br />
			<table
				class="table table-fixed  table-condensed table-hover table-bordered"
				id="show_feedbackinfo">
				<thead>
					<tr>
						<th><input type="checkbox" onclick="selectAll(this);" />
							&nbsp;全选/取消全选</th>
						<th>反馈用户</th>
						<th>反馈标题</th>
						<th>反馈模块</th>
						<th>具体问题</th>
						<th>反馈建议</th>
						<th>状态</th>
						<th>是否接受</th>
						<th>操作</th>
					</tr>
				</thead>
				<c:if test="${not empty feedback_list}">
					<tbody>
						<c:forEach items="${feedback_list}" var="list" varStatus="count">

							<tr>
								<td><label> <input type="checkbox" name="checkbox">
								</label></td>
								<td>${list.feedbackUsername}</td>
								<td>${list.feedbackTitle}</td>
								<c:choose>
									<c:when test="${ not empty list.feedbackSecond}">
										<td>${list.feedbackFirst} / ${list.feedbackSecond}</td>
									</c:when>
									<c:otherwise>
										<td>${list.feedbackFirst}</td>
									</c:otherwise>
								</c:choose>
								<td>${list.feedbackDesctiption}</td>
								<td>${list.feedbackAdvice}</td>
								<td>${list.feedbackState}</td>
								<td>${list.feedbackAccept}</td>
								<td><a href="#" onclick="deletefeedback(${list.feedbackId})">
										<i class="icon icon-times i_color "></i>删除
								</a> <a href="#" onclick="check(${list.feedbackId})"> <i
										class="icon icon-zoom-in i_color "></i>查看详情
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</c:if>
			</table>
			
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
	</div>
</body>