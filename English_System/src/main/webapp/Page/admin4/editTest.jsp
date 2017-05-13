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
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/zui.min.js"></script>

<script type="text/javascript" src="<%=basePath%>JS/admin4/editTest.js"></script>

</head>
<body>
	<div class="panel panel-info">
		<div class="panel-heading">参考答案详情</div>
		<div class="panel-body">
			<div class="panel-group" id="accordionPanels">
				<div class="panel panel-success">
					<div class="panel-heading" id="headingOne">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordionPanels"
								href="#collapseFive">写作 </a>
						</h4>
					</div>
					<div id="collapseFive" class="panel-collapse collapse in">
						<div class="panel-body ">
							<c:if test="${not empty  cet4_Part1}">
								<form class="form-horizontal">
									<div class="form-group" id="Part1tip">
										<label for="exampleInputAccount4" class="col-sm-1">写作要求</label>
										<div class="col-md-10">
											<textarea class="form-control" id="Part1" rows="5">${cet4_Part1.cet4TestContent}</textarea>
										</div>
									</div>
								</form>
								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-6">
										<button class="btn btn-success btn-block" type="button"
											id="cet4_Part1" onclick="editAndsavePart1()"
											value="${cet4_Part1.cet4TestId}">
											<i class="icon icon-save"></i> 修改并保存
										</button>
									</div>
								</div>
							</c:if>
						</div>
					</div>
				</div>
				<div class="panel panel-success">
					<div class="panel-heading" id="headingOne">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordionPanels"
								href="#collapseOne"> 听力部分1-25题听力选择 </a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse">
						<div class="panel-body ">
							<form class="form-horizontal">
								<c:if test="${not empty cet4_Part2}">
									<c:forEach items="${cet4_Part2}" varStatus="count" var="list">
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputPassword5" class="col-sm-2">题号：${count.count}
													</label>
													<div class="col-sm-10">
														<input type="text" style="display: none;"
															class="form-control" name="cet42Id${count.count}"
															value="${list.cet42Id}">
													</div>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-6">
												<div class="form-group" id="${count.count}A">
													<label for="exampleInputPassword5" class="col-sm-1">A</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															name="${count.count}cet42A" value="${list.cet42A}">
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group" id="${count.count}B">
													<label for="exampleInputPassword5" class="col-sm-1">B</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															name="${count.count}cet42B" id="exampleInputPassword5"
															value="${list.cet42B}">
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group" id="${count.count}C">
													<label for="exampleInputPassword5" class="col-sm-1">C</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															name="${count.count}cet42C" id="exampleInputPassword5"
															value="${list.cet42C}">
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group" id="${count.count}D">
													<label for="exampleInputPassword5" class="col-sm-1">D</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															name="${count.count}cet42D" id="exampleInputPassword5"
															value="${list.cet42D}">
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
									<div class="row">
										<div class="col-md-3"></div>
										<div class="col-md-6">
											<button class="btn btn-success btn-block" type="button"
												onclick="editAndsavePart2()">
												<i class="icon icon-save"></i> 修改并保存
											</button>
										</div>
									</div>
								</c:if>
							</form>
						</div>
					</div>
				</div>
				<div class="panel panel-success">
					<div class="panel-heading" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordionPanels" href="#collapseTwo">选词填空原文和选择答案</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse">
						<div class="panel-body">
							<c:if test="${not empty cet4_Part3A }">
								<form class="form-horizontal">
									<div class="form-group" id="aPart3Atip">
										<label for="exampleInputAccount4" class="col-sm-2">选词填空原文</label>
										<div class="col-md-10">
											<textarea class="form-control" id="aPart3A" rows="15">${cet4_Part3A.cet4Part3aBody}</textarea>
										</div>
									</div>
								</form>
								<table
									class="table table-striped table-bordered   table-responsive  table-hover"
									id="answerinfo">
									<thead>
										<tr>
											<th>1</th>
											<th>2</th>
											<th>3</th>
											<th>4</th>
											<th>5</th>
											<th>6</th>
											<th>7</th>
											<th>8</th>
										</tr>
									</thead>
									<tbody id="mytbody">
										<tr>
											<td><input type="text" class="form-control"
												name="cet4Part3aA" value="${cet4_Part3A.cet4Part3aA}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aB" value="${cet4_Part3A.cet4Part3aB}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aC" value="${cet4_Part3A.cet4Part3aC}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aD" value="${cet4_Part3A.cet4Part3aD}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aE" value="${cet4_Part3A.cet4Part3aE}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aF" value="${cet4_Part3A.cet4Part3aF}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aG" value="${cet4_Part3A.cet4Part3aG}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aH" value="${cet4_Part3A.cet4Part3aH}"></td>

										</tr>
									</tbody>
								</table>
								<table
									class="table table-striped table-bordered   table-responsive  table-hover"
									id="answerinfo">
									<thead>
										<tr>
											<th>9</th>
											<th>10</th>
											<th>11</th>
											<th>12</th>
											<th>13</th>
											<th>14</th>
											<th>15</th>

										</tr>
									</thead>
									<tbody id="mytbody">
										<tr>
											<td><input type="text" class="form-control"
												name="cet4Part3aI" value="${cet4_Part3A.cet4Part3aI}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aJ" value="${cet4_Part3A.cet4Part3aJ}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aK" value="${cet4_Part3A.cet4Part3aK}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aL" value="${cet4_Part3A.cet4Part3aL}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aM" value="${cet4_Part3A.cet4Part3aM}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aN" value="${cet4_Part3A.cet4Part3aN}"></td>
											<td><input type="text" class="form-control"
												name="cet4Part3aO" value="${cet4_Part3A.cet4Part3aO}"></td>

										</tr>
									</tbody>
								</table>
								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-6">
										<button class="btn btn-success btn-block" type="button"
											id="cetPart3A" onclick="editAndsavePart3A()"
											value="${cet4_Part3A.cet4Part3aId}">
											<i class="icon icon-save"></i> 修改并保存
										</button>

									</div>
								</div>
							</c:if>
						</div>
					</div>
				</div>
				<div class="panel panel-success">
					<div class="panel-heading" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordionPanels" href="#collapseThree">选词填空原文和选择答案</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse">
						<div class="panel-body">
							<c:if test="${not empty cet4_Part3B }">
								<form class="form-horizontal">
									<div class="form-group" id="cet4Part3bAtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文A</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bA" rows="7">${cet4_Part3B.cet4Part3bA}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bBtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文B</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bB" rows="7">${cet4_Part3B.cet4Part3bB}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bCtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文C</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bC" rows="7">${cet4_Part3B.cet4Part3bC}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bDtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文D</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bD" rows="7">${cet4_Part3B.cet4Part3bD}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bEtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文E</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bE" rows="7">${cet4_Part3B.cet4Part3bE}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bFtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文F</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bF" rows="7">${cet4_Part3B.cet4Part3bF}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bGtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文G</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bG" rows="7">${cet4_Part3B.cet4Part3bG}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bHtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文H</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bH" rows="7">${cet4_Part3B.cet4Part3bH}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bItip">
										<label for="exampleInputAccount4" class="col-sm-1">短文I</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bI" rows="7">${cet4_Part3B.cet4Part3bI}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bJtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文J</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bJ" rows="7">${cet4_Part3B.cet4Part3bJ}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bKtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文K</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bK" rows="7">${cet4_Part3B.cet4Part3bK}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bLtiptip">
										<label for="exampleInputAccount4" class="col-sm-1">短文L</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bL" rows="7">${cet4_Part3B.cet4Part3bL}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bMtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文M</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bM" rows="7">${cet4_Part3B.cet4Part3bM}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3bNtip">
										<label for="exampleInputAccount4" class="col-sm-1">短文N</label>
										<div class="col-md-10">
											<textarea class="form-control" id="cet4Part3bN" rows="7">${cet4_Part3B.cet4Part3bN}</textarea>
										</div>
									</div>
									<div class="form-group" id="cet4Part3b36">
										<label for="exampleInputAccount4" class="col-sm-1">问题36</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b36"
												value="${cet4_Part3B.cet4Part3b36}">
										</div>
									</div>
									<div class="form-group" id="cet4Part3b37">
										<label for="exampleInputAccount4" class="col-sm-1">问题37</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b37"
												value="${cet4_Part3B.cet4Part3b37}">
										</div>
									</div>
									<div class="form-group" id="cet4Part3b38">
										<label for="exampleInputAccount4" class="col-sm-1">问题38</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b38"
												value="${cet4_Part3B.cet4Part3b38}">
										</div>
									</div>
									<div class="form-group" id="cet4Part3b39">
										<label for="exampleInputAccount4" class="col-sm-1">问题39</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b39"
												value="${cet4_Part3B.cet4Part3b39}">
										</div>
									</div>
									<div class="form-group" id="cet4Part3b40 ">
										<label for="exampleInputAccount4" class="col-sm-1">问题40</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b40"
												value="${cet4_Part3B.cet4Part3b40}">
										</div>
									</div>
									<div class="form-group" id="cet4Part3b41">
										<label for="exampleInputAccount4" class="col-sm-1">问题41</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b41"
												value="${cet4_Part3B.cet4Part3b41}">
										</div>
									</div>
									<div class="form-group" id="cet4Part3b42">
										<label for="exampleInputAccount4" class="col-sm-1">问题42</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b42"
												value="${cet4_Part3B.cet4Part3b42}">
										</div>
									</div>
									<div class="form-group" id="cet4Part3b43">
										<label for="exampleInputAccount4" class="col-sm-1">问题43</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b43"
												value="${cet4_Part3B.cet4Part3b43}">
										</div>
									</div>
									<div class="form-group" id="cet4Part3b44">
										<label for="exampleInputAccount4" class="col-sm-1">问题44</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b44"
												value="${cet4_Part3B.cet4Part3b44}">
										</div>
									</div>
									<div class="form-group" id="cet4Part3b45">
										<label for="exampleInputAccount4" class="col-sm-1">问题45</label>
										<div class="col-md-11">
											<input type="text" class="form-control" name="cet4Part3b45"
												value="${cet4_Part3B.cet4Part3b45}">
										</div>
									</div>
								</form>

								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-6">
										<button class="btn btn-success btn-block" type="button"
											onclick="editAndsavePart3B()" id="cet4Part3bId"
											value="${cet4_Part3B.cet4Part3bId}">
											<i class="icon icon-save"></i> 修改并保存
										</button>
									</div>
								</div>
							</c:if>
						</div>
					</div>
				</div>
				<div class="panel panel-success">
					<div class="panel-heading" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordionPanels" href="#collapseFour">阅读理解原文级选项答案</a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse">
						<div class="panel-body">
							<c:if test="${not empty cet4_Part3C}">
								<c:forEach items="${cet4_Part3C}" var="list2" varStatus="count">
									<form class="form-horizontal">
										<c:if test="${count.count==1}">
											<div class="form-group" id="reading1">
												<label for="exampleInputAccount4" class="col-sm-1">阅读一</label>
												<div class="col-md-10">
													<textarea class="form-control" id="cet4PartcArticle1"
														rows="20">${list2.cet4PartcArticle}</textarea>
												</div>
											</div>
										</c:if>
										<c:if test="${count.count==6}">
											<div class="form-group" id="reading2">
												<label for="exampleInputAccount4" class="col-sm-1">阅读二</label>
												<div class="col-md-10">
													<textarea class="form-control" id="cet4PartcArticle2"
														rows="20">${list2.cet4PartcArticle}</textarea>
												</div>
											</div>
										</c:if>

										<div class="row" style="margin-top: 20px;">
											<div class="col-md-10">
												<div class="form-group">
													<label for="exampleInputPassword5" class="col-sm-1">问题${count.count+45}:
													</label>
													<div class="col-sm-10 col-md-7">
														<input type="text" class="form-control"
															name="cet4PartcQuestion${count.count}"
															value="${list2.cet4PartcQuestion}"> <span
															style="display: none;" id="cet4PartcId${count.count}">${list2.cet4PartcId}</span>
													</div>
												</div>
											</div>
										</div>
										<br />
										<div class="row">
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputPassword5" class="col-sm-1">A</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															name="cet4PartcA${count.count}"
															value="${list2.cet4PartcA}">
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputPassword5" class="col-sm-1">B</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															name="cet4PartcB${count.count}"
															value="${list2.cet4PartcB}">
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputPassword5" class="col-sm-1">C</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															name="cet4PartcC${count.count}"
															value="${list2.cet4PartcC}">
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group">
													<label for="exampleInputPassword5" class="col-sm-1">D</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															name="cet4PartcD${count.count}"
															value="${list2.cet4PartcD}">
													</div>
												</div>
											</div>
											<br />
										</div>
									</form>
								</c:forEach>
								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-6">
										<button class="btn btn-success btn-block" type="button"
											onclick="editAndsavePart3C()">
											<i class="icon icon-save"></i> 修改并保存
										</button>
									</div>
								</div>
							</c:if>
						</div>
					</div>
				</div>

				<div class="panel panel-success">
					<div class="panel-heading" id="headingOne">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordionPanels"
								href="#collapseSix">翻译 </a>
						</h4>
					</div>
					<div id="collapseSix" class="panel-collapse collapse">
						<div class="panel-body ">
							<c:if test="${not empty  cet4_Part4}">
								<form class="form-horizontal">
									<div class="form-group" id="Part4tip">
										<label for="exampleInputAccount4" class="col-sm-1">翻译文章</label>
										<div class="col-md-10">
											<textarea class="form-control" id="Part4" rows="5">${cet4_Part4.cet4Part4Content}</textarea>
										</div>
									</div>
								</form>
								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-6">
										<button class="btn btn-success btn-block" type="button"
											id="cet4_Part4" onclick="editAndsavePart4()"
											value="${cet4_Part4.cet4Part4Id}">
											<i class="icon icon-save"></i> 修改并保存
										</button>
									</div>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>