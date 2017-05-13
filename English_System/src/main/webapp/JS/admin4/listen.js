function deleteListen(fileid){
	var cell = document.getElementById(fileid);
	if(confirm( "确定要删除这条记录吗?" )){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/file/deletelistening",
			data:"fileid="+fileid,
			success:function(data){
				document.getElementById("mytbody").removeChild(cell);
				$("input[name='filecetid']").html("");
				$("input[name='filedownloadsum']").html("");
				$("input[name='filepath']").html("");
				$("input[name='filename']").html("");
				$("input[name='filername']").html("");
				$("input[name='filetime']").html("");
				if(data.attr=="success"){
					new $.zui.Messager('删除成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('对不起，没有删除失败！', {
						time:'4000',
						icon: 'info',
						type: 'danger' ,
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function deleteListen2(fileid){
	if(confirm( "确定要删除这条记录吗?" )){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/file/deletelistening",
			data:"fileid="+fileid,
			success:function(data){
				$("input[name='filecetid']").val("");
				$("input[name='filedownloadsum']").val("");
				$("input[name='filepath']").val("");
				$("input[name='filename']").val("");
				$("input[name='filername']").val("");
				$("input[name='filetime']").val("");
				$("#first option:selected").html("");
				if(data.attr=="success"){
					new $.zui.Messager('删除成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('对不起，没有删除失败！', {
						time:'4000',
						icon: 'info',
						type: 'danger' ,
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}


function editAndsave(fileid){
	var filecetid=$("input[name='filecetid']").val().trim();
	var filename=$("input[name='filename']").val();
	var filername=$("input[name='filername']").val();
	var filepath=$("input[name='filepath']").val();
	var acetIdValidate="success";
	var filenameValidate="success";
	var font=filecetid.substring(0,8);
	var parttern=/^[0-9]*$/;
	var back=filecetid.substring(9,filecetid.length);
	var data={
			fileid:fileid,
			filecetid:filecetid,
			filename:filename,
			filername:filername,
			filepath:filepath
	}
	if(filecetid.length==14||filecetid.length==13){
		if(font=="cet4_201"||font=="cet6_201"){
			if(parttern.test(filecetid.substring(8,9))){
				if(back=="_12_1"||back=="_12_2"||back=="_12_3"||back=="_6_1"||back=="_6_2"||back=="_6_3"){
					$("#listenidinfo").html("");
					$("#filecetid").removeClass("has-error");
					$("#filecetid").addClass("has-success");
					acetIdValidate="success";
				}else{
					acetIdValidate="false";
					$("#listenidinfo").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
					$("#filecetid").addClass("has-error");
				}
			}else{
				acetIdValidate="false";
				$("#listenidinfo").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
				$("#filecetid").addClass("has-error");
			}
		}else{
			acetIdValidate="false";
			$("#listenidinfo").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
			$("#filecetid").addClass("has-error");
		}
	}else{
		$("#listenidinfo").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
		$("#filecetid").addClass("has-error");
		acetIdValidate="false";
	}
	if(filername==""){
		$("#filenameinfo").html("原文件名不能为空!");
		$("#filername").addClass("has-error");
		filenameValidate="false";
	}
	if(acetIdValidate=="success"&&filenameValidate=="success"){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/file/editAndsave",
			data:JSON.stringify(data),
			contentType:'application/json;charset=utf-8',
			success:function(data){
				if(data.attr=="success"){
					new $.zui.Messager('修改成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					if(data.info=="exist"){
						$("#listenidinfo").html("录音编号已经存在，请输入其他的命名！");
						$("#filecetid").removeClass("has-success");
						$("#filecetid").addClass("has-error");
					}
					new $.zui.Messager('对不起，修改信息失败！', {
						time:'4000',
						icon: 'info',
						type: 'danger' ,
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function Batchdelete(){
	var list=new Array();
	var FileIdList="";
	var checknum=$("input[name='checkbox']:checked").length;
	if(checknum<1){
		new $.zui.Messager('请选择一条记录', {
			time:'40000',
			icon: 'times',
			type: 'warning' ,
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		if(confirm( "确定要批量删除?" ))
		{
			var select_obj=$("input[name='checkbox']");
			for(var i=0;i<select_obj.length;i++){
				if(select_obj.get(i).checked == true){
					list[i]=select_obj.get(i).value;
					FileIdList+=select_obj.get(i).value+",";
				}
			}


			$.ajax({
				type:'post',
				url:'http://localhost:8080/English_System/file/BatchdeleteDownload',
				data:'FileIdList='+FileIdList,
				success:function(data){
					if(data.attr=='success'){
						for(var j=0;j<select_obj.length;j++){
							if(select_obj[j].checked){
								tr = select_obj[j].parentNode.parentNode.parentNode;
								tr.parentNode.removeChild(tr);
							}
						}
						new $.zui.Messager('批量删除成功', {
							time:'4000',
							icon: 'check',
							type: 'success' ,
							placement: 'top' // 定义显示位置
						}).show();
					}else{
						new $.zui.Messager('批量删除成功！', {
							time:'4000',
							icon: 'info',
							type: 'danger' ,
							placement: 'top' // 定义显示位置
						}).show();
					}
				}
			});
		}
	}
}