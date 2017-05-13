
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

<link rel="stylesheet" href="<%=basePath%>CSS/admin4/usermanage.css">
<link rel="stylesheet" href="<%=basePath%>CSS/admin4/common.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/user.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/common.js"></script>
</head>

<body>
	<div class="panel panel-info">
		<div class="panel-heading">用户信息管理</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2">
					<button type="button" class="btn btn-success btn-block"
						data-toggle="modal" data-target="#myLgModal">
						<i class="icon icon-plus"></i>新增用户
					</button>
					<div class="modal fade" id="myLgModal">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<div class="panel panel-info">
									<div class="panel-heading">新增用户信息</div>
									<div class="panel-body">
										<form class="form-horizontal" id="userform">
											<div class="row">
												<div class="col-md-1"></div>
												<div class="col-md-8">
													<div class="input-group" id="user">
														<div class="input-group-addon">
															&nbsp;用&nbsp;户&nbsp;名&nbsp;&nbsp; <i
																class="icon icon-user i_color2"></i>
														</div>
														<input type="text" name="user" class="form-control"
															id="inputEmail3" placeholder="用户名">
													</div>
												</div>
											</div>
											<br /> <span id="checkuser" class="span"></span> <br /> <br />
											<div class="row">
												<div class="col-md-1"></div>
												<div class="col-md-8">
													<div class="input-group" id="password">
														<div class="input-group-addon">
															密 &nbsp; &nbsp; &nbsp; 码 &nbsp;<i
																class="icon icon-lock i_color2"></i>
														</div>
														<input type="password" name="password"
															class="form-control" placeholder="Password">
													</div>
												</div>
											</div>
											<br /> <span id="checkpassword" class="span"> </span> <br />
											<br />
											<button type="button" class="btn btn-primary btn-block"
												onclick="adduser()">确认</button>

										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3"></div>
				<div class="col-md-7">
					<form class="form-inline">
						<div class="form-group">
							<label for="exampleInputName1">用户编号</label> <input type="text"
								class="form-control" name="userid" placeholder="用户编号">
						</div>
						&nbsp;&nbsp;&nbsp;
						<div class="form-group">
							<label for="exampleInputEmail2">昵称</label> <input type="text"
								class="form-control" name="username" placeholder="昵称">
						</div>

						<button type="button" class="btn btn-info" onclick="search()">
							<i class=" icon-search"></i>查 找
						</button>
					</form>
				</div>
			</div>

			<br />
			<table
				class="table table-fixed table-condensed table-hover table-bordered"
				id="show_userinfo">
				<thead>
					<tr>
						<th><input type="checkbox" onclick="selectAll(this);" />
							&nbsp;全选/取消全选</th>
						<th>用户编号</th>
						<th>昵称</th>
						<th>电话</th>
						<th>邮箱</th>
						<th>操作</th>
					</tr>
				</thead>
				<c:if test="${not empty AllUser_list}">
					<tbody>
						<c:forEach items="${AllUser_list}" var="list" varStatus="count">
							<tr>
								<td><label> <input type="checkbox" name="checkbox">
								</label></td>
								<td>${list.userid}</td>
								<td>${list.username}</td>
								<td>${list.userphone}</td>
								<td>${list.useremail}</td>
								<td>&nbsp;&nbsp;&nbsp;
									<button class="btn btn-mini btn-danger"
										onclick="deleteUser(${list.userid})">
										<i class="icon icon-trash"></i>删除
									</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</c:if>
			</table>
		</div>
	</div>
</body>