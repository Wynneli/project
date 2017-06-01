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
	<div class="panel panel-success">
		<div class="panel-heading">参考答案管理</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2">
					<button class="btn btn-danger btn-block" type="button"
						onclick="Batchdelete()">
						<i class="icon icon-trash"></i> 批量删除
					</button>
				</div>
				<div class="col-md-2">
					<button class="btn btn-success btn-block" type="button"
						onclick="Add()">
						<i class="icon icon-plus"></i> 新增
					</button>
				</div>
				<div class="col-md-6"></div>
				<div class="col-md-2">
					<select class="form-control" id="first" onchange="select('docx')">
						<option value="">--筛选--</option>
						<option>六级</option>
						<option>四级</option>
					</select>
				</div>
			</div>
			<br />

			<table
				class="table table-striped table-bordered   table-responsive  table-hover"
				id="listeninfo">
				<thead>
					<tr>
						<th><input type="checkbox" onclick="selectAll(this);" />
							&nbsp;全选/全不选</th>
						<th>文件编号</th>
						<th>文件类型</th>
						<th>文件名</th>
						<th>文件大小</th>
						<th>上传时间</th>
						<th>下载量</th>
						<th>文件类别</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="mytbody">
					<c:if test="${not empty listen_list}">
						<c:forEach items="${listen_list}" var="list" varStatus="count">
							<tr id="${list.fileid}">
								<td><label> <input type="checkbox" name="checkbox"
										value="${list.fileid}">
								</label></td>
								<td>${list.fileid}</td>
								<td>${list.filetype}</td>
								<td>${list.filerealname}</td>
								<td>${list.filesize}</td>
								<td>${list.filetime}</td>
								<td>${list.filedownloadsum}</td>
								<td>${list.filetypes}</td>
								<td><a id="${list.fileid}"
									href="<%=basePath%>file/editListen/${list.fileid}"
									target="myframe"><button class="btn btn-mini btn-info">
											<i class="icon icon-edit"></i> 编辑
										</button></a> &nbsp;&nbsp;&nbsp;
									<button class="btn btn-mini btn-danger"
										onclick="deleteListen(${list.fileid})" type="button">
										<i class="icon icon-trash"></i> 删除
									</button></td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>