
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
<script type="text/javascript" src="<%=basePath%>JS/admin4/Article.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/common.js"></script>
</head>
<body>
	<div class="container">
		<div class="panel panel-info">
			<div class="panel-heading ">文章信息修改</div>
			<div class="panel-body">
				<form class="form-horizontal">
					<div class="form-group" id="chineseinfo">
						<label for="exampleInputPassword4" class="col-sm-2 ">中文</label>
						<div class="col-md-10 col-sm-7">
							<textarea class="form-control" id="chinese" rows="7">${article.articleChinese}</textarea>
						</div>
					</div>
					<div class="form-group" id="englishinfo">
						<label for="exampleInputPassword4" class="col-sm-2 ">英文</label>
						<div class="col-md-10 col-sm-7">
							<textarea class="form-control" id="english" rows="7"></textarea>
						</div>
					</div>

					<br />
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-5">
							<button onclick="add()" type="button"
								class="btn btn-success btn-block">
								<i class="icon icon-check-sign"></i>&nbsp;&nbsp; 确认
							</button>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-5" id="returndiv">
							<a href="<%=basePath%>article/returnback" target="myframe">
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
</body>