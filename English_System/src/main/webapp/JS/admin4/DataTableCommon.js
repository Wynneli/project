$(document).ready(function() {
	$('#myTable').DataTable({
		"oLanguage": {
			"sLengthMenu": "每页显示 _MENU_ 条记录",
			"sZeroRecords": "抱歉， 没有找到",
			"sInfo": "从  _START_ 到 _END_  / 共 _TOTAL_ 条数据",
			"sInfoEmpty": "没有数据",
			"sInfoFiltered": "(从 _MAX_ 条数据中检索)",
			"oPaginate": {
				"sPrevious": "上一页",
				"sNext": "下一页",

			}
		}
	});
});