
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
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/tail.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.chart.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
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
						<li><a href="<%=basePath%>cet4/loading_cet4_word?cetid=cet4_">4级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="<%=basePath%>cet4/loading_cet4_word?cetid=cet6_">6级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">大学英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">高中英语学习</a></li>
					</ul></li>

				<!-- 导航中的下拉菜单 -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">在线测试 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<%=basePath%>cet4/show_item?cet4id=cet4">四级真题</a></li>
						<li class="divider"></li>
						<li><a href="#">试题测试</a></li>
						<li class="divider"></li>
						<li><a href="#">试题测试</a></li>
						<li class="divider"></li>
						<li><a href="#">试题测试</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" role="menu" href="#">资讯动态<b
						class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">考试动态</a></li>
						<li class="divider"></li>
						<li><a href="#">报名动态</a></li>
						<li class="divider"></li>
						<li><a href="#">政策大纲</a></li>
					</ul></li>
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
					<li><a href="<%=basePath%>Page/login/Login2.jsp" >登录</a></li>
					<li><a href="<%=basePath%>Page/login/register2.jsp">注册</a></li>
				</c:if>

				<c:if test="${not empty user}">
					<li class="dropdown"><a href="#"
						class="dropdown-toggle" id="getusername" data-toggle="dropdown">欢迎你：${user.username}</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="<%=basePath%>Page/user/user.jsp">个人中心</a></li>
						</ul></li>
				</c:if>


				<li><a href="<%=basePath%>Page/Login.jsp">帮助</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">更多 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<%=basePath%>Page/more/feedback.jsp">用户信息反馈</a></li>
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
		<div class="panel-group" id="accordionPanels">
			<div class="panel panel-info">
				<div class="panel-heading" id="headingOne">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordionPanels"
							href="#collapseOne"> 第一部分：写作 </a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<h5>填写答案</h5>
						<c:if test="${not empty part1}">
							<p>${part1.c_answer}</p>
						</c:if>
						<h5>参考答案</h5>
						<c:if test="${not empty part1}">
							<p>${part1.r_answer}</p>
						</c:if>
					</div>
				</div>
			</div>

			<div class="panel panel-info">
				<div class="panel-heading" id="headingTwo">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordionPanels" href="#collapseTwo">第二部分：听力理解
						</a>
					</h4>
				</div>
				<div id="collapseTwo" class="panel-collapse collapse in">
					<div class="panel-body">
						<h5>听力部分答案</h5>
						<table class="table table-bordered table-condensed table-hover">
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
													<td><i style="color: green;" class="icon icon-check"></i></td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr class="danger">
													<td>${count.count}</td>
													<td>${part2.r_answer}</td>
													<td>${part2.c_answer}</td>
													<td><i style="color: red;" class="icon icon-times"></i></td>
												</tr>
											</c:otherwise>
										</c:choose>
									</tbody>
								</c:forEach>
							</c:if>
						</table>
					</div>
				</div>
			</div>

			<div class="panel panel-info">
				<div class="panel-heading" id="headingThree">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordionPanels" href="#collapseThree">第三部分：阅读理解
						</a>
					</h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse in">
					<div class="panel-body">
						<h5>选词填空</h5>
						<table class="table table-bordered table-condensed table-hover">
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
													<td><i style="color: green;" class="icon icon-check"></i></td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr class="danger">
													<td>${count.count+25}</td>
													<td>${part3.r_answer}</td>
													<td>${part3.c_answer}</td>
													<td><i style="color: red;" class="icon icon-times"></i></td>
												</tr>
											</c:otherwise>
										</c:choose>
									</tbody>
								</c:forEach>
							</c:if>
						</table>
						<h5>信息匹配</h5>
						<table class="table table-bordered table-condensed table-hover">
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
													<td><i style="color: green;" class="icon icon-check"></i></td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr class="danger">
													<td>${count.count+35}</td>
													<td>${part3.r_answer}</td>
													<td>${part3.c_answer}</td>
													<td><i style="color: red;" class="icon icon-times"></i></td>
												</tr>
											</c:otherwise>
										</c:choose>
									</tbody>
								</c:forEach>
							</c:if>
						</table>
						<h5>阅读理解</h5>
						<table class="table table-bordered table-condensed table-hover">
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
													<td><i style="color: green;" class="icon icon-check"></i></td>
												</tr>
											</c:when>
											<c:otherwise>
												<tr class="danger">
													<td>${count.count+45}</td>
													<td>${part3.r_answer}</td>
													<td>${part3.c_answer}</td>
													<td><i style="color: red;" class="icon icon-times"></i></td>
												</tr>
											</c:otherwise>
										</c:choose>
									</tbody>
								</c:forEach>
							</c:if>
						</table>
					</div>
				</div>
			</div>


			<div class="panel panel-info">
				<div class="panel-heading" id="headingFour">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordionPanels" href="#collapseFour">第四部分：翻译 </a>
					</h4>
				</div>
				<div id="collapseFour" class="panel-collapse collapse in">
					<div class="panel-body">
						<h5>填写答案</h5>
						<c:if test="${not empty part4}">
							<p>${part4.c_answer}</p>
						</c:if>
						<h5>参考答案</h5>
						<c:if test="${not empty part4}">
							<p>${part4.r_answer}</p>
						</c:if>
					</div>
				</div>
			</div>

			<div class="panel panel-info">
				<div class="panel-heading" id="headingFive">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordionPanels" href="#collapseFive">选择题总体情况</a>
					</h4>
				</div>
				<div id="collapseFive" class="panel-collapse collapse">
					<div class="panel-body">
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
				</div>
			</div>

		</div>

	</div>
	<div class="row tail">
		<div class="a">
			<br /> <a href="#">关于我们</a>&nbsp;&nbsp;┊ &nbsp;&nbsp; <a href="#">合作联系
			</a>&nbsp;&nbsp;┊ &nbsp;&nbsp; <a href="#">教师合作</a>&nbsp;&nbsp;┊
			&nbsp;&nbsp; <a href="#">网站地图</a>&nbsp;&nbsp;┊ &nbsp;&nbsp; <a
				href="#">友情链接</a>&nbsp;&nbsp;┊ &nbsp;&nbsp; <a href="#">考试论坛</a>&nbsp;&nbsp;┊
			&nbsp;&nbsp; <a href="#">帮助中心</a>&nbsp;&nbsp;┊ &nbsp;&nbsp; <a
				href="#">客服中心</a>&nbsp;&nbsp;┊ &nbsp;&nbsp; <a href="#">触屏版</a>&nbsp;&nbsp;┊
			&nbsp;&nbsp; <br /> <br /> 全国客服热线：<strong>4000-800-233 /
				0731-89909233</strong>
			&nbsp;&nbsp;&nbsp;增值电信业务经营许可证：湘B2-20090096&nbsp;&nbsp;&nbsp; <a
				href="http://www.miibeian.gov.cn/" target="_blank">湘ICP备11006365号</a>
			<br> <br> 版权所有©2005-2017&nbsp; <a target="_blank"
				href="<%=basePath%>index.jsp" class="cRed">OLES在线学习网</a> &nbsp;All
			Rights Reserved
		</div>
	</div>
</body>
</html>