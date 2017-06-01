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
<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/user/showtest.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.chart.min.js"></script>

<script type="text/javascript" src="<%=basePath%>JS/User/showtest3.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div id="accordion">
		<div class="panel-group" id="accordionPanels">
			<div class="panel panel-info">
				<div class="panel-heading" id="headingOne">
					<a class="collapsed" data-toggle="collapse"
						data-parent="#accordionPanels" href="#collapseOne">已做四级测试试题情况</a>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<table class="table table-hover table-bordered  table-responsive ">
							<thead>
								<tr>
									<th>序号</th>
									<th>测试</th>
									<th>选择题数量</th>
									<th>正确数量</th>
									<th>错误数量</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${not empty chartlist}">
									<c:forEach items="${chartlist}" var="list" varStatus="count">
										<tr>
											<td>${count.count}</td>
											<td>${list.chartCetTitle}</td>
											<td>55</td>
											<td>${list.chartCorrect}</td>
											<td>${list.chartError}</td>
											<td><a target="_blank"
												href="<%=basePath%>cet4/cet4_test_info?cet42TestId=${list.chartCetId}"><i
													class="icon icon-zoom-in"></i>查看试题</a>
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
												href="<%=basePath%>cet4/showanswer()"><i
													class="icon icon-zoom-in"></i>查看答案</a></td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
						<button class="btn btn-success " onclick="loading()" type="button">加载测试信息分析</button>
						<div style="display: none;" id="chartcet4">
							<div class="col-md-6">
								<canvas id="myChart" width="500" height="280"></canvas>
								<div class="text">最近10套试题分析</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="panel panel-success">
			<div class="panel-heading" id="headingTwo">
				<a class="collapsed" data-toggle="collapse"
					data-parent="#accordionPanels" href="#collapseTwo">已做六级测试试题情况 </a>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse">
				<div class="panel-body">折叠面板内容 2</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>