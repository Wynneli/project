
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
<link rel="stylesheet" href="<%=basePath%>CSS/Custom/cet4_questions.css">
<script type="text/javascript"
	src="../../JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/mzui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Custom/custom.js"></script>

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
						<li><a href="<%=basePath%>cet4/loading_cet4_word">4级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">6级英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">大学英语学习</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">高中英语学习</a></li>
					</ul></li>

				<!-- 导航中的下拉菜单 -->
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">在线测试 <b class="caret"></b></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">试题测试</a></li>
					</ul></li>
				<li><a href="#">快速学习</a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
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
					<li><a href="<%=basePath%>Page/login/Login.jsp">登录</a></li>
					<li><a href="<%=basePath%>Page/login/Register.jsp">注册</a></li>
				</c:if>

				<c:if test="${not empty user}">
					<li class="dropdown"><a href="<%=basePath%>Page/success.jsp"
						class="dropdown-toggle" data-toggle="dropdown">欢迎你：${user.username}</a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">6级英语学习</a></li>
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
		<h1 style="text-align: center;">2016年6月大学英语四级考试真题卷一（完整版）</h1>
		<br />
		<fieldset>
			<article class="article article-condensed"> <section
				class="content"> <legend>
				<h2 style="color: red;">Part I Writing (30 minutes)</h2>
			</legend> <c:if test="${ not empty cet4_Part1Custom}">
				<blockquote>
					<p class="lead">${cet4_Part1Custom.cet4TestContent}</p>
				</blockquote>
				<div class="form-group">
					<label for="comment">Answer:</label>
					<textarea class="form-control" rows="10" id="comment"></textarea>
				</div>
			</c:if> <legend>
				<h2 style="color: red;">Part Ⅱ Listening Comprehension (25
					minutes)</h2>
			</legend> <c:if test="${ not empty Cet4_Part2Custom_list}">
				<c:forEach items="${Cet4_Part2Custom_list}" var="cet4_Part2"
					varStatus="count">
					<h2>${cet4_Part2.cet42Section}</h2>
					<c:if test="${not empty cet4_Part2.cet42Topic}">
						<blockquote>
							<p>${cet4_Part2.cet42Topic}</p>
						</blockquote>
						<br />
					</c:if>
					<c:if test="${not empty cet4_Part2.cet42Title}">
						<p class="lead" style="color: blue;">${cet4_Part2.cet42Title}</p>
					</c:if>
					<h4>${count.count}</h4>

					<div class="row">
						<div class="col-md-6">
							<c:if test="${not empty cet4_Part2.cet42A}">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count.count}" id="optionsRadios1"
									value="option1"> <strong>A)&nbsp;${cet4_Part2.cet42A}</strong>
								</label>
							</c:if>
						</div>
						<div class="col-md-6">
							<c:if test="${not empty cet4_Part2.cet42B}">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count.count}" id="optionsRadios1"
									value="option1"> <strong>B)&nbsp;${cet4_Part2.cet42B}</strong>
								</label>
							</c:if>
						</div>
						<div class="col-md-6">
							<c:if test="${not empty cet4_Part2.cet42C}">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count.count}" id="optionsRadios1"
									value="option1"> <strong>C)&nbsp;${cet4_Part2.cet42C}</strong>
								</label>
							</c:if>
						</div>
						<div class="col-md-6">
							<c:if test="${not empty cet4_Part2.cet42D}">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count.count}" id="optionsRadios1"
									value="option1"><strong>D)&nbsp;${cet4_Part2.cet42D}</strong>
								</label>
							</c:if>
						</div>

					</div>
					<br />
				</c:forEach>
			</c:if> <legend>
				<h2 style="color: red;">Part III Reading Comprehension (40
					minutes)</h2>
			</legend>
			<h3>Section A</h3>

			<blockquote>
				<p>Directions: In this section, there is a passage with ten
					blanks. You are required to select one word for each blank from a
					list of choices given in a word bank following the passage. Read
					the passage through carefully before making your choices. Each
					choice in the bank is identified by a letter. Please mark the
					corresponding letter for each item on Answer Sheet 2 with a single
					line through the centre. You may not use any of the words in the
					bank more than once.</p>
			</blockquote>
			<br />
			<c:if test="${not empty cet4_Part3A}">
				<p>${cet4_Part3A.cet4Part3aBody}</p>
				<p class="lead" style="color: blue;">${cet4_Part3A.cet4Part3aComment}</p>


				<div class="row">
					<div class="col-md-2">${cet4_Part3A.cet4Part3aA}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aB}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aC}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aD}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aE}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aF}</div>
				</div>
				<div class="row">
					<div class="col-md-2">${cet4_Part3A.cet4Part3aG}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aH}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aI}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aJ}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aK}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aL}</div>
				</div>
				<div class="row">
					<div class="col-md-2">${cet4_Part3A.cet4Part3aM}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aN}</div>
					<div class="col-md-2">${cet4_Part3A.cet4Part3aO}</div>
				</div>
			</c:if> <c:if test="${not empty list_count}">
				<c:forEach items="${list_count}" var="list_count" varStatus="count2">
					<h4>${count2.count+25}</h4>
					<div class="row">
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>A</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>B</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>C</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>D</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>E</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>F</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>G</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>H</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>I</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>J</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>K</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>L</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadio${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>M</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>N</strong>
							</label>
						</div>
						<div class="col-md-1">
							<label class="input-font"> <input type="radio"
								name="optionsRadios${count2.count+25}" id="optionsRadios1"
								value="option1"><strong>O</strong>
							</label>
						</div>
					</div>
				</c:forEach>
			</c:if>
			<h3>Section B</h3>
			<blockquote>
				<p>Directions: In this section, you are going to read a passage
					with ten statements attached to it. Each statement contains
					information given in one of the paragraphs. Identify the paragraph
					from which the information is derived. You may choose a paragraph
					more than once. Each paragraph is marked with a letter. Answer the
					questions by marking the corresponding letter on Answer Sheet 2.</p>
			</blockquote>
			<c:if test="${not empty cet4_Part3B}">
				<article class="article article-condensed"> <section
					class="content">${cet4_Part3B.cet4Part3bA}</section> </article>
				<article class="article article-condensed"> <section
					class="content">${cet4_Part3B.cet4Part3bB}</section> </article>
				<article class="article article-condensed"> <section
					class="content">${cet4_Part3B.cet4Part3bC}</section> </article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bD}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bE}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bE}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bF}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bG}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bH}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bI}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bJ}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bK}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bL}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bM}</section>
				</article>
				<article class="article"> <section class="content">${cet4_Part3B.cet4Part3bN}</section>
				</article>
				<c:if test="${not empty list_count}">
					<c:forEach items="${list_count}" var="list_count"
						varStatus="count3">
						<h4>${count3.count+35}</h4>
						<div class="row">
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>A</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>B</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>C</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>D</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>E</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>F</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>G</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>H</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>I</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>J</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>K</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>L</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadio${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>M</strong>
								</label>
							</div>
							<div class="col-md-1">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count3.count+35}" id="optionsRadios1"
									value="option1"><strong>N</strong>
								</label>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</c:if>


			<h3>Section C</h3>

			<blockquote>
				<p>Directions: There are 2 passages in this section. Each
					passage is followed by some questions or unfinished statements. For
					each of them there are four choices marked A),B),C) and D). You
					should decide on the best choice and mark the corresponding letter
					on Answer Sheet 2 with a single line through the centre.</p>
			</blockquote>
			<c:if test="${not empty list_cet4_Part3C}">
				<c:forEach items="${list_cet4_Part3C}" var="list_cet4_Part3C"
					varStatus="count4">
					<c:if test="${not empty list_cet4_Part3C.cet4PartcPassage}">
						<h3>${list_cet4_Part3C.cet4PartcPassage}</h3>
					</c:if>
					<c:if test="${not empty list_cet4_Part3C.cet4PartcInfo}">
						<h3 style="color: red;">${list_cet4_Part3C.cet4PartcInfo}</h3>
					</c:if>
					<c:if test="${not empty list_cet4_Part3C.cet4PartcArticle}">
						<p>${list_cet4_Part3C.cet4PartcArticle}</p>
					</c:if>
					<c:if test="${not empty list_cet4_Part3C.cet4PartcQuestion}">
						<h4>${list_cet4_Part3C.cet4PartcQuestion}</h4>
					</c:if>
					<div class="row">
						<div class="col-md-6">
							<c:if test="${not empty list_cet4_Part3C.cet4PartcA}">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count4.count+45}" id="optionsRadios1"
									value="option1"> A)&nbsp;${list_cet4_Part3C.cet4PartcA}
								</label>
							</c:if>
						</div>
						<div class="col-md-6">
							<c:if test="${not empty list_cet4_Part3C.cet4PartcA}">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count4.count+45}" id="optionsRadios1"
									value="option1"> B)&nbsp;${list_cet4_Part3C.cet4PartcA}
								</label>
							</c:if>
						</div>
						<br />
						<div class="col-md-6">
							<c:if test="${not empty list_cet4_Part3C.cet4PartcC}">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count4.count+45}" id="optionsRadios1"
									value="option1"> C)&nbsp;${list_cet4_Part3C.cet4PartcC}
								</label>
							</c:if>
						</div>
						<div class="col-md-6">
							<c:if test="${not empty list_cet4_Part3C.cet4PartcD}">
								<label class="input-font"> <input type="radio"
									name="optionsRadios${count4.count+45}" id="optionsRadios1"
									value="option1">D)&nbsp;${list_cet4_Part3C.cet4PartcD}
								</label>
							</c:if>
						</div>
					</div>
				</c:forEach>
			</c:if> <legend>
				<h2 style="color: red;">Part IV Translation (30 minutes)</h2>
			</legend>
			<blockquote>
				<p>Directions: For this part, you are allowed 30 minutes to
					translate a passage from Chinese into English. You should write
					your answer on the ANSWER SHEET 2.</p>
			</blockquote>
			<c:if test="${not empty cet4_Part4}">
				<p>${cet4_Part4.cet4Part4Content}</p>
			</c:if> </section> </article>
			<div class="form-group">
				<label for="comment">Answer:</label>
				<textarea class="form-control" rows="10" id="comment"></textarea>
			</div>
		</fieldset>
	</div>

</body>
</html>