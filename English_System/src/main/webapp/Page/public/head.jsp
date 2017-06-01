
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
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>



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
						<li><a href="<%=basePath%>cet4/loading_cet4_word?cetid=cet4_"
							target="_blank">4级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="<%=basePath%>cet4/loading_cet4_word?cetid=cet6_"
							target="_blank">6级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">大学英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">高中英语学习</a></li>
					</ul></li>

				<!-- 导航中的下拉菜单 -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">在线测试 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<%=basePath%>cet4/show_item?cet4id=cet4"
							target="_blank">四级真题</a></li>
						<li class="divider"></li>
						<li><a href="<%=basePath%>cet4/show_item?cet4id=cet6"
							target="_blank">六级真题</a></li>
						<li class="divider"></li>
						<li><a href="#">试题测试</a></li>
						<li class="divider"></li>
						<li><a href="#">试题测试</a></li>
					</ul></li>
				<!-- 
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" role="menu" href="#">资讯动态<b
						class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#" target="_blank">考试动态</a></li>
						<li class="divider"></li>
						<li><a href="#" target="_blank">考试报名</a></li>
						<li class="divider"></li>
						<li><a href="#" target="_blank">成绩查询</a></li>
						<li class="divider"></li>
						<li><a href="#" target="_blank">准考证</a></li>
					</ul></li> -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" role="menu" href="#">其他<b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<%=basePath%>
								article/showAllArticle"
							target="_blank">美文推荐</a></li>
						<li class="divider"></li>
						<li><a href="<%=basePath%>sentence/showAllSentence"
							target="_blank">精美句子</a></li>
						<li class="divider"></li>
					</ul></li>
			</ul>


			<form action="<%=basePath%>user/search" method="post" class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" name="search" placeholder="搜索">
				</div>
					<button type="submit" class="btn btn-default">
						<i class=" icon-search"></i>&nbsp;搜索
					</button>
			</form>

			<!-- 右侧的导航项目 -->
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${empty user}">
					<li><a href="<%=basePath%>Page/login/Login2.jsp"
						target="_blank">登录</a></li>
					<li><a href="<%=basePath%>Page/login/register2.jsp"
						target="_blank">注册</a></li>
				</c:if>

				<c:if test="${not empty user}">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						id="getusername" data-toggle="dropdown">欢迎你：${user.username}</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="<%=basePath%>Page/user/user.jsp">个人中心</a></li>
						</ul></li>
				</c:if>
				<li><a href="<%=basePath%>Page/Login.jsp">帮助</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">更多 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<%=basePath%>Page/more/feedback.jsp"
							target="_blank">用户信息反馈</a></li>
						<li><a href="<%=basePath%>/file/show_Allfile" target="_blank">网站资源下载</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>
</body>
</html>