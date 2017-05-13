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
<link rel="stylesheet"
	href="<%=basePath%>CSS/Third_Party/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=basePath%>CSS/Third_Party/fileinput.min.css">
<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/jquery-2.1.4.min.js"></script>

<script type="text/javascript"
	src="<%=basePath%>JS/Third_Party/fileinput.min.js"></script>
<script type="text/javascript" src="<%=basePath%>JS/Third_Party/zh.js"></script>
<script type="text/javascript">
	$(function() {
		//0.初始化fileinput
		var oFileInput = new FileInput();
		oFileInput.Init("txt_file", "/test/");
	});
	//初始化fileinput
	var FileInput = function() {
		var oFile = new Object();

		//初始化fileinput控件（第一次初始化）
		oFile.Init = function(ctrlName, uploadUrl) {
			var control = $('#' + ctrlName);

			//初始化上传控件的样式
			control.fileinput({
				language : 'zh', //设置语言
				uploadUrl : '/test/', //上传的地址
				allowedFileExtensions : [ 'jpg', 'gif', 'png' ],//接收的文件后缀
				showUpload : true, //是否显示上传按钮
				showCaption : false,//是否显示标题
				browseClass : "btn btn-primary", //按钮样式     
				maxFileCount : 2, //表示允许同时上传的最大文件个数
				enctype : 'multipart/form-data',
				validateInitialCount : true,
				previewFileIcon : "<i class='glyphicon glyphicon-king'></i>",
				msgFilesTooMany : "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
			});

			//导入文件上传完成之后的事件
			$("#txt_file").on("fileuploaded",
					function(event, data, previewId, index) {
						$("#myModal").modal("hide");
						var data = data.response.lstOrderImport;
						if (data == undefined) {
							toastr.error('文件格式类型不正确');
							return;
						}
						//1.初始化表格
						var oTable = new TableInit();
						oTable.Init(data);
						$("#div_startimport").show();
					});
		}
		return oFile;
	};
</script>

</head>
<body>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<label class="control-label">Select File</label> <input id="input-1"
				type="file" class="file" multiple class="file-loading">
		</div>
		<div class="col-md-3"></div>
	</div>
</body>
</html>