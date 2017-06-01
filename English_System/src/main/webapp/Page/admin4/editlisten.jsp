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
<script type="text/javascript" src="<%=basePath%>JS/admin4/listen.js"></script>
</head>

<body>
	<div class="panel panel-info">
		<div class="panel-heading">信息编辑</div>
		<div class="panel-body">

			<c:if test="${not empty download}">
				<form class="form-horizontal" id="uploadForm">
					<div class="form-group" id="filername">
						<label for="exampleInputPassword4" class="col-sm-1 required">文件名</label>
						<div class="col-md-6 col-sm-10">
							<input type="text" class="form-control" id="filerealname"
								value="${download.filerealname}" name="filerealname">
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword4" class="col-sm-1 required">下载量</label>
						<div class="col-md-6 col-sm-10">
							<input type="text" class="form-control" disabled="disabled"
								value="${download.filedownloadsum}" id="filedownloadsum"
								name="filedownloadsum">
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword4" class="col-sm-1 required">下载路径</label>
						<div class="col-md-6 col-sm-10">
							<input type="text" class="form-control" disabled="disabled"
								id="filepath" value="${download.filepath}" name="filepath">
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword4" class="col-sm-1 required">文件名(加扩展名)</label>
						<div class="col-md-6 col-sm-10">
							<input type="text" class="form-control" disabled="disabled"
								id="filename" value="${download.filename}" name="filename">
							<br /> <span style="color: red;"></span>
						</div>
					</div>

					<div class="form-group">
						<label for="exampleInputPassword4" class="col-sm-1 required">上传时间</label>
						<div class="col-md-6 col-sm-10">
							<input type="text" class="form-control" disabled="disabled"
								value="${download.filetime}" name="filetime">
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword4" class="col-sm-1 required">文件类型</label>
						<div class="col-md-3 col-sm-10">
							<select class="form-control" id="first" onchange="select()">
								<option selected="selected">${download.filetype}</option>
							</select>
						</div>
					</div>
				</form>
				<form action="<%=basePath%>file/uploadfile/${download.fileid}" method="post"
					enctype="multipart/form-data">
					<div class="form-group">
						<label for="exampleInputPassword4" class="col-sm-1 required">新的文件:</label>
						<div class="col-md-3 col-sm-10">
							<input type="file" name="file" width="180px">
						</div>
						<button class="btn btn-info" type="submit">
							<i class="icon icon-save"></i>上传
						</button>
					</div>
				</form>
			</c:if>

			<div class="row" style="margin-top: 100px;">
				<div class="col-md-6">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-5">
							<button class="btn btn-success btn-block" type="button"
								onclick="editAndsave(${download.fileid})">
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
								<button class="btn btn-danger  btn-block"
									onclick="deleteListen2(${download.fileid})" type="button">
									<i class="icon icon-trash"></i> 删除
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>