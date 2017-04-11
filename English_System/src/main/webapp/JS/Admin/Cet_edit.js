function editAndsave(){
	if($("#cet4Pronunciation").val()==""||$("#cet4Vocabulary").val()==''||$("#cet4Meaning").val()==""){
		if($("#cet4Vocabulary").val()==""){
			new $.zui.Messager('词汇不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'center' // 定义显示位置
			}).show();
		}else if($("#cet4Pronunciation").val()==''){
			new $.zui.Messager('音标不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'center' // 定义显示位置
			}).show();
		}else{
			new $.zui.Messager('词意不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'center' // 定义显示位置
			}).show();
		}
	}else{

		var data={
				cet4Id:$("#cet4Id").val(),
				cet4Vocabulary:$("#cet4Vocabulary").val(),
				cet4Pronunciation:$("#cet4Pronunciation").val(),
				cet4Meaning:$("#cet4Meaning").val(),

		}
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/admin/cet_editAndsave",
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(data),
			success:function(data){
				if(data.attr=='success'){
					new $.zui.Messager('修改成功', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'center' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('修改失败', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						placement: 'center' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function cet_delete(){
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/admin/cet_delete",
		data:'cet4Id='+$("#cet4Id").val(),
		success:function(data){
			if(data.attr=='success'){
				new $.zui.Messager('删除成功', {
					time:'4000',
					icon: 'check',
					type: 'success' ,
					placement: 'center' // 定义显示位置
				}).show();
			}else{
				new $.zui.Messager('删除失败', {
					time:'4000',
					icon: 'times',
					type: 'danger' ,
					placement: 'center' // 定义显示位置
				}).show();
			}
		}
	});
}