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


function select(a){
	var f="--状态筛选--";
	var s="--是否接受--";
	var sltfirst=$('#first option:selected').text();
	if(sltfirst==f){
		sltfirst="";
	}
	var data={
			filetypes:sltfirst,
			filetype:a,
	}
	if(sltfirst!=""){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/file/Brushlisten",
			data:JSON.stringify(data),
			contentType: "application/json;charset=utf-8",
			success:function(data){
				if(data.attr=="success"){
					if(data.list.length!=0){
						$("#listeninfo tbody").html("");
						for(var i=0;i<data.list.length;i++){
							var temp='<tr id="'+data.list[i].fileid+'">'+
							'<td><label> <input type="checkbox" name="checkbox"'+
							'value="'+data.list[i].fileid+'"></label></td>'+
							'<td>'+data.list[i].fileid+'</td>'+
							'<td>'+data.list[i].filetype+'</td>'+
							'<td>'+data.list[i].filerealname+'</td>'+
							'<td>'+data.list[i].filesize+'</td>'+
							'<td>'+data.list[i].filetime+'</td>'+
							'<td>'+data.list[i].filedownloadsum+'</td>'+
							'<td>'+data.list[i].filetypes+'</td>'+
							'<td><a id="'+data.list[i].fileid+'"'+
							'href="http://localhost:8080/English_System/file/editListen/'+data.list[i].fileid+'"'+
							'target="myframe"><button class="btn btn-mini btn-info">'+
							'<i class="icon icon-edit"></i> 编辑'+
							' </button></a> &nbsp;&nbsp;&nbsp;'+
							' <button class="btn btn-mini btn-danger"'+
							'  onclick="deleteListen('+data.list[i].fileid+')" type="button">'+
							' <i class="icon icon-trash"></i> 删除'+
							'</button></td></tr>';
							$("#listeninfo tbody").append(temp);
						}

					} 
					new $.zui.Messager('数据加载成功！', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('对不起，没有相关数据', {
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
	var filerealname=$("input[name='filerealname']").val();
	var filename=$("input[name='filename']").val();
	var filepath=$("input[name='filepath']").val();
	var data={
			fileid:fileid,
			filename:filename,
			filerealname:filerealname,
			filepath:filepath
	}

	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/file/editAndsave",
		data:JSON.stringify(data),
		contentType:'application/json;charset=utf-8',
		success:function(data){
			if(data.attr=="success"){
				alert("success4");
				if(data.download!=null){
					document.getElementById("filename").value=data.download.filename;
					document.getElementById("filedownloadsum").value=data.download.filedownloadsum;
					document.getElementById("filepath").value=data.download.filepath;
				}
				new $.zui.Messager('修改成功！', {
					time:'4000',
					icon: 'check',
					type: 'success' ,
					placement: 'top' // 定义显示位置
				}).show();
			}else{
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

function test(){
//	var formElement = document.querySelector("form");
	var formData = new FormData();
	alert($("input[name='filename']").val());
	formData.append("filename", $("input[name='filename']").val());
	formData.append('file',$('#file')[0].files[0]);

	$.ajax({
		type:'post',
		url:'http://localhost:8080/English_System/file/test',
		data:formData,
		processData : false,  //必须false才会避开jQuery对 formdata 的默认处理   
		contentType : false,  //必须false才会自动加上正确的Content-Type 
		success:function(data){
			alert(1234);
		}
	});
}