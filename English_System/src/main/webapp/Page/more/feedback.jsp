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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/index.css">
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/answer.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/more/feedback.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/more/feedback2.js"></script>
</head>
<body>
	<jsp:include page="../public/head.jsp"></jsp:include>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">用户信息反馈</div>
			<div class="panel-body">
				<form action="<%=basePath%>index.jsp" id="feedback_form" method="post">
					<div class="col-md-4">
						<select class="form-control" id="first" onchange="getSecond()">
							<option value="">请选择一级标题</option>
							<option value="apple">词汇</option>
							<option value="banana">测试</option>
							<option value="orange">下载</option>
							<option value="orange">个人信息</option>
							<option value="orange">动态资讯</option>
							<option value="orange">其他</option>
						</select>
					</div>
					<div class="col-md-4">
						<select class="form-control" id="second">
							<option value="">请选择二级标题</option>
						</select>
					</div>
					<br /> <br /> <br />
					<div class="form-group ">
						<label class="control-label" for="inputSuccess1">反馈信息标题</label> <input
							type="text" class="form-control" name="title"
							placeholder="请输入标题">
					</div>
					<br /> <br /> 详情描述：
					<textarea class="form-control" id="details" rows="7"></textarea>
					<br /> <br /> 改进意见：
					<textarea class="form-control" id="advice" rows="5"></textarea>
					<br /> <br />
					<div class="row">
					<div class="col-md-2"></div>
						<div class="col-md-8">
							<button type="button" class="btn btn-primary btn-lg btn-block"
								onclick="submit2()">提交</button>
								
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<jsp:include page="../tail.jsp"></jsp:include>
</body>
</html>