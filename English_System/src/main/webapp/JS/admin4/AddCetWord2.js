function saveAndSubmit(){
	var data={
			cet4Id:$("#cet4Id").val(),
			cet4Vocabulary:$("#cet4Vocabulary").val(),
			cet4Pronunciation:$("#cet4Pronunciation").val(),
			cet4Meaning:$("#cet4Meaning").val(),
	}
	if($("#cet4Pronunciation").val()==""||$("#cet4Vocabulary").val()==''||$("#cet4Meaning").val()==""){
		if($("#cet4Vocabulary").val()==""){
			new $.zui.Messager('词汇不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'top' // 定义显示位置
			}).show();
		}else if($("#cet4Pronunciation").val()==''){
			new $.zui.Messager('音标不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'top' // 定义显示位置
			}).show();
		}else{
			new $.zui.Messager('词意不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'top' // 定义显示位置
			}).show();
		}
	}else{
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/admin/saveAndSubbmit",
			contentType:'application/json;charset=utf-8',
			data:JSON.stringify(data),
			success:function(data){
				if(data.attr=='success'){
					$("#cet4Id").val(data.cetId);
					$("#cet4Vocabulary").val("");
					$("#cet4Pronunciation").val("")
					$("#cet4Meaning").val("")
					new $.zui.Messager('新增成功', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('新增失败', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}