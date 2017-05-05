
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
<script type="text/javascript" src="<%=basePath%>JS/Admin/NewCet.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Admin/common.js"></script>

</head>

<body>
	<div class="panel panel-success">
		<div class="panel-heading">四级词汇信息管理</div>
		<div class="panel-body">
			<table class="table table-fixed  table-hover" id="show_cetinfo">
				<thead>
					<tr>
						<th style="padding-left: 35px;"><input type="checkbox"
							onclick="selectAll(this);" /> &nbsp;全选/取消全选</th>
						<th>词汇编号</th>
						<th>词汇</th>
						<th>音标</th>
						<th>词意</th>
						<th>操作</th>
					</tr>
				</thead>
				<c:if test="${not empty cet4_list}">
					<tbody>
						<c:forEach items="${cet4_list}" var="list" varStatus="count">
							<c:choose>
								<c:when test="${count.count%2==1}">
									<tr>
										<td ><label> <input
												type="checkbox" name="checkbox" value="${list.cet4Id}">
										</label></td>
										<td id="CetId">${list.cet4Id}</td>
										<td>${list.cet4Vocabulary}</td>
										<td>${list.cet4Pronunciation}</td>
										<td>${list.cet4Meaning}</td>
										<td><a id="${list.cet4Id}"
											href="<%=basePath%>admin/cet_edit/${list.cet4Id}"
											target="myframe"> <i class="icon icon-edit i_color "></i>
												编辑
										</a></td>
									</tr>
								</c:when>
								<c:otherwise>
									<tr >
										<td ><label> <input
												type="checkbox" name="checkbox" value="${list.cet4Id}">
										</label></td>
										<td>${list.cet4Id}</td>
										<td>${list.cet4Vocabulary}</td>
										<td>${list.cet4Pronunciation}</td>
										<td>${list.cet4Meaning}</td>
										<td><a id="${list.cet4Id}"
											href="<%=basePath%>admin/cet_edit/${list.cet4Id}"
											target="myframe"> <i class="icon icon-edit i_color "></i>
												编辑
										</a></td>
									</tr>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</tbody>
				</c:if>
			</table>
		</div>
		<div class="row" id="pagecontent">
			<div class="container">
				<ul class="pager pager-pills pager-loose" id="pagecontent2">
					<c:forEach items="${cet4list}" varStatus="count">
						<c:choose>
							<c:when test="${count.count<=14}">
								<c:choose>
									<c:when test="${count.count==1}">
										<li class="active"><a href="#"
											onclick="page_cet(${count.count})">${count.count}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="#" onclick="page_cet(${count.count})">${count.count}</a></li>
									</c:otherwise>
								</c:choose>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:choose>
						<c:when test="${not empty cet4page }">
							<li class="disabled "><a href="#"><span id="maxpage"
									style="color: red;">共${cet4page}页</span></a></li>
						</c:when>
						<c:otherwise>
							<li class="disabled "><a href="#"><span
									style="color: red;">共 0 页</span></a></li>
						</c:otherwise>
					</c:choose>
					<li class="disabled "><a href="#"><span id="currentpage"
							style="color: black">当前页：1</span></a></li>
					<span style="margin-left: 20px;">跳转到</span>
					<input name="page" id="pages"
						style="width: 50px; margin-left: 6px; text-align: center;"
						type="text" />
					<span>页</span>
					<button class="btn btn-warning " onclick="search_cet_page()"
						type="button">确认</button>
				</ul>
			</div>
		</div>
	</div>
</body>