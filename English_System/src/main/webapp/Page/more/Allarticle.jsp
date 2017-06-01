<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<script type="text/javascript" src="<%=basePath%>JS/Custom/index.js"></script>
</head>
<body>
	<jsp:include page="../public/head.jsp"></jsp:include>
	<div class="container">
		<!-- 美文推荐 -->
		<div class="panel panel-info">
			<div class="panel-body">
				<div class="list list-condensed">
					<header>
					<h3>
						<i class="icon-list-ul"></i> 美文推荐 <small
							style="font-size: 13px; color: black;">&nbsp;&nbsp;共${article_list2_length}条</small>
					</h3>
				</div>
				</header>
				<div class="items items-hover">
					<c:if test="${ not empty article_list2}">
						<c:forEach items="${article_list2}" var="list" varStatus="count">
							<div class="item">
								<div class="item-heading">
									<div class="pull-right">
										<span class="text-muted">${list.articleTime}</span> &nbsp; <a
											href="#" onclick="upvote(${list.articleId});return false;"
											class="text-muted"><i style="color: red"
											class="icon icon-thumbs-o-up"></i></a> &nbsp;<span
											id="${list.articleId}">${list.articleLike}</span>
									</div>
									<h4>
										<a href="###">${list.articleChinese}</a>
									</h4>
								</div>
								<div class="item-content">
									<div class="text" style="font-size: 15px;">${list.articleEnglish}</div>
								</div>
							</div>
							<br />
						</c:forEach>
					</c:if>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../public/tail.jsp"></jsp:include>
</body>
</html>