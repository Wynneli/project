
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
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/common.js"></script>
</head>

<body>
	<div class="panel panel-info">
		<div class="panel-heading">反馈信息</div>
		<div class="panel-body">
			
			<br />
			<table
				class="table datatable   table-condensed table-hover table-bordered"
				id="show_feedbackinfo">
				<thead>
					<tr>
						<th>反馈标题</th>
						<th>反馈模块</th>
						<th>具体问题</th>
						<th>反馈建议</th>
						<th>状态</th>
						<th>是否接受</th>
					</tr>
				</thead>
				<tbody id="mytbody">
					<c:if test="${not empty feedback_list2}">
						<c:forEach items="${feedback_list2}" var="list" varStatus="count">
							<tr>
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
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
	</div>
</body>