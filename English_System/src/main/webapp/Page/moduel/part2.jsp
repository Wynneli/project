
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
	<jsp:include page="../public/head.jsp"></jsp:include>
	<div class="container">
		<h1 style="text-align: center;">2016年6月大学英语四级考试真题卷一（完整版）</h1>
		<br />
		<fieldset>
			<legend>
				<h2>Part I Writing (30 minutes)</h2>
			</legend>
			<blockquote>
				<p class="lead">Directions: For this part, you are allowed 30
					minutes to write a letter to express your thanks to one of your
					friends who helped you most when you were in difficulty. You should
					write at least 120 words but no more than 180 words.</p>
			</blockquote>
			<div class="form-group">
				<label for="comment">Answer:</label>
				<textarea class="form-control" rows="10" id="comment"></textarea>
			</div>
		</fieldset>
	</div>
</body>
</html>