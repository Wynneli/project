
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
<script type="text/javascript" src="<%=basePath%>JS/admin4/Article.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/common.js"></script>
</head>

<body>
	<div class="panel panel-info">
		<div class="panel-heading">反馈信息管理</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2">
					<button class="btn btn-danger btn-block" type="button"
						onclick="Batchdelete()">
						<i class="icon icon-trash"></i> 批量删除
					</button>
				</div>
				<div class="col-md-2">
					<a href="<%=basePath%>Page/admin4/add_Article.jsp" id="add_answer">
						<button class="btn btn-success btn-block" type="button">
							<i class="icon icon-plus"></i> 新增文章
						</button>
					</a>
				</div>
			</div>
			<br />
			<table
				class="table datatable table-fixed  table-condensed table-hover table-bordered"
				id="show_articleinfo">
				<thead>
					<tr>
						<th><input type="checkbox" onclick="selectAll(this);" />
							&nbsp;全选/全不选</th>
						<th>文章编号</th>
						<th>中文</th>
						<th>英文</th>
						<th>时间</th>
						<th>浏览量</th>
						<th>点赞次数</th>
						<th>操作</th>
					</tr>
				</thead>
				<c:if test="${not empty article_list}">
					<tbody id="mytbody">
						<c:forEach items="${article_list}" var="list" varStatus="count">
							<tr id="${list.articleId}">
								<td><label> <input type="checkbox" name="checkbox"
										value="${list.articleId}">
								</label></td>
								<td>${list.articleId}</td>
								<td>${list.articleChinese}</td>
								<td>${list.articleEnglish}</td>
								<td>${list.articleTime}</td>
								<td>${list.articleScan}</td>
								<td>${list.articleLike}</td>
								<td><a target="myframe"
									href="<%=basePath%>article/articleDetails/${list.articleId}"><button
											class="btn btn-mini btn-info">
											<i class="icon icon-edit"></i>编辑
										</button>&nbsp; </a>
									<button onclick="deletearticle(${list.articleId})"
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