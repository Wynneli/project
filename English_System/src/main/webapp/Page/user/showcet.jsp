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
<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/user/showcet.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<div class="row setting">
		<div class="container">
			<h2>学习情况</h2>
			<br /> <span class="span">四级词汇学习完成情况</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总词汇量:
			<span class="span">${countcet4}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已学习：
			${cet4}
			个词汇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="<%=basePath%>cet4/loading_cet4_word?cetid=cet4"
				target="_blank">继续学习词汇</a><br /> <br />
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="40"
					aria-valuemin="0" aria-valuemax="100" style="width: ${cet4pec}%"></div>
				<span>${cet4pec}%</span>
			</div>
			<br /> <span class="span">陌生词汇</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="span">共 ${uncet4} 个</span><br /> <br />
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="40"
					aria-valuemin="0" aria-valuemax="100" style="width: ${cet4unpec}%"></div>
				<span>${cet4unpec}%</span>
			</div>
			<br /> <span class="span">六级词汇学习完成情况</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总词汇量:
			<span class="span"> ${countcet6}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已学习：
			${cet6}
			个词汇&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
				href="<%=basePath%>cet4/loading_cet4_word?cetid=cet6"
				target="_blank">继续学习词汇</a><br /> <br />
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="40"
					aria-valuemin="0" aria-valuemax="100" style="width: ${cet6pec}%"></div>
				<span>${cet6pec}%</span>
			</div>
			<br /> <span class="span">默生词汇</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span class="span">共 ${uncet6} 个</span><br /> <br />
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="40"
					aria-valuemin="0" aria-valuemax="100" style="width: ${cet6unpec}%"></div>
				<span> ${cet6unpec}%</span>
			</div>
		</div>
	</div>
</body>
</html>