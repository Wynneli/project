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
<link rel="stylesheet" href="<%=basePath%>/CSS/Third_Party/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<ul class="nav nav-pills">
					<li class="active"><a href="#">首页</a></li>
					<li><a href="#">资料</a></li>
					<li class="disabled"><a href="#">信息</a></li>
					<li class="dropdown pull-right"><a href="#"
						data-toggle="dropdown" class="dropdown-toggle">下拉<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">操作</a></li>
							<li><a href="#">设置栏目</a></li>
							<li><a href="#">更多设置</a></li>
							<li class="divider"></li>
							<li><a href="#">分割线</a></li>
						</ul></li>
				</ul>
				<ul class="breadcrumb">
					<li><a href="#">主页</a> <span class="divider">/</span></li>
					<li><a href="#">类目</a> <span class="divider">/</span></li>
					<li class="active">主题</li>
				</ul>
				<span class="badge">1</span>
				<div class="page-header">
					<h1>
						页标题范例 <small>此处编写页标题</small>
					</h1>
				</div>
				<ul class="thumbnails">
					<li class="span4">
						<div class="thumbnail">
							<img alt="300x200" src="img/people.jpg" />
							<div class="caption">
								<h3>冯诺尔曼结构</h3>
								<p>
									也称普林斯顿结构，是一种将程序指令存储器和数据存储器合并在一起的存储器结构。程序指令存储地址和数据存储地址指向同一个存储器的不同物理位置。
								</p>
								<p>
									<a class="btn btn-primary" href="#">浏览</a> <a class="btn"
										href="#">分享</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img alt="300x200" src="img/city.jpg" />
							<div class="caption">
								<h3>哈佛结构</h3>
								<p>
									哈佛结构是一种将程序指令存储和数据存储分开的存储器结构，它的主要特点是将程序和数据存储在不同的存储空间中，进行独立编址。</p>
								<p>
									<a class="btn btn-primary" href="#">浏览</a> <a class="btn"
										href="#">分享</a>
								</p>
							</div>
						</div>
					</li>
					<li class="span4">
						<div class="thumbnail">
							<img alt="300x200" src="img/sports.jpg" />
							<div class="caption">
								<h3>改进型哈佛结构</h3>
								<p>
									改进型的哈佛结构具有一条独立的地址总线和一条独立的数据总线，两条总线由程序存储器和数据存储器分时复用，使结构更紧凑。</p>
								<p>
									<a class="btn btn-primary" href="#">浏览</a> <a class="btn"
										href="#">分享</a>
								</p>
							</div>
						</div>
					</li>
				</ul>
				<div class="page-header">
					<h1>
						页标题范例 <small>此处编写页标题</small>
					</h1>
				</div>
			</div>
		</div>
	</div>
</body>
</html>