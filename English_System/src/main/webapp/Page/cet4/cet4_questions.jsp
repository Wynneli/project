
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
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/cet4_questions.css">
<script type="text/javascript"
	src="../../JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/mzui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Custom/custom.js"></script>

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
					<li><a href="<%=basePath%>Page/login/Login.jsp">登录</a></li>
					<li><a href="<%=basePath%>Page/login/Register.jsp">注册</a></li>
				</c:if>

				<c:if test="${not empty user}">
					<li class="dropdown"><a href="<%=basePath%>Page/success.jsp"
						class="dropdown-toggle" data-toggle="dropdown">欢迎你：${user.username}</a>
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

	<div class="container">
		<div class="list">
			<header>
			<h3>
				<i class="icon-list-ul"></i> 四级题库 <small>总共189条</small>
			</h3>
			</header>

			<div class="items items-hover">
				<div class="item">
					<div class="row">
						<div class="col-md-2">
						   <img src="<%=basePath%>Images/cet4.jpg" class="img-responsive img-circle" alt="Responsive image">
						</div>
						<div class="col-md-10">
							<div class="item-heading">
								<div class="pull-right">
									<span class="text-muted">2013-11-11 16:14:37</span> &nbsp; <a
										href="#" class="text-muted "><i class="icon-comments"></i>
										243</a>
								</div>
								<h4>
									<a href="<%=basePath%>cet4/cet4_test_info?cet42TestId=cet4_2016_6_1">2016年12月第一套(完整)</a>
								</h4>
							</div>
							<div class="item-content">
								<div class="text">HTML 5草案的前身名为Web Applications
									1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla
									Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet
									Explorer（版本9以上）已支持HTML5技术。</div>
							</div>
						</div>
					</div>
				</div>
			<div class="item">
				<div class="item-heading">
					<div class="pull-right label label-success">维基</div>
					<h4>
						<a href="###">HTML5 发展历史</a>
					</h4>
				</div>
				<div class="item-content">
					<div class="text">HTML 5草案的前身名为Web Applications
						1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla
						Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet
						Explorer（版本9以上）已支持HTML5技术。</div>
				</div>
				<div class="item-footer">
					<a href="#" class="text-muted"><i class="icon-comments"></i>
						243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
				</div>
			</div>
			<div class="item">
				<div class="item-heading">
					<div class="pull-right label label-success">维基</div>
					<h4>
						<a href="###">HTML5 发展历史</a>
					</h4>
				</div>
				<div class="item-content">
					<div class="media pull-right">
						<img src="docs/img/img2.jpg" alt="">
					</div>
					<div class="text">HTML 5草案的前身名为Web Applications
						1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla
						Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet
						Explorer（版本9以上）已支持HTML5技术。</div>
				</div>
				<div class="item-footer">
					<a href="#" class="text-muted"><i class="icon-comments"></i>
						243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
				</div>
			</div>
			<div class="item">
				<div class="item-heading">
					<div class="pull-right">
						<a href="###"><i class="icon-pencil"></i> 编辑</a> &nbsp;<a href="#"><i
							class="icon-remove"></i> 删除</a>
					</div>
					<h4>
						<span class="label label-success">维基</span> <a href="###">HTML5
							发展历史</a>
					</h4>
				</div>
				<div class="item-content">
					<div class="text">HTML 5草案的前身名为Web Applications
						1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla
						Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet
						Explorer（版本9以上）已支持HTML5技术。</div>
				</div>
				<div class="item-footer">
					<a href="#" class="text-muted"><i class="icon-comments"></i>
						243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
				</div>
			</div>
		</div>
		<footer>
		<ul class="pager">
			<li class="previous"><a href="#">« 上一页</a></li>
			<li><a href="#">1</a></li>
			<li><a href="#">⋯</a></li>
			<li><a href="#">6</a></li>
			<li class="active"><a href="#">7</a></li>
			<li><a href="#">8</a></li>
			<li><a href="#">9</a></li>
			<li><a href="#">⋯</a></li>
			<li><a href="#">12</a></li>
			<li class="next"><a href="#">下一页 »</a></li>
		</ul>
		</footer>
	</div>
	</div>


</body>
</html>