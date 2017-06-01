
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
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Custom/index.js"></script>
</head>
<body>
	<jsp:include page="/Page/public/head.jsp"></jsp:include>
	<div class="container">
		<!-- 轮播 -->

		<div id="myCarousel" class="carousel slide">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div class="item active">
					<img class="images" src="/file/Images/slide.jpg" alt="First slide">
					<div class="carousel-caption">
						<h3>我是第二张幻灯片</h3>
						<p>0.0</p>
					</div>
				</div>
				<div class="item">
					<img class="images" src="/file/Images/slide2.jpg"
						alt="Second slide">
				</div>
				<div class="item">
					<img class="images" src="/file/Images/slide3.jpg" alt="Third slide">
				</div>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
			<a class="carousel-control right" href="#myCarousel"
				data-slide="next">&rsaquo;</a>
		</div>
		<br /> <br />
		<h2>资讯动态</h2>
		<hr size="3" style="border: 2px blue solid;">
		<div class="row" id="setting">
			<div class="col-md-8">
				<div class="col-md-6">
					<div class="panel">
						<div class="panel-heading">
							<div class="row">
								<div class="col-md-3">考试动态</div>
								<div class="col-md-6"></div>
								<div class="col-md-3">
									<a href="#" class="asetting">更多<i
										class="icon icon-circle-arrow-right"></i></a>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-borderless">
								<tbody>
									<tr>
										<td><a href="<%=basePath%>Page/New/dynamicNew.jsp"
											target="_blank"><i class="icon icon-info-sign"
												id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/1" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;新版四六级听力考“懵”学生
												考生普遍喊难</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/2" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2016年6月英语四六级“没想到败在语文上”</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/3" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;神翻译不断，四六级吐槽大会开会啦！</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/4" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2016年6月四级听力秒杀雅思作文初中水平</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="panel">
						<div class="panel-heading">
							<div class="row">
								<div class="col-md-3">考试报名</div>
								<div class="col-md-6"></div>
								<div class="col-md-3">
									<a href="#" class="asetting">更多<i
										class="icon icon-circle-arrow-right"></i></a>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-borderless">
								<tbody>
									<tr>
										<td><a href="<%=basePath%>new/findnew/7" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2017年5月英语四六级口语报名今日开始</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/9" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2017年5月江西理工大学英语四级口语报名通知</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/11" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;英语四六级口语报名考生可以更改考点和考生日期</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/12" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;英语四六级口语报名考生是否可以选择场次</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/13" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;英语四六级口语报考缴费重复支付了怎么办</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="panel">
						<div class="panel-heading">
							<div class="row">
								<div class="col-md-3">成绩查询</div>
								<div class="col-md-6"></div>
								<div class="col-md-3">
									<a href="#" class="asetting">更多<i
										class="icon icon-circle-arrow-right"></i></a>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-borderless">
								<tbody>
									<tr>
										<td><a href="<%=basePath%>new/findnew/15" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2017年5月大学英语四级口语成绩什么时候公布</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/16" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2016年12月英语四级成绩查询中常见问题</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/17" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;大学英语四级通过以后成绩在网上保存多久</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew2/18"
											target="_blank"><i class="icon icon-info-sign"
												id="i_setting"></i>&nbsp;&nbsp;2017年6月大学英语四级考试翻译与作文评分标准</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew2/19"
											target="_blank"><i class="icon icon-info-sign"
												id="i_setting"></i>&nbsp;&nbsp;怎么用支付宝查询英语四六级成绩 这里看教程</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="panel">
						<div class="panel-heading">
							<div class="row">
								<div class="col-md-3">准考证</div>
								<div class="col-md-6"></div>
								<div class="col-md-3">
									<a href="#" class="asetting">更多<i
										class="icon icon-circle-arrow-right"></i></a>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-borderless">
								<tbody>
									<tr>
										<td><a href="<%=basePath%>new/findnew/20" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2017年上半年大学英语四级口语准考证打印时间</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/21" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2016年英语四六级成绩查询准考证找回方法</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/22" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2016年12月大学英语四级准考证找回有哪些方法</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew2/23"
											target="_blank"><i class="icon icon-info-sign"
												id="i_setting"></i>&nbsp;&nbsp;2016年12月大学英语四级准考证号怎么推算</a></td>
									</tr>
									<tr>
										<td><a href="<%=basePath%>new/findnew/24" target="_blank"><i
												class="icon icon-info-sign" id="i_setting"></i>&nbsp;&nbsp;2017年6月英语四级成绩查询准考证找回方法汇总</a></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 exam-guide">
				<div class="row">
					<div class="col-md-4">
						<h3 class="h3_setting">&nbsp;&nbsp;&nbsp;&nbsp;考试提醒</h3>
					</div>
					<div class="col-md-8 " style="padding-top: 18px;">
						距离6月考试还有<span class="span_setting">30</span>天
					</div>
				</div>
				<div class="row exam-guide1">
					<div class="col-md-4">
						<h3 class="h3_setting">&nbsp;&nbsp;报名</h3>
					</div>
					<div class="col-md-8">
						<ul class="ul2_setting">
							<li>2017上半年：2月底至3月底</li>
							<li>2017下半年：8月底至9月底</li>
						</ul>
					</div>
				</div>

				<br />

				<div class="row exam-guide1">
					<div class="col-md-4">
						<h3 class="h3_setting" style="padding-top: 20px;">&nbsp;&nbsp;考试</h3>
					</div>
					<div class="col-md-8">
						<ul class="ul2_setting">
							<li>2017上半年：6月17日</li>
							<li>2017下半年：12月16日</li>
							<li>2017年上半年口语：5月20日</li>
							<li>2017年下半年口语：11月18日</li>
						</ul>
					</div>
				</div>
				<br />
				<div class="row exam-guide1">
					<ul class="ul3_setting">
						<li><a href="#">考试题型</a></li>
						<li><a href="#">考试样卷</a></li>
						<li><a href="#">考试流程</a></li>
					</ul>
				</div>
				<br />
				<div class="row exam-guide1">
					<div class="col-md-4">
						<i class="icon icon-time i_color"></i><a href="#">查分时间</a>
					</div>
					<div class="col-md-4">
						<i class="icon icon-circle-arrow-right i_color"></i><a href="#">查分入口</a>
					</div>
					<div class="col-md-4">
						<i class="icon icon-area-chart i_color"></i><a href="#">分数线</a>
					</div>
					<br />
					<div class="col-md-4">
						<i class="icon icon-unlock-alt i_color"></i><a href="#">找回准考证号</a>
					</div>
					<div class="col-md-4">
						<i class="icon icon-search i_color"></i><a href="#">补办及核查</a>
					</div>
					<div class="col-md-4">
						<i class="icon icon-bar-chart i_color"></i><a href="#">成绩单</a>
					</div>
				</div>
				<br />
			</div>
			<br />

		</div>

		<div class="panel panel-info">
			<div class="panel-heading">
				<div class="row">
					<div class="col-md-2">精美句子推荐</div>
					<div class="col-md-9"></div>
					<div class="col-md-1">
						<a href="<%=basePath%>sentence/showAllSentence" target="_blank"
							class="asetting"> <i class="icon icon-th-list"></i> 加载更多
						</a>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<!-- 最新资讯展现 -->
				<div class="cards" >
					<c:if test="${not empty sentence_list}">
						<c:forEach items="${sentence_list }" var="sentence_list" 
							 varStatus="count">
							<div class="col-md-4 " style="height:400px;">
								<a class="card" href="#"> <img 
									src="/file/Images/${count.count}.jpg" alt="">
									<div class="caption">${sentence_list.sentenceChinese}</div>
									<div class="card-heading">
										<strong>${sentence_list.sentenceChinese}</strong>
									</div>
									<div class="card-content text-muted">${sentence_list.sentenceEnglish}</div>
									<div class="card-actions">
										<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
										<button type="button" class="btn btn-danger"
											onclick="sentenceupvate(${sentence_list.sentenceId});return false;">
											<i class=" icon-thumbs-up"></i>喜欢
										</button>
										<div class="pull-right text-danger">
											<i class="icon-heart-empty"></i> <span
												id="s${sentence_list.sentenceId}">${sentence_list.sentenceUpvote}人喜欢</span>
										</div>
									</div>
								</a>
							</div>
						</c:forEach>
					</c:if>
				</div>

			</div>
		</div>




		<!-- 美文推荐 -->
		<div class="panel panel-info">
			<div class="panel-body">
				<div class="list list-condensed">
					<header>
					<div class="row">
						<div class="col-md-3">
							<h3>
								<i class="icon-list-ul"></i> 美文推荐 <small
									style="font-size: 13px; color: black;">&nbsp;&nbsp;共${articlecount}条</small>
							</h3>
						</div>
						<div class="col-md-7"></div>
						<div class="col-md-1">
							<a href="<%=basePath%>article/showAllArticle" target="_blank"
								class="asetting" style="line-height: 30px;"> <i
								class="icon icon-th-list"></i> 加载更多
							</a>
						</div>
					</div>
					</header>
					<div class="items items-hover">
						<c:if test="${ not empty article_list}">
							<c:forEach items="${article_list}" var="list" varStatus="count">
								<div class="item">
									<div class="item-heading">
										<div class="pull-right">
											<span class="text-muted">${list.articleTime}</span> &nbsp; <a
												href="#" onclick="upvote(${list.articleId});return false;"
												class="text-muted"><i style="color: red"
												class="icon icon-thumbs-o-up"></i></a> &nbsp;<span
												id="${list.articleId}">${list.articleLike}</span>
										</div>
										<h4>
											<a href="###">${list.articleChinese}</a>
										</h4>
									</div>
									<div class="item-content">
										<div class="text" style="font-size: 15px;">${list.articleEnglish}</div>
									</div>
								</div>
								<br />
							</c:forEach>
						</c:if>
					</div>
				</div>
			</div>
		</div>

	</div>



	<!--  container结束-->


	<br />
	<jsp:include page="public/tail.jsp"></jsp:include>
</body>