
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
<script type="text/javascript"
	src="../../JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Custom/vocabulary.js"></script>
</head>
<body>
	<jsp:include page="../public/head.jsp"></jsp:include>
	<div class="container">
		<form>
			<div class="boards" id="myBoard">
				<div class="board panel">
					<div class="panel-heading">
							<c:if test="${not empty cet}">
								<strong>${cet}</strong>
							</c:if>
						<span class="cet4_heart_span"></span> <i class="icon icon-heart"
							style="color: red;"> <a class="cet4_a"
							id="add_or_remove_unknown_word"
							onclick="add_or_remove_unknown_word()" href="#">收入我的词库</a>
						</i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-mini btn-success" type="button"
							onclick="saveProcess()">
							<i class="icon icon-save"></i>&nbsp; 保存进度
						</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-mini btn-success" type="button"
							onclick="loadProcess()">
							<i class="icon icon-history"></i>&nbsp; 加载进度
						</button>
					</div>
					<div class="panel-body">
						<div class="board-list">
							<div class="board-item">
								<div class="row">
									<div class="col-md-2">
										<span id="cet4_info_pre"> <a href="#"><i
												id="pre_word" class="icon icon-circle-arrow-left icon-3x"
												onclick="pre()"></i></a>
										</span>
									</div>
									<div class="col-md-1">
										<span id="cet4_info_id" style="display: none;"
											class="cet4_span">${cet4Custom.cet4Id} </span>
									</div>
									<div class="col-md-2">
										<span id="cet4_info_vocabulary">${cet4Custom.cet4Vocabulary}</span>
									</div>
									<div class="col-md-2">
										<span id="cet4_info_pronunciation">${cet4Custom.cet4Pronunciation}</span>
									</div>
									<div class="col-md-3">
										<span id="cet4_info_meaning">${cet4Custom.cet4Meaning}</span>
									</div>
									<div class="col-md-1"></div>
									<div class="col-md-1">
										<span id="cet4_info_next"> <a href="#" onclick="next()"><i
												class="icon icon-circle-arrow-right icon-3x" id="next_word"></i></a>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>



		<!-- 评论 -->
		<p>
			<a href="#" id="cet4_a" style="text-decoration: none;"><button
					type="button" class="btn btn-info btn-lg btn-block"
					data-toggle="collapse" id="cet4_button"
					data-target="#collapseExample" onclick="show_comment()">展开评论</button></a>
		</p>
		<div class="collapse" id="collapseExample">
			<div class="comments">
				<header>

				<div class="pull-right" id="comment_title">
					<a href="#commentReplyForm2" class="btn btn-primary"
						name="commit_comment" onclick="commit_comment()"><i
						class="icon-comment-alt"></i> 发表评论</a>
				</div>
				<h3 id="add_comment_context">所有评论</h3>
				</header>
				<div class="comments" id="show_comments"></div>
				<div class="reply-form" id="commentReplyForm2">
					<a href="#" class="avatar"><i class="icon-user icon-2x"></i></a>
					<form class="form">
						<div class="form-group">
							<textarea id="comment_content"
								class="form-control new-comment-text" rows="2"
								placeholder="撰写评论"></textarea>
						</div>
						<div class="form-group comment-user">
							<div class="row">
								<div class="col-md-3">
									<a href="#">登录</a> &nbsp;<a href="#">注册</a>
								</div>
							</div>
						</div>
						<div class="col-md-2">
							<button type="submit" class="btn btn-block btn-primary"
								onclick="submit_comment();return false;">提交</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>