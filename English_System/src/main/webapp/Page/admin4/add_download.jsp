<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<script type="text/javascript"
	src="<%=basePath%>JS/admin4/add_download.js"></script>
</head>
<body>
	<div class="panel panel-success">
		<div class="panel-heading">新增下载内容</div>
		<div class="panel-body">
			<form class="form-horizontal" action="<%=basePath%>file/add_new" method="post" enctype="multipart/form-data">
				<div class="form-group" id="filename">
					<label for="exampleInputAccount9" class="col-sm-1 required">文件名称</label>
					<div class="col-md-7 col-sm-10 ">
						<input type="text" class="form-control" name="filename"
							placeholder="不填写则使用原文件名"> <br /> <span id="filenameinfo"
							style="color: red;"></span>
					</div>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword4" class="col-sm-1 required">新的文件:</label>
					<div class="col-md-3 col-sm-10">
						<input type="file" name="file" width="180px">
					</div>
					<button class="btn btn-info" type="button">
						<i class="icon icon-save"></i> 确认
					</button>
				</div>
			</form>
			<br />
		</div>
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<button class="btn btn-success btn-block" id="part1save"
					value='${answer.aCetId}' onclick="editAndsavepart1()" type="button">
					<i class="icon icon-save "></i> 保 存
				</button>
			</div>
		</div>
	</div>
</body>
</html>