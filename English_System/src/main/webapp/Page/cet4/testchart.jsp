
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

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.chart.min.js"></script>

<script type="text/javascript">
function show_chart(){
	//alert(123);
	// 创建指定Canvas的Chart实例
	//var myChart = $("#myChart").chart();
	var data = [{
	    value: 150,
	    color: "blue", // 使用颜色名称
	    label: "蓝队"
	}, {
	    value: 250,
	    color:"#F7464A", // 自定义颜色
	    // highlight: "#FF5A5E", // 自定义高亮颜色
	    label: "红队"
	}, {
	    value: 50,
	    color: 'green',
	    label: "绿队"
	}, {
	    // 不指定color值，使用随机颜色
	    color:"#FFDC35",  
	    value: 100,
	    label: "随机颜色队"
	}];

	// 图表配置项，可以留空来使用默认的配置
	var options = {
	    scaleShowLabels: true, // 展示标签
	};

	// 创建饼图
	var myPieChart = $("#myChart").pieChart(data, options);
};

</script>

</head>
<body>
<button class="btn btn-success " type="button" onclick="show_chart();">查看图表</button>
	<canvas id="myChart" width="400" height="400"></canvas>
</body>
</html>