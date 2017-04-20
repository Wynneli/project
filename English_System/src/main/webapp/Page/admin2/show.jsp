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
<link rel="stylesheet" href="<%=basePath%>CSS/Admin/admin.css">
<link rel="stylesheet" href="<%=basePath%>CSS/Admin/pintuer.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Admin/index.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="">
		<div class="panel admin-panel">
			<div class="panel-head">
				<strong class="icon-reorder"> 留言管理</strong>
			</div>
			<div class="padding border-bottom">
				<ul class="search">
					<li>
						<button type="button" class="button border-green" id="checkall">
							<span class="icon-check"></span> 全选
						</button>
						<button type="submit" class="button border-red">
							<span class="icon-trash-o"></span> 批量删除
						</button>
					</li>
				</ul>
			</div>
			<table class="table table-hover text-center">
				<tr>
					<th width="120">ID</th>
					<th>姓名</th>
					<th>电话</th>
					<th>邮箱</th>
					<th>其他</th>
					<th width="25%">内容</th>
					<th width="120">留言时间</th>
					<th>操作</th>
				</tr>
				<tr>
					<td><input type="checkbox" name="id[]" value="1" /> 1</td>
					<td>神夜</td>
					<td>13420925611</td>
					<td>564379992@qq.com</td>
					<td>深圳市民治街道</td>
					<td>这是一套后台UI，喜欢的朋友请多多支持谢谢。</td>
					<td>2016-07-01</td>
					<td><div class="button-group">
							<a class="button border-red" href="javascript:void(0)"
								onclick="return del(1)"><span class="icon-trash-o"></span>
								删除</a>
						</div></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id[]" value="1" /> 1</td>
					<td>神夜</td>
					<td>13420925611</td>
					<td>564379992@qq.com</td>
					<td>深圳市民治街道</td>
					<td>这是一套后台UI，喜欢的朋友请多多支持谢谢。</td>
					<td>2016-07-01</td>
					<td><div class="button-group">
							<a class="button border-red" href="javascript:void(0)"
								onclick="return del(1)"><span class="icon-trash-o"></span>
								删除</a>
						</div></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id[]" value="1" /> 1</td>
					<td>神夜</td>
					<td>13420925611</td>
					<td>564379992@qq.com</td>
					<td>深圳市民治街道</td>
					<td>这是一套后台UI，喜欢的朋友请多多支持谢谢。</td>
					<td>2016-07-01</td>
					<td><div class="button-group">
							<a class="button border-red" href="javascript:void(0)"
								onclick="return del(1)"><span class="icon-trash-o"></span>
								删除</a>
						</div></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id[]" value="1" /> 1</td>
					<td>神夜</td>
					<td>13420925611</td>
					<td>564379992@qq.com</td>
					<td>深圳市民治街道</td>
					<td>这是一套后台UI，喜欢的朋友请多多支持谢谢。</td>
					<td>2016-07-01</td>
					<td><div class="button-group">
							<a class="button border-red" href="javascript:void(0)"
								onclick="return del(1)"><span class="icon-trash-o"></span>
								删除</a>
						</div></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id[]" value="1" /> 1</td>
					<td>神夜</td>
					<td>13420925611</td>
					<td>564379992@qq.com</td>
					<td>深圳市民治街道</td>
					<td>这是一套后台UI，喜欢的朋友请多多支持谢谢。</td>
					<td>2016-07-01</td>
					<td><div class="button-group">
							<a class="button border-red" href="javascript:void(0)"
								onclick="return del(1)"><span class="icon-trash-o"></span>
								删除</a>
						</div></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id[]" value="1" /> 1</td>
					<td>神夜</td>
					<td>13420925611</td>
					<td>564379992@qq.com</td>
					<td>深圳市民治街道</td>
					<td>这是一套后台UI，喜欢的朋友请多多支持谢谢。</td>
					<td>2016-07-01</td>
					<td><div class="button-group">
							<a class="button border-red" href="javascript:void(0)"
								onclick="return del(1)"><span class="icon-trash-o"></span>
								删除</a>
						</div></td>
				</tr>
				<tr>
					<td><input type="checkbox" name="id[]" value="1" /> 1</td>
					<td>神夜</td>
					<td>13420925611</td>
					<td>564379992@qq.com</td>
					<td>深圳市民治街道</td>
					<td>这是一套后台UI，喜欢的朋友请多多支持谢谢。</td>
					<td>2016-07-01</td>
					<td><div class="button-group">
							<a class="button border-red" href="javascript:void(0)"
								onclick="return del(1)"><span class="icon-trash-o"></span>
								删除</a>
						</div></td>
				</tr>
				<tr>
					<td colspan="8"><div class="pagelist">
							<a href="">上一页</a> <span class="current">1</span><a href="">2</a><a
								href="">3</a><a href="">下一页</a><a href="">尾页</a>
						</div></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>