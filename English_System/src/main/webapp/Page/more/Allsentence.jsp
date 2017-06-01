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
		<div class="panel panel-info">
			<div class="panel-heading">
				<div class="row">
					<div class="col-md-2">精美句子</div>
					<div class="col-md-2">共${sentence_listlength}条记录</div>
				</div>
			</div>
			<div class="panel-body">
				<!-- 最新资讯展现 -->
				<div class="cards">
					<c:if test="${not empty sentence_list2}">
						<c:forEach items="${sentence_list2}" var="sentence_list"
							varStatus="count">
							<div class="col-md-4 ">
								<a class="card" style="height: 400px;" href="#"> <img
									src="/file/Images/${count.count}.jpg" alt="">
									<div class="caption">${sentence_list.sentenceChinese}</div>
									<div class="card-heading">
										<strong>${sentence_list.sentenceChinese}</strong>
									</div>
									<div class="card-content text-muted">${sentence_list.sentenceEnglish}</div>
									<div class="card-actions">
										<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
										<button type="button" class="btn btn-danger"
											onclick="sentenceupvate(${sentence_list.sentenceId});return false;">
											<i class=" icon-thumbs-up"></i> 喜欢
										</button>
										<div class="pull-right text-danger">
											<i class="icon-heart-empty"></i> <span
												id="s${sentence_list.sentenceId}">${sentence_list.sentenceUpvote}人喜欢</span>
										</div>
									</div>
								</a>
							</div>
						</c:forEach>
					</c:if>
				</div>

			</div>
		</div>
	</div>
	<jsp:include page="../public/tail.jsp"></jsp:include>
</body>
</html>