<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">


<link rel="stylesheet" href="<%=basePath%>CSS/Custom/tail.css">

</head>
<body>
	<div class="row tail">
		<div class="a">
		    <br/>
			<a href="#">关于我们</a>&nbsp;&nbsp;┊ &nbsp;&nbsp;
			<a href="#">合作联系 </a>&nbsp;&nbsp;┊ &nbsp;&nbsp;
			<a href="#">教师合作</a>&nbsp;&nbsp;┊ &nbsp;&nbsp;
			<a href="#">网站地图</a>&nbsp;&nbsp;┊ &nbsp;&nbsp;
			<a href="#">友情链接</a>&nbsp;&nbsp;┊ &nbsp;&nbsp;
			<a href="#">考试论坛</a>&nbsp;&nbsp;┊ &nbsp;&nbsp;
			<a href="#">帮助中心</a>&nbsp;&nbsp;┊ &nbsp;&nbsp;
			<a href="#">客服中心</a>&nbsp;&nbsp;┊ &nbsp;&nbsp;
			<a href="#">触屏版</a>&nbsp;&nbsp;┊ &nbsp;&nbsp;
			<br/>
			<br/>
			全国客服热线：<strong>4000-800-233 / 0731-89909233</strong>
			&nbsp;&nbsp;&nbsp;增值电信业务经营许可证：湘B2-20090096&nbsp;&nbsp;&nbsp;
			<a  href="http://www.miibeian.gov.cn/" target="_blank">湘ICP备11006365号</a>
			<br>
			<br>
			版权所有©2005-2017&nbsp;
			<a target="_blank" href="<%=basePath%>index.jsp" class="cRed">OLES在线学习网</a>
		    &nbsp;All Rights Reserved
		</div>
	</div>
</body>
</html>