
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
<link rel="stylesheet" href="<%=basePath%>CSS/New/new.css">
<script type="text/javascript"
	src="../../JS/Third_Party/jquery-2.1.4.min.js"></script>

</head>
<body>
	<jsp:include page="../public/head.jsp"></jsp:include>
	<div class="container">
		<div class="panel">

			<div class="panel-body" style="text-align: center;">
				<h1>${news.newtopic}</h1>
				<br />
				<p>
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<span class="span1">2017年3月21日&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;来源：青年报</span>
					</div>
					<div class="col-md-1"></div>
				</div>

				<br />
				<c:if test="${not empty news.newlead}">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10 ">
							<strong>导读:</strong> <span class="span1">${news.newlead}</span>
						</div>
						<div class="col-md-1"></div>
					</div>
				</c:if>
				<br />
				<c:if test="${not empty news.newother1}">
					<p>
						【<a href="#"><font color="#ff0000" size="3px">${news.newother1}</font>】</a>
					</p>
				</c:if>
				<br />
				<c:if test="${not empty news.newother}">
					<p>
						<strong>热评：</strong><a style="color: red; font-size: 15px;"
							href="#">${news.newother}</a>

					</p>
				</c:if>
				<br />
				<c:if test="${not empty p.p1}">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<p class="p1">${p.p1}</p>
						</div>
						<div class="col-md-1"></div>
					</div>
				</c:if>
				<c:if test="${not empty p.p2}">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<p class="p1">${p.p2}</p>
						</div>
						<div class="col-md-1"></div>
					</div>
				</c:if>
				<c:if test="${not empty p.p3}">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<p class="p1">
								<strong>${p.p3}</strong>
							</p>
						</div>
						<div class="col-md-1"></div>
						<img src="/file/New/pay1.jpg"></img> <br />
					</div>
					<br />
				</c:if>
				<c:if test="${not empty p.p4}">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<p class="p1">
								<strong>${p.p4}</strong>
							</p>
						</div>
						<div class="col-md-1"></div>
						<img src="/file/New/pay2.jpg"></img> <br />
					</div>
				</c:if>
				<br />
				<c:if test="${not empty p.p7}">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<p class="p1">
								<strong>${p.p7}</strong>
							</p>
						</div>
						<div class="col-md-1"></div>
						<img src="/file/New/pay3.jpg"></img> <br />
					</div>
				</c:if>
				<br />
				<c:if test="${not empty p.p8}">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<p class="p1">
								<strong>${p.p8}</strong>
							</p>
						</div>
						<div class="col-md-1"></div>
						<img src="/file/New/pay4.jpg"></img><br />
					</div>
				</c:if>
				<br/>
				<c:if test="${not empty p.p9}">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<p class="p1">${p.p9}</p>
						</div>
						<div class="col-md-1"></div>
					</div>
				</c:if>
				<c:if test="${not empty p.p10}">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-10">
							<p class="p1">${p.p10}</p>
						</div>
						<div class="col-md-1"></div>
					</div>
				</c:if>
				<c:if test="${ not empty p.p5}">
					<div class="row">
						<div class="col-md-1"></div>
						<p class="p1">
							<strong> 点击进入>></strong><a style="color: red;" href="#">${p.p5}</a>
						</p>
					</div>
				</c:if>
				<c:if test="${ not empty p.p6}">
					<div class="row">
						<div class="col-md-1"></div>
						<p class="p1">
							<strong> 考后关注：>></strong><a style="color: red;" href="#">${p.p6}</a>
						</p>
					</div>
				</c:if>
			</div>
		</div>
	</div>
	<jsp:include page="../public/tail.jsp"></jsp:include>
</body>
</html>