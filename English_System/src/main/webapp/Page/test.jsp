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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet"
	href="<%=basePath%>CSS/fonts/font-awesome.min.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/bootstrap.min.js"></script>



</head>
<body>
	<form action="<%=basePath%>file/uploadfile" method="post"
		enctype="multipart/form-data">
		选择文件:<input type="file" name="file" width="120px"> <input
			type="submit" value="上传">
	</form>
	<a href="<%=basePath%>file/downloadfile?filename=20170423194815新建文本文档.txt">20170423194815新建文本文档.txt下载</a>
	<br>
	<a href="<%=basePath%>file/test/20170423194815新建文本文档.mp3">下载</a>
</body>
</html>