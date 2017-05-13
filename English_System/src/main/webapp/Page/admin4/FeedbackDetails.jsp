
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
	href="<%=basePath%>CSS/admin4/feedbackDetails.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/feedback.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/common.js"></script>
</head>

<body>
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading ">意见及建议反馈详细信息</div>
			<div class="panel-body">
				<div class="panel panel-success">
					<div class="panel-heading ">提交人信息及问题</div>
					<div class="panel-body">
						<form class="form-horizontal" id="feedbackform">
							<div class="form-group">
								<label for="exampleInputAccount9" class="col-sm-2 ">用 户
									名</label>
								<div class="col-md-6 col-sm-6">
									<input type="text" class="form-control"
										id="exampleInputAccount9"
										value="${feedback.feedbackUsername}">
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword4" class="col-sm-2 ">问题模块</label>
								<div class="col-md-6 col-sm-7">
									<c:choose>
										<c:when test="${not empty feedback.feedbackSecond}">
											<input type="text" class="form-control"
												id="exampleInputPassword4"
												value="${feedback.feedbackFirst} / ${feedback.feedbackSecond}">
										</c:when>
										<c:otherwise>
											<input type="text" class="form-control"
												id="exampleInputPassword4"
												value="${feedback.feedbackFirst}">
										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword4" class="col-sm-2 ">反馈标题</label>
								<div class="col-md-6 col-sm-7">
									<input type="text" class="form-control"
										id="exampleInputPassword4" value="${feedback.feedbackTitle}">
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword4" class="col-sm-2 ">反馈时间</label>
								<div class="col-md-6 col-sm-7">
									<input type="text" class="form-control"
										id="exampleInputPassword4"
										value="${feedback.feedbackStime}">
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword4" class="col-sm-2 ">处理时间</label>
								<div class="col-md-6 col-sm-7">
									<input type="text" class="form-control"
										id="exampleInputPassword4"
										value="${feedback.feedbackHtime}">
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword4" class="col-sm-2 ">其 他</label>
								<div class="col-md-6 col-sm-7">
									<input type="text" class="form-control"
										id="exampleInputPassword4"
										value="${feedback.feedbackOther}">
								</div>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword4" class="col-sm-2 ">反馈描述</label>
								<div class="col-md-6 col-sm-7">
									<textarea class="form-control" rows="3">${feedback.feedbackDesctiption}</textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword4" class="col-sm-2 ">反馈建议</label>
								<div class="col-md-6 col-sm-7">
									<textarea class="form-control" rows="3">${feedback.feedbackAdvice}</textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputAddress1" class="col-sm-2 required">状
									态</label>
								<div class="col-sm-3">
									<select class="form-control" id="state">
										<c:choose>
											<c:when test="${feedback.feedbackState=='新建'}">
												<option selected="selected">新建</option>
												<option>正在处理</option>
												<option>已处理</option>

											</c:when>
											<c:when test="${feedback.feedbackState=='正在处理'}">
												<option>新建</option>
												<option selected="selected">正在处理</option>
												<option>已处理</option>
											</c:when>
											<c:otherwise>
												<option>新建</option>
												<option>正在处理</option>
												<option selected="selected">已处理</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>
								<label for="exampleInputAddress1" class="col-sm-2 required">是否接受</label>
								<div class="col-sm-3">
									<select class="form-control" id="accept">
										<c:choose>
											<c:when test="${feedback.feedbackAccept=='是'}">
												<option selected="selected">是</option>
												<option>否</option>
											</c:when>
											<c:otherwise>
												<option>是</option>
												<option selected="selected">否</option>
											</c:otherwise>
										</c:choose>
									</select>
								</div>
							</div>
							<br />
							<div class="row">
								<div class="col-md-1"></div>
								<div class="col-md-5">
									<button onclick="edit(${feedback.feedbackId})"
										type="button" class="btn btn-success btn-block">
										<i class="icon icon-check-sign"></i>&nbsp;&nbsp; 提交
									</button>
								</div>
								<div class="col-md-1"></div>
								<div class="col-md-5" id="returndiv">
									<a href="<%=basePath%>feedback/returnback" target="myframe">
										<button type="button" class="btn btn-warning btn-block">
											<i class="icon icon-reply"></i>&nbsp;&nbsp; 返回
										</button>
									</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>