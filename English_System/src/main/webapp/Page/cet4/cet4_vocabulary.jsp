
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
<script type="text/javascript"
	src="../../JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/mzui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Custom/vocabulary.js"></script>

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
						id="getusername" class="dropdown-toggle" data-toggle="dropdown">${user.username}</a>
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
		<form>
			<div class="boards" id="myBoard">
				<div class="board panel">
					<div class="panel-heading">
						<strong>4级词汇</strong><span class="cet4_heart_span"></span> <i
							class="icon icon-heart" style="color: red;"> <a
							class="cet4_a" id="add_or_remove_unknown_word"
							onclick="add_or_remove_unknown_word()" href="#">收入我的词库</a>
						</i>
					</div>
					<div class="panel-body">
						<div class="board-list">
							<div class="board-item">
								<div class="row">
									<div class="col-md-2">
										<span id="cet4_info_pre"> <a href="#"><i
												id="pre_word" class="icon icon-circle-arrow-left icon-3x"
												onclick="pre()"></i></a>
										</span>
									</div>
									<div class="col-md-1">
										<span id="cet4_info_id" style="display: none;"
											class="cet4_span">${cet4Custom.cet4Id} </span>
									</div>
									<div class="col-md-2">
										<span id="cet4_info_vocabulary">${cet4Custom.cet4Vocabulary}</span>
									</div>
									<div class="col-md-2">
										<span id="cet4_info_pronunciation">${cet4Custom.cet4Pronunciation}</span>
									</div>
									<div class="col-md-3">
										<span id="cet4_info_meaning">${cet4Custom.cet4Meaning}</span>
									</div>
									<div class="col-md-1"></div>
									<div class="col-md-1">
										<span id="cet4_info_next"> <a href="#" onclick="next()"><i
												class="icon icon-circle-arrow-right icon-3x" id="next_word"></i></a>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>



		<!-- 评论 -->
		<p>
			<a href="#" id="cet4_a" style="text-decoration: none;"><button
					type="button" class="btn btn-info btn-lg btn-block"
					data-toggle="collapse" id="cet4_button"
					data-target="#collapseExample" onclick="show_comment()">展开评论</button></a>
		</p>
		<div class="collapse" id="collapseExample">
			<div class="comments">
				<header>

				<div class="pull-right" id="comment_title">
					<a href="#commentReplyForm2" class="btn btn-primary"
						name="commit_comment" onclick="commit_comment()"><i
						class="icon-comment-alt"></i> 发表评论</a>
				</div>
				<h3 id="add_comment_context">所有评论</h3>
				</header>
				<div class="comments" id="show_comments">
				</div>
				<div class="reply-form" id="commentReplyForm2">
					<a href="#" class="avatar"><i class="icon-user icon-2x"></i></a>
					<form class="form">
						<div class="form-group">
							<textarea id="comment_content"
								class="form-control new-comment-text" rows="2"
								placeholder="撰写评论"></textarea>
						</div>
						<div class="form-group comment-user">
							<div class="row">
								<div class="col-md-3">
									<a href="#">登录</a> &nbsp;<a href="#">注册</a>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<button type="submit" class="btn btn-block btn-primary"
								onclick="submit_comment();return false;">提交</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>