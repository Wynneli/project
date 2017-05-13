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

<script type="text/javascript" src="<%=basePath%>JS/admin4/common.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/admin4/answer.js"></script>
</head>
<body>
	<div class="panel panel-info">
		<div class="panel-heading">参考答案详情</div>
		<div class="panel-body">
			<div class="panel-group" id="accordionPanels">
				<div class="panel panel-special">
					<div class="panel-heading" id="headingOne">
						<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordionPanels"
								href="#collapseOne"> 听力部分答案 </a>
						</h4>
					</div>
					<div id="collapseOne" class="panel-collapse collapse in">
						<div class="panel-body">
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
										<th>9</th>
										<th>10</th>
									</tr>
								</thead>
								<tbody id="mytbody">
									<tr>
										<td><input type="text" class="form-control" name="a1"
											value="${answer.a1}"></td>
										<td><input type="text" class="form-control" name="a2"
											value="${answer.a2}"></td>
										<td><input type="text" class="form-control" name="a3"
											value="${answer.a3}"></td>
										<td><input type="text" class="form-control" name="a4"
											value="${answer.a4}"></td>
										<td><input type="text" class="form-control" name="a5"
											value="${answer.a5}"></td>
										<td><input type="text" class="form-control" name="a6"
											value="${answer.a6}"></td>
										<td><input type="text" class="form-control" name="a7"
											value="${answer.a7}"></td>
										<td><input type="text" class="form-control" name="a8"
											value="${answer.a8}"></td>
										<td><input type="text" class="form-control" name="a9"
											value="${answer.a9}"></td>
										<td><input type="text" class="form-control" name="a10"
											value="${answer.a10}"></td>
									</tr>
								</tbody>
							</table>
							<br />
							<table
								class="table table-striped table-bordered   table-responsive  table-hover"
								id="answerinfo">
								<thead>
									<tr>
										<th>11</th>
										<th>12</th>
										<th>13</th>
										<th>14</th>
										<th>15</th>
										<th>16</th>
										<th>17</th>
										<th>18</th>
										<th>19</th>
										<th>20</th>
									</tr>
								</thead>
								<tbody id="mytbody">
									<tr>
										<td><input type="text" class="form-control" name="a11"
											value="${answer.a11}"></td>
										<td><input type="text" class="form-control" name="a12"
											value="${answer.a12}"></td>
										<td><input type="text" class="form-control" name="a13"
											value="${answer.a13}"></td>
										<td><input type="text" class="form-control" name="a14"
											value="${answer.a14}"></td>
										<td><input type="text" class="form-control" name="a15"
											value="${answer.a15}"></td>
										<td><input type="text" class="form-control" name="a16"
											value="${answer.a16}"></td>
										<td><input type="text" class="form-control" name="a17"
											value="${answer.a17}"></td>
										<td><input type="text" class="form-control" name="a18"
											value="${answer.a18}"></td>
										<td><input type="text" class="form-control" name="a19"
											value="${answer.a19}"></td>
										<td><input type="text" class="form-control" name="a20"
											value="${answer.a20}"></td>
									</tr>
								</tbody>
							</table>
							<br />
							<div class="row">
								<div class="col-md-6">
									<table
										class="table table-striped table-bordered   table-responsive  table-hover"
										id="answerinfo">
										<thead>
											<tr>
												<th>21</th>
												<th>22</th>
												<th>23</th>
												<th>24</th>
												<th>25</th>
											</tr>
										</thead>
										<tbody id="mytbody">
											<tr>
												<td><input type="text" class="form-control" name="a21"
													value="${answer.a21}"></td>
												<td><input type="text" class="form-control" name="a22"
													value="${answer.a22}"></td>
												<td><input type="text" class="form-control" name="a23"
													value="${answer.a23}"></td>
												<td><input type="text" class="form-control" name="a24"
													value="${answer.a24}"></td>
												<td><input type="text" class="form-control" name="a25"
													value="${answer.a25}"></td>

											</tr>
										</tbody>
									</table>
								</div>
								<div class="col-md-1"></div>
								<div class="col-md-3">
									<br /> <br />
									<button class="btn btn-success btn-block" id="part1save"
										value='${answer.aCetId}' onclick="editAndsavepart1()"
										type="button">
										<i class="icon icon-save "></i> 保 存
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel panel-special">
					<div class="panel-heading" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordionPanels" href="#collapseTwo"> 听力理解 </a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse">
						<div class="panel-body">
							<table
								class="table table-striped table-bordered   table-responsive  table-hover"
								id="answerinfo">
								<thead>
									<tr>
										<th>26</th>
										<th>27</th>
										<th>28</th>
										<th>29</th>
										<th>30</th>
										<th>31</th>
										<th>32</th>
										<th>33</th>
										<th>34</th>
										<th>35</th>
									</tr>
								</thead>
								<tbody id="mytbody">
									<tr>
										<td><input type="text" class="form-control" name="a26"
											value="${answer.a26}"></td>
										<td><input type="text" class="form-control" name="a27"
											value="${answer.a27}"></td>
										<td><input type="text" class="form-control" name="a28"
											value="${answer.a28}"></td>
										<td><input type="text" class="form-control" name="a29"
											value="${answer.a29}"></td>
										<td><input type="text" class="form-control" name="a30"
											value="${answer.a30}"></td>
										<td><input type="text" class="form-control" name="a31"
											value="${answer.a31}"></td>
										<td><input type="text" class="form-control" name="a32"
											value="${answer.a32}"></td>
										<td><input type="text" class="form-control" name="a33"
											value="${answer.a33}"></td>
										<td><input type="text" class="form-control" name="a34"
											value="${answer.a34}"></td>
										<td><input type="text" class="form-control" name="a35"
											value="${answer.a35}"></td>
									</tr>
								</tbody>
							</table>
							<br />
							<table
								class="table table-striped table-bordered   table-responsive  table-hover"
								id="answerinfo">
								<thead>
									<tr>
										<th>36</th>
										<th>37</th>
										<th>38</th>
										<th>39</th>
										<th>40</th>
										<th>41</th>
										<th>42</th>
										<th>43</th>
										<th>44</th>
										<th>45</th>
									</tr>
								</thead>
								<tbody id="mytbody">
									<tr>
										<td><input type="text" class="form-control" name="a36"
											value="${answer.a36}"></td>
										<td><input type="text" class="form-control" name="a37"
											value="${answer.a37}"></td>
										<td><input type="text" class="form-control" name="a38"
											value="${answer.a38}"></td>
										<td><input type="text" class="form-control" name="a39"
											value="${answer.a39}"></td>
										<td><input type="text" class="form-control" name="a40"
											value="${answer.a40}"></td>
										<td><input type="text" class="form-control" name="a41"
											value="${answer.a41}"></td>
										<td><input type="text" class="form-control" name="a42"
											value="${answer.a42}"></td>
										<td><input type="text" class="form-control" name="a43"
											value="${answer.a43}"></td>
										<td><input type="text" class="form-control" name="a44"
											value="${answer.a44}"></td>
										<td><input type="text" class="form-control" name="a45"
											value="${answer.a45}"></td>
									</tr>
								</tbody>
							</table>
							<br />
							<table
								class="table table-striped table-bordered   table-responsive  table-hover"
								id="answerinfo">
								<thead>
									<tr>
										<th>46</th>
										<th>47</th>
										<th>48</th>
										<th>49</th>
										<th>50</th>
										<th>51</th>
										<th>52</th>
										<th>53</th>
										<th>54</th>
										<th>55</th>
									</tr>
								</thead>
								<tbody id="mytbody">
									<tr>
										<td><input type="text" class="form-control" name="a46"
											value="${answer.a46}"></td>
										<td><input type="text" class="form-control" name="a47"
											value="${answer.a47}"></td>
										<td><input type="text" class="form-control" name="a48"
											value="${answer.a48}"></td>
										<td><input type="text" class="form-control" name="a49"
											value="${answer.a49}"></td>
										<td><input type="text" class="form-control" name="a50"
											value="${answer.a50}"></td>
										<td><input type="text" class="form-control" name="a51"
											value="${answer.a51}"></td>
										<td><input type="text" class="form-control" name="a52"
											value="${answer.a52}"></td>
										<td><input type="text" class="form-control" name="a53"
											value="${answer.a53}"></td>
										<td><input type="text" class="form-control" name="a54"
											value="${answer.a54}"></td>
										<td><input type="text" class="form-control" name="a55"
											value="${answer.a55}"></td>

									</tr>
								</tbody>
							</table>
							<br />
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-6">
									<button class="btn btn-success btn-block" id="part2save"
										value='${answer.aCetId}' onclick="editAndsavepart2()"
										type="button">
										<i class="icon icon-save "></i> 保 存
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel panel-special">
					<div class="panel-heading" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordionPanels" href="#collapseThree">写作</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse">
						<div class="panel-body">
							<form class="form-horizontal">
								<div class="form-group">
									<label for="exampleInputAccount4" class="col-sm-1">参考答案</label>
									<div class="col-md-11">
										<textarea class="form-control" id="aPart1" rows="10">${answer.aPart1}</textarea>
									</div>
								</div>
							</form>
							<br />
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-6">
									<button class="btn btn-success btn-block" id="part3save"
										value='${answer.aCetId}' onclick="editAndsavepart3()"
										type="button">
										<i class="icon icon-save "></i> 保 存
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="panel panel-special">
					<div class="panel-heading" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordionPanels" href="#collapseFour">翻译</a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse">
						<div class="panel-body">
							<form class="form-horizontal">
								<div class="form-group">
									<label for="exampleInputAccount4" class="col-sm-1">参考答案</label>
									<div class="col-md-11">
										<textarea class="form-control" id="aPart4" rows="10">${answer.aPart4}</textarea>
									</div>
								</div>
							</form>
							<br />
							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-6">
									<button class="btn btn-success btn-block" id="part4save"
										value='${answer.aCetId}' onclick="editAndsavepart4()"
										type="button">
										<i class="icon icon-save "></i> 保 存
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>