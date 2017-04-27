
function loading(){
	$("#chartcet4").css('display','block');
	var test="一";
	var data = {
			labels: [test, "二", "三", "四", "五", "六", "七","八","九","十"],
			datasets: [
			           {
			        	   label: "蓝队",
			        	   fillColor :'green',
			        	   data: [65, 59, 80, 81, 56, 55, 40]
			           }, {
			        	   label: "绿队",
			        	   fillColor: 'green',
			        	   data: [28, 48, 40, 19, 86, 27, 90]
			           }
			           ]
	};

	// 图表配置项，可以留空来使用默认的配置
	var options = {
			scaleShowLabels: true, // 展示标签
	};
	var myBarChart = $('#myChart').barChart(data, options);

	var data2 = {
			// labels 数据包含依次在X轴上显示的文本标签
			labels: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
			datasets: [{
				// 数据集名称，会在图例中显示
				label: "红队",


//				也可以不指定颜色主题，使用下面的值来分别应用颜色设置，这些值会覆盖color生成的主题颜色设置


				pointStrokeColor: "#fff",


				// 数据集
				data: [65, 59, 80, 81, 56, 55, 40, 44, 55, 70, 30, 40]
			}, {
				label: "绿队",
				fillColor: "green",
				data: [28, 48, 40, 19, 86, 27, 90, 60, 30, 44, 50, 66]
			}]
	};

	legendTemplate : "<ul class='<%=name.toLowerCase()%>-legend'><% for (var i=0; i<datasets.length; i++){%><li><span style='background-color:<%=datasets[i].strokeColor%>'></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"

		var options = {}; // 图表配置项，可以留空来使用默认的配置

	var myLineChart = $("#myLineChart").lineChart(data2, options);
//	$("#chartcet4").show();
	
}
