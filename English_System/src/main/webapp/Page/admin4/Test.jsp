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
<script type="text/javascript" src="<%=basePath%>JS/admin4/test.js"></script>


</head>
<body>
	<div class="panel panel-info">
		<c:if test="${ not empty cetType}">
			<div class="panel-heading">${cetType}</div>
		</c:if>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2">
					<button class="btn btn-danger btn-block" type="button"
						onclick="Batchdelete()">
						<i class="icon icon-trash"></i> 批量删除
					</button>
				</div>
				<div class="col-md-2">
					<button type="button" class="btn btn-success btn-block"
						data-toggle="modal" data-target="#myLgModal">
						<i class="icon icon-plus"></i>新增用户
					</button>
					<div class="modal fade" id="myLgModal">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="panel panel-info">
									<div class="panel-heading">新增试题信息</div>
									<div class="panel-body">
										<form class="form-horizontal" id="userform">
											<div class="row">
												<div class="col-md-1"></div>
												<div class="col-md-8">
													<div class="input-group" id="cetid">
														<div class="input-group-addon">
															试题编号 <i class="icon icon-info-sign" style="color: blue;"></i>
														</div>
														<input type="text" name="cetid" class="form-control"
															id="inputEmail3"
															placeholder="填写格式，例如2015年6月四第二套：cet4_2015_6_1">
													</div>
												</div>
											</div>
											<br /> <span id="checkcetid" class="span"
												style="color: red; padding-left: 100px;"></span> <br /> <br />
											<div class="row">
												<div class="col-md-1"></div>
												<div class="col-md-8">
													<div class="input-group" id="cetinfo">
														<div class="input-group-addon">
															试题信息 <i class="icon icon-info-sign" style="color: blue;"></i>
														</div>
														<input type="text" name="cetinfo" class="form-control"
															placeholder="请填写是哪一年几月第几套，如2017年四级六月第二套">
													</div>
												</div>
											</div>
											<br /> <span id="checkcetinfo" class="span"
												style="color: red; padding-left: 100px;"> </span> <br /> <br />
											<button type="button" class="btn btn-success btn-block"
												onclick="addcet()">确认</button>

										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-2">
					<a href="<%=basePath%>cet/addinfo" target="myframe">
						<button class="btn btn-success btn-block" type="button">
							<i class="icon icon-plus"></i> 新增试题
						</button>
					</a>
				</div>
			</div>
			<br />

			<table
				class="table table-striped table-bordered   table-responsive  table-hover"
				id="answerinfo">
				<thead>
					<tr>
						<th><input type="checkbox" onclick="selectAll(this);" />
							&nbsp;全选/全不选</th>
						<th>序号</th>
						<th>试题编号</th>
						<th>试题</th>
						<th>新建时间</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="mytbody">
					<c:if test="${not empty cet_list}">
						<c:forEach items="${cet_list}" var="list" varStatus="count">
							<tr id="${list.cetPrimary}">
								<td><label> <input type="checkbox" name="checkbox"
										value="${list.cetPrimary}">
								</label></td>
								<td>${list.cetPrimary}</td>
								<td>${list.cetid}</td>
								<td>${list.cetInfo}</td>
								<td>${list.cetEntend1}</td>
								<td><a href="<%=basePath%>cet/editCet/${list.cetid}"
									target="myframe"><button class="btn btn-mini btn-info">
											<i class="icon icon-edit"></i> 编辑试题信息
										</button></a> &nbsp;&nbsp;&nbsp;
									<button class="btn btn-mini btn-danger"
										onclick="deleteCet(${list.cetPrimary})" type="button">
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