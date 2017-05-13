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
<!-- DataTables CSS -->
<link rel="stylesheet" type="text/css"
	href="http://cdn.datatables.net/1.10.15/css/jquery.dataTables.css">

<!-- jQuery -->
<script type="text/javascript" charset="utf8"
	src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

<!-- DataTables -->
<script type="text/javascript" charset="utf8"
	src="http://cdn.datatables.net/1.10.15/js/jquery.dataTables.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/admin4/DataTableCommon.js"></script>


</head>
<body>
	<div class="panel panel-success">
		<div class="panel-heading">四级词汇信息管理</div>
		<div class="panel-body">
			<table class="table datatable table-fixed  table-hover" id="myTable">
				<thead>
					<tr>
						<th><input type="checkbox" onclick="selectAll(this);" />
							&nbsp;全选/取消全选</th>
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
							<tr>
								<td><label> <input type="checkbox" name="checkbox"
										value="${list.cet4Id}">
								</label></td>
								<td id="CetId">${list.cet4Id}</td>
								<td>${list.cet4Vocabulary}</td>
								<td>${list.cet4Pronunciation}</td>
								<td>${list.cet4Meaning}</td>
								<td><a id="${list.cet4Id}"
									href="<%=basePath%>admin/cet_edit/${list.cet4Id}"
									target="myframe"> <i class="icon icon-edit i_green"></i> 编辑
								</a>&nbsp;&nbsp;&nbsp;<a href="#"
									onclick="cet_delete(${list.cet4Id})"> <i
										class="icon icon-trash i_red"></i> 删除
								</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</c:if>
			</table>
		</div>
	</div>
</body>
</html>