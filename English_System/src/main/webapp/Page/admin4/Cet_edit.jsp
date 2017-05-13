
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
<link rel="stylesheet" href="<%=basePath%>CSS/admin4/Cet_edit.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/Cet_edit.js"></script>
</head>

<body>
	<div class="container">
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-6">
				<div class="col-xs-7">
					词汇编号
					<textarea id="cet4Id" class="form-control" rows="3" readonly>${cet4Custom.cet4Id}</textarea>
				</div>
			</div>
			<div class="col-md-6">
				<div class="col-xs-7">
					词汇
					<textarea id="cet4Vocabulary" class="form-control" rows="3">${cet4Custom.cet4Vocabulary}</textarea>
				</div>
			</div>
		</div>
		<div class="row" style="margin-top: 50px;">
			<div class="col-md-6">
				<div class="col-xs-7">
					音标
					<textarea id="cet4Pronunciation" class="form-control" rows="3">${cet4Custom.cet4Pronunciation}</textarea>
				</div>
			</div>
			<div class="col-md-6">
				<div class="col-xs-7">
					词意
					<textarea id="cet4Meaning" class="form-control" rows="3">${cet4Custom.cet4Meaning}</textarea>
				</div>
			</div>
		</div>
		&nbsp;&nbsp;&nbsp;
		<div class="row" style="margin-top: 100px;">
			<div class="col-md-6">
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-5">
						<button class="btn btn-success btn-block" type="button"
							onclick="editAndsave()">
							<i class="icon icon-save"></i> 修改并保存
						</button>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-5">
							<a href="<%=basePath%>admin/return_cet_info/${cet4Custom.cet4Id}"
								target="myframe">
								<button class="btn btn-info btn-block" type="button">
									<i class="icon icon-reply"></i> 返回
								</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>