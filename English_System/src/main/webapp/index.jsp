
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
	src="http://localhost:8080/English_System/JS/Third_Party/jquery-3.1.1.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/mzui.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid navigation">
		<!-- 导航头部 -->
		<div class="navbar-header">
			<!-- 移动设备上的导航切换按钮 -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse-example">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<!-- 品牌名称或logo -->
			<a class="navbar-brand" href="#">OEL</a>
		</div>
		<!-- 导航项目 -->
		<div class="collapse navbar-collapse navbar-collapse-example">
			<!-- 一般导航项目 -->
			<ul class="nav navbar-nav">

				<li class="active"><a href="<%=basePath%>"><i
						class="icon-home"></i> 首页</a></li>
				<li class="dropdown" class="disabled"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown">课程学习<b
						class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<%=basePath%>cet4/loading_cet4_word?cetid=cet4_">4级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="<%=basePath%>cet4/loading_cet4_word?cetid=cet6_">6级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">大学英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">高中英语学习</a></li>
					</ul></li>

				<!-- 导航中的下拉菜单 -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">在线测试 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<%=basePath%>cet4/show_item?cet4id=cet4">四级真题</a></li>
						<li class="divider"></li>
						<li><a href="#">试题测试</a></li>
						<li class="divider"></li>
						<li><a href="#">试题测试</a></li>
						<li class="divider"></li>
						<li><a href="#">试题测试</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" role="menu" href="#">资讯动态<b
						class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">考试动态</a></li>
						<li class="divider"></li>
						<li><a href="#">报名动态</a></li>
						<li class="divider"></li>
						<li><a href="#">政策大纲</a></li>
					</ul></li>
			</ul>


			<form name="submit" class="navbar-form navbar-left" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="搜索">
				</div>
				<button type="submit" class="btn btn-default">
					<i class=" icon-search"></i>&nbsp;搜索
				</button>
			</form>

			<!-- 右侧的导航项目 -->
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${empty user}">
					<li><a href="<%=basePath%>Page/login/Login2.jsp" >登录</a></li>
					<li><a href="<%=basePath%>Page/login/register2.jsp">注册</a></li>
				</c:if>

				<c:if test="${not empty user}">
					<li class="dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown">欢迎你：${user.username}</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="<%=basePath%>Page/user/user.jsp">个人中心</a></li>
						</ul></li>
				</c:if>


				<li><a href="<%=basePath%>Page/Login.jsp">帮助</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">探索 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">敏捷开发</a></li>
						<li><a href="#">HTML5</a></li>
						<li><a href="#">Javascript</a></li>
						<li class="divider"></li>
						<li><a href="#">探索宇宙</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>


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
					<img class="images" src="/file/Images/slide2.jpg" alt="Second slide">
				</div>
				<div class="item">
					<img class="images"  src="/file/Images/slide3.jpg" alt="Third slide">
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
		<div class="row">
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-3">
						<h3>考试动态</h3>
					</div>
					<div class="col-md-6"></div>
					<div class="col-md-3" style="padding-top: 20px; color: #999;">
						<a href="#">更多 <i class="icon icon-circle-arrow-right"></i></a>
					</div>
				</div>
				<div class="row">
					<ul class="ul_setting">
						<li><a href="<%=basePath%>Page/New/dynamicNew.jsp" target="_blank"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
					</ul>
				</div>
				<div class="row">
					<div class="col-md-3">
						<h3>考试动态</h3>
					</div>
					<div class="col-md-6"></div>
					<div class="col-md-3" style="padding-top: 20px; color: #999;">
						<a href="#">更多 <i class="icon icon-circle-arrow-right"></i></a>
					</div>
				</div>
				<div class="row">
					<ul class="ul_setting">
						<li><a href="<%=basePath%>Page/New/dynamicNew.jsp" target="_blank"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;test</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
					</ul>
				</div>

			</div>
			<div class="col-md-4">
				<div class="row">
					<div class="col-md-3">
						<h3>考试动态</h3>
					</div>
					<div class="col-md-6"></div>
					<div class="col-md-3" style="padding-top: 20px; color: #999;">
						<a href="#">更多 <i class="icon icon-circle-arrow-right"></i></a>
					</div>
				</div>
				<div class="row">
					<ul class="ul_setting">
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
						<li><a href="#"><i class="icon icon-info-sign"
								id="i_setting"></i>&nbsp;&nbsp;2016年英语四级考试考前必看注意事项</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4 exam-guide">
				<div class="row">
					<div class="col-md-4">
						<h3 class="h3_setting">&nbsp;&nbsp;&nbsp;&nbsp;考试提醒</h3>
					</div>
					<div class="col-md-8 " style="padding-top: 18px;">
						距离6月考试还有<span class="span_setting">80</span>天
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
						<i class="icon icon-time i_color" ></i><a href="#">查分时间</a>
					</div>
					<div class="col-md-4">
						<i class="icon icon-circle-arrow-right i_color" ></i><a href="#">查分入口</a>
					</div>
					<div class="col-md-4">
						<i class="icon icon-area-chart i_color" ></i><a href="#">分数线</a>
					</div>
					<br/>
					<div class="col-md-4">
						<i class="icon icon-unlock-alt i_color" ></i><a href="#">找回准考证号</a>
					</div>
					<div class="col-md-4">
						<i class="icon icon-search i_color" ></i><a href="#">补办及核查</a>
					</div>
					<div class="col-md-4">
						<i class="icon icon-bar-chart i_color" ></i><a href="#">成绩单</a>
					</div>
				</div>
				<br />
			</div>
			<br />

		</div>



		<!-- 最新资讯展现 -->

		<div class="cards">

			<div class="col-md-4  ">
				<a class="card" href="<%=basePath%>Page/login/Register.jsp"> <img
					src="<%=basePath%>Images/Slide/slide2.jpg" alt="">
					<div class="caption">“良辰美景” 出自《牡丹亭》</div>
					<div class="card-heading">
						<strong>良辰美景</strong>
					</div>
					<div class="card-content text-muted">良辰美景奈何天，赏心乐事谁家院。</div>
					<div class="card-actions">
						<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
						<button type="button" class="btn btn-danger">
							<i class=" icon-thumbs-up"></i> 喜欢
						</button>
						<div class="pull-right text-danger">
							<i class="icon-heart-empty"></i> 520 人喜欢
						</div>
					</div>
				</a>
			</div>
		</div>


		<div class="span9">
			<div class="leaderboard">
				<h1>Learn. Practice. Develop.</h1>
				<p>w3cschool offers web development tutorials. We believe in
					Open Source. Love standards. And prioritize simplicity and
					readability while serving content.</p>
				<p>
					<a class="btn btn-success btn-large">Join w3cschool now</a>
				</p>
			</div>
			<div class="row-fluid">
				<div class="span4">
					<h2>Learn</h2>
					<p>Donec id elit non mi porta gravida at eget metus. Fusce
						dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
						ut fermentum massa justo sit amet risus. Etiam porta sem malesuada
						magna mollis euismod. Donec sed odio dui.</p>
					<p>
						<a class="btn btn-success btn-large" href="#">Start Learning
							now</a>
					</p>
				</div>
			</div>
		</div>







		<!-- 用户学习方法分享 -->
		<div class="list list-condensed">
			<header>
			<h3>
				<i class="icon-list-ul"></i> 最新动态 <small>更新 123 条</small>
			</h3>
			</header>
			<div class="items items-hover">
				<div class="item">
					<div class="item-heading">
						<div class="pull-right">
							<span class="text-muted">2013-11-11 16:14:37</span> &nbsp; <a
								href="#" class="text-muted"><i class="icon-comments"></i>
								243</a>
						</div>
						<h4>
							<a href="###">HTML5 发展历史</a>
						</h4>
					</div>
					<div class="item-content">
						<div class="text">HTML 5草案的前身名为Web Applications
							1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla
							Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet
							Explorer（版本9以上）已支持HTML5技术。</div>
					</div>
				</div>

				<br /> <br />
				<div class="item">
					<div class="item-heading">
						<div class="pull-right label label-success">维基</div>
						<h4>
							<a href="###">HTML5 发展历史</a>
						</h4>
					</div>
					<div class="item-content">
						<div class="text">HTML 5草案的前身名为Web Applications
							1.0，是在2004年由WHATWG提出。2008年1月22日，第一份正式草案发布。WHATWG表示该规范是目前仍在进行的工作，仍须多年的努力。[8]目前Mozilla
							Firefox、Google Chrome、Opera、Safari（版本4以上）、Internet
							Explorer（版本9以上）已支持HTML5技术。</div>
					</div>
					<div class="item-footer">
						<a href="#" class="text-muted"><i class="icon-comments"></i>
							243</a> &nbsp; <span class="text-muted">2013-11-11 16:14:37</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  container结束-->


	<br />
    <jsp:include page="/Page/tail.jsp"/>
</body>