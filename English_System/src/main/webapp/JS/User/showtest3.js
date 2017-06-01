
function loading(){
	$("#chartcet4").css('display','block');
	var test="一";
	var data = {
			labels: [test, "二", "三", "四", "五", "六", "七","八","九","十"],
			datasets: [
			           {
			        	   label: "蓝队",
			        	   fillColor :'green',
			        	   data: [9, 25, 24]
			           }, {
			        	   label: "绿队",
			        	   fillColor: 'red',
			        	   data: [41, 30, 31]
			           }
			           ]
	};

	// 图表配置项，可以留空来使用默认的配置
	var options = {
			scaleShowLabels: true, // 展示标签
	};
	var myBarChart = $('#myChart').barChart(data, options);

	
	
}
