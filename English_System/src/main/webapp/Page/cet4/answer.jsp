
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
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/index.css">
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/answer.css">
<link rel="stylesheet"
	href="<%=basePath%>CSS/fonts/font-awesome.min.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.chart.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Custom/answer.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid navigation">
		<!-- 导航头部 -->
		<div class="navbar-header">
			<!-- 移动设备上的导航切换按钮 -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse-example">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<!-- 品牌名称或logo -->
			<a class="navbar-brand" href="#">OEL</a>
		</div>
		<!-- 导航项目 -->
		<div class="collapse navbar-collapse navbar-collapse-example">
			<!-- 一般导航项目 -->
			<ul class="nav navbar-nav">

				<li class="active"><a href="<%=basePath%>"><i
						class="icon-home"></i> 首页</a></li>
				<li class="dropdown" class="disabled"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">课程学习<b
						class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<%=basePath%>cet4/loading_cet4_word">4级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">6级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">大学英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">高中英语学习</a></li>
					</ul></li>

				<!-- 导航中的下拉菜单 -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">在线测试 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<%=basePath%>Page/cet4/cet4_questions.jsp">四级真题</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">试题测试</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">试题测试</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">试题测试</a></li>
					</ul></li>
				<li><a href="#">快速学习</a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
			</ul>


			<form name="submit" class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="搜索">
				</div>
				<button type="submit" class="btn btn-default">
					<i class=" icon-search"></i>&nbsp;搜索
				</button>
			</form>

			<!-- 右侧的导航项目 -->
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${empty user}">
					<li><a href="<%=basePath%>Page/login/Login2.jsp">登录</a></li>
					<li><a href="<%=basePath%>Page/login/register2.jsp">注册</a></li>
				</c:if>

				<c:if test="${not empty user}">
					<li class="dropdown"><a id="getusername"
						href="<%=basePath%>Page/success.jsp" class="dropdown-toggle"
						data-toggle="dropdown">欢迎你：${user.username}</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">6级英语学习</a></li>
						</ul></li>
				</c:if>

				<li><a href="<%=basePath%>Page/Login.jsp">帮助</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">探索 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">敏捷开发</a></li>
						<li><a href="#">HTML5</a></li>
						<li><a href="#">Javascript</a></li>
						<li class="divider"></li>
						<li><a href="#">探索宇宙</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>

	<span id="cetid" style="display: none;">${cetid}</span>
	<div class="container">
		<ul class="nav nav-pills" id="ulContainer">
			<li class="active"><a href="#">第一部分答案</a></li>
			<li><a href="#">第二部分答案 </a></li>
			<li><a href="#">第三部分答案 </a></li>
			<li><a href="#">第四部分答案 </a></li>
		</ul>
		<ul id="content">
			<li>
				<h2>填写答案</h2> <c:if test="${not empty part1}">
					<p>${part1.c_answer}</p>
				</c:if> <c:if test="${not empty part1}">
					<p>${part1.r_answer}</p>
				</c:if>

			</li>
			<li style="display: none;">
				<h2>听力答案</h2>
				<table class="table">
					<thead>
						<tr>
							<th>题号</th>
							<th>正确答案</th>
							<th>选择答案</th>
							<th>是否正确</th>
						</tr>
					</thead>
					<c:if test="${not empty patr2_list}">
						<c:forEach items="${patr2_list}" var="part2" varStatus="count">
							<tbody>
								<c:choose>
									<c:when test="${part2.isError=='right'}">
										<tr class="success">
											<td>${count.count}</td>
											<td>${part2.r_answer}</td>
											<td>${part2.c_answer}</td>
											<td><i class="icon icon-check"></i></td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr class="danger">
											<td>${count.count}</td>
											<td>${part2.r_answer}</td>
											<td>${part2.c_answer}</td>
											<td><i class="icon icon-times"></i></td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</c:forEach>
					</c:if>
				</table>
			</li>
			<li style="display: none;">
				<h2>选词填空</h2>
				<table class="table">
					<thead>
						<tr>
							<th>题号</th>
							<th>正确答案</th>
							<th>选择答案</th>
							<th>是否正确</th>
						</tr>
					</thead>
					<c:if test="${not empty patr3_list}">
						<c:forEach items="${patr3_list}" var="part3" varStatus="count"
							begin="0" end="9">
							<tbody>
								<c:choose>
									<c:when test="${part3.isError=='right'}">
										<tr class="success">
											<td>${count.count+25}</td>
											<td>${part3.r_answer}</td>
											<td>${part3.c_answer}</td>
											<td><i class="icon icon-check"></i></td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr class="danger">
											<td>${count.count+25}</td>
											<td>${part3.r_answer}</td>
											<td>${part3.c_answer}</td>
											<td><i class="icon icon-times"></i></td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</c:forEach>
					</c:if>
				</table>
				<h2>信息匹配</h2>
				<table class="table">
					<thead>
						<tr>
							<th>题号</th>
							<th>正确答案</th>
							<th>选择答案</th>
							<th>是否正确</th>
						</tr>
					</thead>
					<c:if test="${not empty patr3_list}">
						<c:forEach items="${patr3_list}" var="part3" varStatus="count"
							begin="10" end="19">
							<tbody>
								<c:choose>
									<c:when test="${part3.isError=='right'}">
										<tr class="success">
											<td>${count.count+35}</td>
											<td>${part3.r_answer}</td>
											<td>${part3.c_answer}</td>
											<td><i class="icon icon-check"></i></td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr class="danger">
											<td>${count.count+35}</td>
											<td>${part3.r_answer}</td>
											<td>${part3.c_answer}</td>
											<td><i class="icon icon-times"></i></td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</c:forEach>
					</c:if>
				</table>
				<h2>阅读理解</h2>
				<table class="table">
					<thead>
						<tr>
							<th>题号</th>
							<th>正确答案</th>
							<th>选择答案</th>
							<th>是否正确</th>
						</tr>
					</thead>
					<c:if test="${not empty patr3_list}">
						<c:forEach items="${patr3_list}" var="part3" varStatus="count"
							begin="20" end="29">
							<tbody>
								<c:choose>
									<c:when test="${part3.isError=='right'}">
										<tr class="success">
											<td>${count.count+45}</td>
											<td>${part3.r_answer}</td>
											<td>${part3.c_answer}</td>
											<td><i class="icon icon-check"></i></td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr class="danger">
											<td>${count.count+45}</td>
											<td>${part3.r_answer}</td>
											<td>${part3.c_answer}</td>
											<td><i class="icon icon-times"></i></td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</c:forEach>
					</c:if>
				</table>
			</li>
			<li style="display: none;">
				<h2>填写答案</h2> <c:if test="${not empty part4}">
					<p>${part4.c_answer}</p>
				</c:if>
				<h2>参考答案</h2> <c:if test="${not empty part4}">
					<p>${part4.r_answer}</p>
				</c:if>
			</li>
		</ul>
		<div class="row">
			<div class="col-md-6">
				<div>
					<a><button class="btn btn-success " type="button"
							onclick="show_chart();">查看柱状图</button></a>
				</div>
				<br /> <br />
				<canvas id="myChart" width="600" height="450"></canvas>
				<div class="table_comment">
					<div class="right"></div>
					<div class="desc">正确</div>
					<div class="error"></div>
					<div class="desc">错误</div>
				</div>
			</div>
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div>
					<a><button class="btn btn-success " type="button"
							onclick="show_Piechart();">查看饼状图</button></a>
				</div>
				<br /> <br />
				<canvas id="myPieChart" width="600" height="600"></canvas>
				<div class="table_comment2">
					<div class="right1"></div>
					<div class="desc1">正确</div>
					<div class="error1"></div>
					<div class="desc1">错误</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>