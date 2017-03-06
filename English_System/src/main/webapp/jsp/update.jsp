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
</head>
<body>
	<form action="<%=basePath%>user/updateuser" method="get"> 
		id:<input type="text" name="userid">  <br>  
		用户名:<input type="text" name="username">  <br> 
		密码:<input type="text" name="userpassword">   <br> 
		电话:<input type="text" name="userphone">   <br> 
		邮箱:<input type="text" name="useremail">   <br> 
			<button type="submit">更新</button>
	</form>
</body>
</html>