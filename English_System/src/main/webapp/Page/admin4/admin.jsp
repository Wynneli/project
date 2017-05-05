
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


<link rel="stylesheet" href="<%=basePath%>CSS/admin4/index.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Admin/nav.js"></script>
</head>

<body>
	<div class="row top_setting">
		<div class="col-md-2 ">
			<a class="navbar-brand logg_setting" href="#">OEL</a>
		</div>
		<div class="col-md-8"></div>
		<div class="col-md-2">
			<img src="/file/Images/piki.jpg" class="img-circle img_setting"></img>
			<span class="span_setting">Tonny</span>&nbsp;&nbsp;&nbsp; <a href="#"><i
				class="icon icon-signout i_icon_color icon-2x"></i></a>
		</div>
		<div class="col-md-1"></div>
	</div>
	<div class="leftnav">
		<nav class="menu" data-ride="menu" style="width: 180px">
		<ul class="nav nav-primary">
			<li class="active"><a href="<%=basePath%>admin/show_userinfo" target="myframe"><i
					class="icon icon-user" style="color: blue;"></i>用户信息管理</a></li>
			<li><a href="<%=basePath%>admin/show_commentifo"
				target="myframe"><i class="icon  icon-comments" style="color: blue;"></i>评论管理</a></li>
			<li class="nav-parent"><a href="#"><i class="icon icon-time"
					style="color: blue;"></i>单词管理</a>
				<ul class="nav" id="second_ul">
					<li><a href="<%=basePath%>admin/show_cet4info/cet4_"
						target="myframe"><i class="icon icon-user"
							style="color: blue;"></i>四级</a></li>
					<li><a href="<%=basePath%>admin/show_cet4info/cet6_"
						target="myframe"><i class="icon icon-user"
							style="color: blue;"></i>六级</a></li>
				</ul></li>
			<li class="nav-parent"><a href="#"><i class="icon icon-file-text"
					style="color: blue;"></i>试题管理</a>
				<ul class="nav" id="second_ul">
					<li><a href="<%=basePath%>admin/show_cet4info/cet4_"
						target="myframe"><i class="icon icon-user"
							style="color: blue;"></i>四级试题</a></li>
					<li><a href="<%=basePath%>admin/show_cet4info/cet6_"
						target="myframe"><i class="icon icon-user"
							style="color: blue;"></i>六级试题</a></li>
				</ul></li>
			<li class="nav-parent"><a href="#"><i class="icon icon-cloud-download" 
					style="color: blue;"></i>资源下载管理</a>
				<ul class="nav" id="second_ul">
					<li><a href="<%=basePath%>admin/show_cet4info/cet4_"
						target="myframe"><i class="icon icon-user"
							style="color: blue;"></i>四级试题</a></li>
					<li><a href="<%=basePath%>admin/show_cet4info/cet6_"
						target="myframe"><i class="icon icon-user"
							style="color: blue;"></i>六级试题</a></li>
				</ul></li>
				<li class="nav-parent"><a href="#"><i class="icon icon-time"
					style="color: blue;"></i>参考答案管理</a>
				<ul class="nav" id="second_ul">
					<li><a href="<%=basePath%>admin/show_cet4info/cet4_"
						target="myframe"><i class="icon icon-user"
							style="color: blue;"></i>四级试题</a></li>
					<li><a href="<%=basePath%>admin/show_cet4info/cet6_"
						target="myframe"><i class="icon icon-user"
							style="color: blue;"></i>六级试题</a></li>
				</ul></li>
			<li><a href="<%=basePath%>admin/showfeedbackinfo" target="myframe"><i class="icon icon-reply"
					style="color: blue;" > </i>用户反馈信息管理</a></li>
		</ul>
		</nav>
	</div>
	<div class="admin">
		<iframe scrolling="auto" frameborder="0"
			src="<%=basePath%>admin/show_userinfo" name="myframe" width="100%"
			height="100%"></iframe>
	</div>

</body>