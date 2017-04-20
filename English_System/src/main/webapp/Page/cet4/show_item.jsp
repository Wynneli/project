
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
<link rel="stylesheet"
	href="<%=basePath%>CSS/fonts/font-awesome.min.css">

<link rel="stylesheet" href="<%=basePath%>CSS/Custom/show_item.css">
<script type="text/javascript"
	src="../../JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/mzui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Custom/show_item.js"></script>

</head>
<body class="custom">
	<jsp:include page="../public/head.jsp"></jsp:include>
	<div class="container">
		<div class="top">
			<div class="header">
				<c:if test="${not empty cet4_Part1Custom_item.cet4Title}">
					<h2>${cet4_Part1Custom_item.cet4Title}</h2>
				</c:if>
			</div>
			<hr size="3" noshade="noshade" style="border: 2px #9AC0CD dotted;">
			<div class="row ">
				<div class="col-md-1 "></div>
				<div class="col-md-4">
					<img class="img-responsive" src="/file/Images/tk-pic.gif">
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-5 ">
					<div class="row" style="font-size: 15px;">
						<div class="col-md-6">
							<span class="span_setting">年份：</span> <span>2016</span>
						</div>
						<div class="col-md-6">
							<span class="span_setting">类 型：</span> <span>真题试卷</span>
						</div>

						<div class="col-md-6">
							<span class="span_setting">合格分数：</span> <span>425 分</span>
						</div>
						<div class="col-md-6">
							<span class="span_setting">总 分：</span><span>710 分</span>
						</div>

						<div class="col-md-6">
							<span class="span_setting">作 答：</span><span>130 分钟</span>
						</div>
						<div class="col-md-6">
							<span class="span_setting">提供机构：</span><span>OELS</span>
						</div>
					</div>
					<hr size="3" style="border: 2px #9AC0CD dotted;">
					<div>
						试卷质量：<i class="icon icon-star" style="color: orange;"></i><i
							class="icon icon-star" style="color: orange;"></i><i
							class="icon icon-star" style="color: orange;"></i><i
							class="icon icon-star-half-full" style="color: orange;"></i> <i
							class="icon icon-star-empty"></i>
					</div>
					<div class="col-md-6">
						<c:if test="${not empty cet4_Part1Custom_item.cet4TestId}">
							<a
								href="<%=basePath%>cet4/cet4_test_info?cet42TestId=${cet4_Part1Custom_item.cet4TestId}"><button
									class="btn btn-danger  " id="btn_setting" type="button">普通模考</button>
							</a>
						</c:if>
					</div>
					<div class="col-md-6">
						<a href="#"><button class="btn disabled" id="btn_setting"
								type="button">全真机考</button> </a>
					</div>
				</div>
				<div class="col-md-1 "></div>
			</div>
		</div>

		<div class="middle">
			<div class="row">
				<div class="log">
					<i class="icon icon-list-alt icon-2x" style="color: orange;"> </i>
					<span class="middle_span">题型介绍</span>
				</div>
			</div>
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-md-5">
					<ul id="treeMenu" class="tree tree-lines" data-ride="tree">
						<li class="open"><a href="#"><i class="icon icon-edit"></i>&nbsp;&nbsp;&nbsp;Part
								I Writing(30 minutes)</a>
							<ul>
								<li><a href="#"><i class="icon icon-info-sign"></i>&nbsp;&nbsp;&nbsp;作文&nbsp;&nbsp;&nbsp;&nbsp;分值比例&nbsp;(15%)</a></li>
							</ul></li>
						<li class="open"><a href="#"><i class="icon icon-volume-up"></i>&nbsp;&nbsp;&nbsp;Part
								Ⅱ Listening Comprehension (25 minutes)</a>
							<ul>
								<li><a href="#"><i class="icon icon-info-sign"></i>&nbsp;&nbsp;&nbsp;短篇新闻&nbsp;&nbsp;分值比例&nbsp;(7%)</a></li>
								<li><a href="#"><i class="icon icon-info-sign"></i>&nbsp;&nbsp;&nbsp;长对话&nbsp;&nbsp;分值比例&nbsp;(8%)</a></li>
								<li><a href="#"><i class="icon icon-info-sign"></i>&nbsp;&nbsp;&nbsp;听力篇章&nbsp;&nbsp;分值比例&nbsp;(20%)</a></li>
							</ul></li>
						<li class="open"><a href="#"><i class="icon icon-pencil"></i>&nbsp;&nbsp;&nbsp;Part
								III Reading Comprehension&nbsp;(40 minutes)</a>
							<ul>
								<li><a href="#"><i class="icon icon-info-sign"></i>&nbsp;&nbsp;&nbsp;词汇理解&nbsp;&nbsp;分值比例&nbsp;(5%)</a></li>
								<li><a href="#"><i class="icon icon-info-sign"></i>&nbsp;&nbsp;&nbsp;长篇阅读&nbsp;&nbsp;分值比例&nbsp;(10%)</a></li>
								<li><a href="#"><i class="icon icon-info-sign"></i>&nbsp;&nbsp;&nbsp;仔细阅读&nbsp;&nbsp;分值比例&nbsp;(20%)</a></li>
							</ul></li>
						<li class="open"><a href="#"><i class="icon icon-edit"></i>&nbsp;&nbsp;&nbsp;Part
								IV Translation&nbsp;(30 minutes)</a>
							<ul>
								<li><a href="#"><i class="icon icon-info-sign"></i>&nbsp;&nbsp;&nbsp;汉译英&nbsp;&nbsp;分值比例&nbsp;(15%)</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="col-md-6"></div>
			</div>
		</div>
	</div>
</body>
</html>