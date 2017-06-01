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
</head>
<body>
	<jsp:include page="../public/head.jsp"></jsp:include>
	<div class="container">
		<div class="panel-group" id="accordionPanels"
			aria-multiselectable="true">
			<div class="panel panel-info">
				<div class="panel-heading" id="headingOne">
					<h4 class="panel-title">
						<a data-toggle="collapse" data-parent="#accordionPanels"
							href="#collapseOne"> 录音下载 </a>
					</h4>
				</div>
				<div id="collapseOne" class="panel-collapse collapse in">
					<div class="panel-body">
						<table class="table  table-hover table-striped">
							<tbody>
							<thead>
								<tr>
									<th style="padding-left: 50px;">录音</th>
									<th>大小</th>
									<th>下载量</th>
									<th>下载地址</th>
								</tr>
							</thead>
							<c:if test="${not empty download_list}">
								<c:forEach items="${download_list}" var="list" varStatus="count">
									<c:choose>
										<c:when test="${count.count%2==0}">
											<tr class="success">
												<td style="padding-left: 50px;">${list.filerealname}</td>
												<td>${list.filesize}</td>
												<td>${list.filedownloadsum}</td>
												<td><a
													href="<%=basePath%>
											file/downloadfile?filenames=${list.filename}&fileid=${list.fileid}&file3=${list.filedownloadsum}"><button
															class="btn btn-mini btn-success" type="button">
															<i class="icon icon-download-alt"></i> 下载
														</button></a></td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr class="danger">
												<td style="padding-left: 50px;">${list.filerealname}</td>
												<td>${list.filesize}</td>
												<td>${list.filedownloadsum}</td>
												<td><a
													href="<%=basePath%>
											file/downloadfile?filenames=${list.filename}&fileid=${list.fileid}&file3=${list.filedownloadsum}"><button
															class="btn btn-mini btn-success" type="button">
															<i class="icon icon-download-alt"></i> 下载
														</button></a></td>

											</tr>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="panel panel-info">
				<div class="panel-heading" id="headingFour">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordionPanels" href="#collapseFour">
							试题下载（doc文档） </a>
					</h4>
				</div>
				<div id="collapseFour" class="panel-collapse collapse">
					<table class="table  table-hover table-striped">
						<tbody>
						<thead>
							<tr>
								<th style="padding-left: 50px;">录音</th>
								<th>大小</th>
								<th>下载量</th>
								<th>下载地址</th>
							</tr>
						</thead>
						<c:if test="${not empty download_list2}">
							<c:forEach items="${download_list2}" var="list" varStatus="count">
								<c:choose>
									<c:when test="${count.count%2==0}">
										<tr class="success">
											<td style="padding-left: 50px;">${list.filerealname}</td>
											<td>${list.filesize}</td>
											<td>${list.filedownloadsum}</td>
											<td><a
												href="<%=basePath%>
											file/downloadfile?filenames=${list.filename}&fileid=${list.fileid}&file3=${list.filedownloadsum}"><button
														class="btn btn-mini btn-success" type="button">
														<i class="icon icon-download-alt"></i> 下载
													</button></a></td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr class="danger">
											<td style="padding-left: 50px;">${list.filerealname}</td>
											<td>${list.filesize}</td>
											<td>${list.filedownloadsum}</td>
											<td><a
												href="<%=basePath%>
											file/downloadfile?filenames=${list.filename}&fileid=${list.fileid}&file3=${list.filedownloadsum}"><button
														class="btn btn-mini btn-success" type="button">
														<i class="icon icon-download-alt"></i> 下载
													</button></a></td>

										</tr>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:if>
						</tbody>
					</table>
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-heading" id="headingThree">
					<h4 class="panel-title">
						<a class="collapsed" data-toggle="collapse"
							data-parent="#accordionPanels" href="#collapseThree"> 词汇表下载 </a>
					</h4>
				</div>
				<div id="collapseThree" class="panel-collapse collapse">
					<div class="panel-body">
						<table class="table  table-hover table-striped">
							<tbody>
							<thead>
								<tr>
									<th style="padding-left: 50px;">录音</th>
									<th>大小</th>
									<th>下载量</th>
									<th>下载地址</th>
								</tr>
							</thead>
							<c:if test="${not empty download_list3}">
								<c:forEach items="${download_list3}" var="list"
									varStatus="count">
									<c:choose>
										<c:when test="${count.count%2==0}">
											<tr class="success">
												<td style="padding-left: 50px;">${list.filerealname}</td>
												<td>${list.filesize}</td>
												<td>${list.filedownloadsum}</td>
												<td><a
													href="<%=basePath%>
											file/downloadfile?filenames=${list.filename}&fileid=${list.fileid}&file3=${list.filedownloadsum}"><button
															class="btn btn-mini btn-success" type="button">
															<i class="icon icon-download-alt"></i> 下载
														</button></a></td>
											</tr>
										</c:when>
										<c:otherwise>
											<tr class="danger">
												<td style="padding-left: 50px;">${list.filerealname}</td>
												<td>${list.filesize}</td>
												<td>${list.filedownloadsum}</td>
												<td><a
													href="<%=basePath%>
											file/downloadfile?filenames=${list.filename}&fileid=${list.fileid}&file3=${list.filedownloadsum}"><button
															class="btn btn-mini btn-success" type="button">
															<i class="icon icon-download-alt"></i> 下载
														</button></a></td>

											</tr>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</c:if>
							</tbody>

						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../public/tail.jsp"></jsp:include>
</body>
</html>