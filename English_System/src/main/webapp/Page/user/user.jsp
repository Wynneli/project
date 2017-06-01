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

<link rel="stylesheet" href="<%=basePath%>CSS/user/user.css">
<link rel="stylesheet" href="<%=basePath%>CSS/user/pintuer.css">
<link rel="stylesheet"
	href="<%=basePath%>CSS/fonts/font-awesome.min.css">

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Admin/index.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<div class="header bg-main">
		<div class="logo margin-big-left fadein-top">
			<h1>
				<img src="/file/Images/piki.jpg" class="radius-circle rotate-hover"
					height="50" width="50" alt="" />OELS个人中心
			</h1>
		</div>
		<div class="head-l">
			<a class="button button-little bg-green" href="<%=basePath%>"><span
				class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;&nbsp;&nbsp;<a
				class="button button-little bg-red"
				href="<%=basePath%>/user/loginout"><i class="icon-off"></i> 退出登录</a>
		</div>
	</div>
	<div class="leftnav">
		<div class="leftnav-title"></div>
		<h2>
			<span class="icon-user"></span>基本设置
		</h2>
		<ul style="display: block">
			<li><a href="Change_Password.jsp" target="right"><span
					class="icon-caret-right"></span>修改密码</a></li>
			<li><a href="userinfo.jsp" target="right"><span
					class="icon-caret-right"></span>个人信息管理</a></li>
			<li><a href="<%=basePath%>cet4/loadingCetInfo" target="right"><span
					class="icon-caret-right"></span>词汇学习情况</a></li>
			<li><a href="<%=basePath%>cet4/loadingCetTestinfo"
				target="right"><span class="icon-caret-right"></span>测试情况</a></li>
			<li><a href="<%=basePath%>feedback/loadingfeedback"
				target="right"><span class="icon-caret-right"></span>反馈信息</a></li>
		</ul>
	</div>

	<ul class="bread">
		<li><a href="{:U('Index/info')}" target="right" class="icon-home">
				首页</a></li>
		<li><a href="##" id="a_leader_txt">网站信息</a></li>
		<li><b>当前语言：</b><span style="color: red;">中文</span>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;切换语言：<a href="##">中文</a> &nbsp;&nbsp;<a
			href="##">英文</a></li>
	</ul>
	<div class="admin">
		<iframe scrolling="auto" rameborder="0" src="Change_Password.jsp"
			name="right" width="100%" height="100%"></iframe>
	</div>

</body>
</html>