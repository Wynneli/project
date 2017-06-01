
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
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Custom/custom.js"></script>

</head>
<body>
	<jsp:include page="/Page/public/head.jsp"></jsp:include>

	<div class="container">
		<div class="list">
			<header>
			<h3>
				<c:choose>
					<c:when test="${cet_Test_Type=='cet4' }">
						<i class="icon-list-ul"></i> 四级题库 <small>总共${cet_count}条</small>
					</c:when>
					<c:otherwise>
						<i class="icon-list-ul"></i> 六级题库 <small>总共${cet_count}条</small>
					</c:otherwise>
				</c:choose>
			</h3>
			</header>

			<div class="items items-hover">
				<c:if test="${ not empty cet_list}">
					<c:forEach items="${cet_list}" var="list" varStatus="count">
						<div class="item">
							<div class="row">
								<div class="col-md-2">
									<c:choose>
										<c:when test="${cet_Test_Type=='cet4' }">
											<img src="/file/Images/cet4.jpg"
												class="img-responsive img-circle" alt="Responsive image">
										</c:when>
										<c:otherwise>
											<img src="/file/Images/cet6.jpg"
												class="img-responsive img-circle" alt="Responsive image">
										</c:otherwise>
									</c:choose>
								</div>
								<div class="col-md-10">
									<div class="item-heading">
										<div class="pull-right">
											<span class="text-muted">${list.cetEntend1}</span> &nbsp; <a
												href="#" class="text-muted "><i class="icon-comments"></i>
												${list.cetEntend2}</a>
										</div>
										<h4>
											<a target="_blank"
												href="<%=basePath%>cet4/cet4_test_item?cetid=${list.cetid}&cetInfo=${list.cetInfo}">${list.cetInfo}</a>
										</h4>
									</div>
									<div class="item-content">
										<div class="text">${list.cet4_Part1.cet4TestContent}......</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>

		</div>
	</div>
	<jsp:include page="../public/tail.jsp"></jsp:include>

</body>
</html>