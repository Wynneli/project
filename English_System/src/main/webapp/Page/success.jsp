<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/index.css">
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/answer.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.chart.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>

<script type="text/javascript">
	$('.menu .nav').on('click', 'li:not(.nav-parent) > a', function() {
		var $this = $(this);
		$('.menu .nav .active').removeClass('active');
		$this.closest('li').addClass('active');
		$this.closest('.nav-parent').addClass('active');
	});
</script>
</head>
<body>
	<nav class="menu" data-ride="menu" style="width: 200px">
	<ul id="treeMenu" class="tree tree-menu" data-ride="tree">
		<li><a href="#"><i class="icon icon-th"></i>首页</a></li>
		<li><a href="#"><i class="icon icon-user"></i>个人资料</a></li>
		<li><a href="#"><i class="icon icon-time"></i>更新时间</a>
			<ul>
				<li><a href="#">今天</a></li>
				<li><a href="#">明天</a></li>
				<li><a href="#">昨天</a></li>
				<li><a href="#">本周</a></li>
			</ul></li>
		<li><a href="#"><i class="icon icon-trash"></i>垃圾篓</a></li>
		<li><a href="#"><i class="icon icon-list-ul"></i>全部</a></li>
		<li class="open"><a href="#"><i class="icon icon-tasks"></i>状态</a>
			<ul>
				<li><a href="#"><i class="icon icon-circle-blank"></i>已就绪</a>
					<ul>
						<li><a href="#">已取消</a></li>
						<li><a href="#">已关闭</a></li>
					</ul></li>
				<li class="active"><a href="#"><i
						class="icon icon-play-sign"></i>进行中</a></li>
				<li><a href="#"><i class="icon icon-ok-sign"></i>已完成</a></li>
			</ul></li>
	</ul>
	</nav>
</body>
</html>