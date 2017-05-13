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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=basePath%>CSS/Third_Party/zui.min.css">
<link rel="stylesheet" href="<%=basePath%>CSS/admin4/answer.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>CSS/Third_Party/all.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>

<script type="text/javascript" src="<%=basePath%>JS/admin4/common.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/answer.js"></script>
<script type="text/javascript" charset="utf8"
	src="<%=basePath%>JS/Third_Party/icheck.min.js"></script>

</head>
<body>
	<div class="panel panel-success">
		<div class="panel-heading">参考答案管理</div>
		<div class="panel-body">
			<div class="row">
				<div class="col-md-2">
					<button class="btn btn-danger btn-block" type="button"
						onclick="Batchdelete()">
						<i class="icon icon-trash"></i> 批量删除
					</button>
				</div>
				<div class="col-md-2">
					<a href="<%=basePath%>Page/admin4/addanswer.jsp" id="add_answer">
						<button class="btn btn-success btn-block" type="button"
							onclick="AddAnswer()">
							<i class="icon icon-plus"></i> 新增答案
						</button>
					</a>
				</div>
				<div class="col-md-6"></div>
				<div class="col-md-2">
					<select class="form-control" id="cet" onchange="select()">
						<option value="">--筛选--</option>
						<option>四级</option>
						<option>六级</option>
						<option>全部</option>
					</select>
				</div>
			</div>
			<br />

			<table
				class="table table-striped table-bordered   table-responsive  table-hover"
				id="answerinfo">
				<thead>
					<tr>
						<th><div>
								<input type="checkbox" onclick="selectAll(this);" />
								&nbsp;全选/取消全选
							</div></th>
						<th>答案编号</th>
						<th>1</th>
						<th>2</th>
						<th>3</th>
						<th>4</th>
						<th>5</th>
						<th>6</th>
						<th>7</th>
						<th>8</th>
						<th>9</th>
						<th>10</th>
						<th>11</th>
						<th>12</th>
						<th>13</th>
						<th>14</th>
						<th>15</th>
						<th>16</th>
						<th>17</th>
						<th>18</th>
						<th>19</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="mytbody">
					<c:if test="${not empty answer_list}">
						<c:forEach items="${answer_list}" var="list" varStatus="count">
							<tr>
								<td><div>
										<input type="checkbox" name="checkbox" value="${list.aCetId}">
									</div></td>
								<td>${list.aCetId}</td>
								<td>${list.a1}</td>
								<td>${list.a2}</td>
								<td>${list.a3}</td>
								<td>${list.a4}</td>
								<td>${list.a5}</td>
								<td>${list.a6}</td>
								<td>${list.a7}</td>
								<td>${list.a8}</td>
								<td>${list.a9}</td>
								<td>${list.a10}</td>
								<td>${list.a11}</td>
								<td>${list.a12}</td>
								<td>${list.a13}</td>
								<td>${list.a14}</td>
								<td>${list.a15}</td>
								<td>${list.a16}</td>
								<td>${list.a17}</td>
								<td>${list.a18}</td>
								<td>${list.a19}</td>
								<td><a id="${list.aCetId}"
									href="<%=basePath%>answer/editAnswer/${list.aCetId}"
									target="myframe"><button class="btn btn-mini btn-info">
											<i class="icon icon-edit"></i> 编辑
										</button></a> &nbsp;&nbsp;&nbsp;
									<button class="btn btn-mini btn-danger"
										onclick="deleteAnswer(${list.aCetId})" type="button">
										<i class="icon icon-trash"></i> 删除
									</button></td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>