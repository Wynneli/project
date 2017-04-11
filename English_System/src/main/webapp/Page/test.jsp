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
<link rel="stylesheet"
	href="<%=basePath%>CSS/Third_Party/bootstrap.min.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/bootstrap.min.js"></script>


<script type="text/javascript">
            function selectAll(checkbox) {
                $('input[type=checkbox]').prop('checked',
                		$(checkbox).prop('checked'));
            }
        </script>
</head>
<body>
	<input type="checkbox" onclick="selectAll(this);" />全选
	<br />
	<input type="checkbox" />
	<br />
	<input type="checkbox" />
	<br />
	<input type="checkbox" />
	<br />
	<input type="checkbox" />
	<br />
	<input type="checkbox" />
	<br />
	<input type="checkbox" />
	<br />

</body>
</html>