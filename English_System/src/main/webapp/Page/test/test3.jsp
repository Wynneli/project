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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="<%=basePath%>CSS/Third_Party/all.css">

<!-- jQuery -->
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<!-- DataTables -->
<script type="text/javascript" charset="utf8"
	src="<%=basePath%>JS/Third_Party/icheck.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('input').iCheck({
					checkboxClass : 'icheckbox_square-blue',
					radioClass : 'icheckbox_square-green',
					increaseArea : '10%' // optional
				});
				function selectAll(checkbox) {
					$('input[name=checkbox]').prop('checked',
							$(checkbox).prop('checked'));
				}
			});
</script>
</head>
<body>
	<div>
		<input type="checkbox">
	</div>

	<label for="baz[2]">Bar</label>
	<div class="iradio">
		<input type="radio" name="quux[2]" id="baz[2]">
	</div>
</body>
</html>