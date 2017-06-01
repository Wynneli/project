
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
<link rel="stylesheet"
	href="<%=basePath%>CSS/Third_Party/zui.datatable.min.css">

<link rel="stylesheet" href="<%=basePath%>CSS/admin4/common2.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.datatable.min.js"></script>
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
			</div>
			<br />
			<table
				class="table datatable table-fixed  table-condensed table-hover table-bordered"
				id="show_feedbackinfo">
				<thead>
					<tr>
						<th><input type="checkbox" onclick="selectAll(this);" />
							&nbsp;全选/全不选</th>
						<th>反馈用户</th>
						<th>反馈标题</th>
						<th>反馈模块</th>
						<th>具体问题</th>
						<th class="flex-col">反馈建议</th>
						<th class="flex-col">状态</th>
						<th class="flex-col">是否接受</th>
						<th>操作</th>
					</tr>
				</thead>
				<c:if test="${not empty feedback_list}">
					<tbody id="mytbody">
						<c:forEach items="${feedback_list}" var="list" varStatus="count">
							<tr id="${list.feedbackId}">
								<td><label> <input type="checkbox" name="checkbox">
								</label></td>
								<td>${list.feedbackUsername}</td>
								<td>${list.feedbackTitle}</td>
								<c:choose>
									<c:when test="${ not empty list.feedbackSecond}">
										<td>${list.feedbackFirst}/${list.feedbackSecond}</td>
									</c:when>
									<c:otherwise>
										<td>${list.feedbackFirst}</td>
									</c:otherwise>
								</c:choose>
								<td>${list.feedbackDesctiption}</td>
								<td>${list.feedbackAdvice}</td>
								<td>${list.feedbackState}</td>
								<td>${list.feedbackAccept}</td>
								<td><a
									href="<%=basePath%>feedback/feedbackDetails/${list.feedbackId}"><button
											class="btn btn-mini btn-info">
											<i class="icon icon-edit"></i>编辑
										</button>&nbsp; </a>
									<button onclick="deletefeedback(${list.feedbackId})"
										class="btn btn-mini btn-danger">
										<i class="icon icon-trash  "></i>删除
									</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</c:if>
			</table>
		</div>
	</div>
</body>