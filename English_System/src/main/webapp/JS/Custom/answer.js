$(function(){
//	$("li").each(function(index){
//	$(this).click(function(){
//	$("li").removeClass("active");
//	$("li").eq(index).addClass("active");
//	$('#content div').eq($(this).index()).show().siblings().hide();
//	});
//	});
	$("#ulContainer li").click(function(){
		$(this).addClass("active").siblings().removeClass("active");
		var index = $(this).index();
		$("#content li").eq(index).show().siblings().hide();
	});
});

function show_chart(){
	var allMyCharts = $("canvas").chart();
	if($("#getusername").text()==""){
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		var data1={chartUsername:$("#getusername").text(),
				chartCetId:$("#cetid").text()
		}
		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/cet4/show_chart',
			data:JSON.stringify(data1),
			contentType:'application/json;charset=uft-8',
			success:function(data){
				if(data!=""){
					var datas = {
							labels: ["听力部分", "选词填空", "信息匹配", "阅读理解"],
							datasets: [
							           {
							        	   label: '正确',
							        	   fillColor :'green',
							        	   data: [data.record.chartPart1, data.record.chartPart2, data.record.chartPart3, data.record.chartPart4]
							           }, {
							        	   label: '错误',
							        	   fillColor:'#EE0000',
							        	   data: [25-data.record.chartPart1, 10-data.record.chartPart2, 10-data.record.chartPart3, 10-data.record.chartPart4]
							           }
							           ]
					};

					var options = {scaleShowLabels: true,}; // 图表配置项，可以留空来使用默认的配置
					var myBarChart = $('#myChart').barChart(datas, options);
					$(".table_comment").show();
				}
			}
		});
	}
}

function show_Piechart(){
	if($("#getusername").text()==""){
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		var data1={chartUsername:$("#getusername").text(),
				chartCetId:$("#cetid").text()
		}
		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/cet4/show_Piechart',
			data:JSON.stringify(data1),
			contentType:'application/json;charset=uft-8',
			success:function(data){

				var data1 = [{
				    value: data.correct,
				    color: "green", // 使用颜色名称
				    label: "正确率(百分比%)"
				}, {
				    value: data.error,
				    color:"#EE0000", // 自定义颜色
				    label: "错误率(百分比%)"
				}];

				// 图表配置项，可以留空来使用默认的配置
				var options = {
				    scaleShowLabels: true, // 展示标签
				};

				// 创建饼图
				var myPieChart = $("#myPieChart").pieChart(data1, options);
				$(".table_comment2").show();
			}
		});
	}
}


function show_chart2(){
	var allMyCharts1 = $("canvas").chart();
	if($("#getusername").text()==""){
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		var data1={chartUsername:$("#getusername").text(),
				chartCetId:$("#cetid").text()
		}
		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/cet4/show_chart',
			data:JSON.stringify(data1),
			contentType:'application/json;charset=uft-8',
			success:function(data){
				if(data!=""){
					var datas = {
							labels: ["听力部分", "选词填空", "信息匹配", "阅读理解"],
							datasets: [
							           {
							        	   label: '正确',
							        	   fillColor :'green',
							        	   data: [data.record.chartPart1, data.record.chartPart2, data.record.chartPart3, data.record.chartPart4]
							           }, {
							        	   label: '错误',
							        	   fillColor:'#EE0000',
							        	   data: [25-data.record.chartPart1, 10-data.record.chartPart2, 10-data.record.chartPart3, 10-data.record.chartPart4]
							           }
							           ]
					};

					var options = {scaleShowLabels: true,}; // 图表配置项，可以留空来使用默认的配置
					var myBarChart2 = $('#myChart2').barChart(datas, options);
					$(".table_comment").show();
				}
			}
		});
	}
}

function show_Piechart2(){
	if($("#getusername").text()==""){
		new $.zui.Messager('<a style="color:white;"  href="../login/Login.jsp">您好，请登录!</a>', {
			time:'4000',
			icon: 'info-sign',
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		var data1={chartUsername:$("#getusername").text(),
				chartCetId:$("#cetid").text()
		}
		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/cet4/show_Piechart',
			data:JSON.stringify(data1),
			contentType:'application/json;charset=uft-8',
			success:function(data){
//				alert(123);
				var data1 = [{
				    value: data.correct,
				    color: "green", // 使用颜色名称
				    label: "正确率(百分比%)"
				}, {
				    value: data.error,
				    color:"#EE0000", // 自定义颜色
				    label: "错误率(百分比%)"
				}];

				// 图表配置项，可以留空来使用默认的配置
				var options = {
				    scaleShowLabels: true, // 展示标签
				};

				// 创建饼图
				var myPieChart2 = $("#myPieChart2").pieChart(data1, options);
				$(".table_comment2").show();
			}
		});
	}
}





