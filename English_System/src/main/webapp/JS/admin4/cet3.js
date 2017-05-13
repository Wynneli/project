function page_cet(page){
	var select_obj=$("input[name='checkbox']");
	var cet=select_obj.get(0).value;
	var currentpage="当前页："+page;
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/admin/unique_cet_page",
		data:"pagecontent="+page+"&cet="+cet,
		success:function(data){
			if(data.attr=='success'){
				$("#currentpage").html(currentpage);
				if(data.cet4list.length!=0){
					$("#show_cetinfo tbody").html("");
					for(var i=0;i<data.cet4list.length;i++){
						var temp='<tr><td><label> <input'+
						' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
						'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
						'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
						'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
						'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
						'<td><a id="'+data.cet4list[i].cet4Id+'" '+
						' href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'"'+
						'target="myframe"><button class="btn btn-mini btn-info">'+
						'<i class="icon icon-edit"></i> 编辑'+
						'</button></a>&nbsp;&nbsp;&nbsp;'+
						'<button onclick="cet_delete('+data.cet4list[i].cet4Id+')" '+
						' class="btn btn-mini btn-danger">'+
						' <i class="icon icon-trash "></i> 删除'+
						'</button></td></tr>';
						$("#show_cetinfo tbody").append(temp);
					} 
				}
			}
		}
	})
}


function search_cet_page(){
	var select_obj=$("input[name='checkbox']");
	var cet=select_obj.get(0).value;
	var maxpage=$("#maxpage").html();
	var li_list=$("#pagecontent2 li");
	var page2=maxpage.substring(1,4);
	var page=$("input[name='page']").val();
	var currentpage="当前页："+page;
	if(page>317||page<=0){
		if(page>page2){
			new $.zui.Messager('输入的页码不能大于'+page2, {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'center' // 定义显示位置
			}).show();
		}else{
			new $.zui.Messager('输入的页码不能小于1', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'center' // 定义显示位置
			}).show();
		}
	}else{
		if(isNaN(page)){
			new $.zui.Messager('请输入数字', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'center' // 定义显示位置
			}).show();
		}else{
			$.ajax({
				type:'post',
				url:'http://localhost:8080/English_System/admin/search_cet_page',
				data:'page='+page+"&cet="+cet,
				success:function(data){
					$("#currentpage").html(currentpage);
					if(data.attr=='success'){
						if(data.cet4list.length!=0){
							$("#show_cetinfo tbody").html("");
							for(var i=0;i<data.cet4list.length;i++){
								var temp='<tr><td><label> <input'+
								' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
								'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
								'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
								'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
								'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
								'<td><a id="'+data.cet4list[i].cet4Id+'" '+
								' href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'"'+
								'target="myframe"><button class="btn btn-mini btn-info">'+
								'<i class="icon icon-edit"></i> 编辑'+
								'</button></a>&nbsp;&nbsp;&nbsp;'+
								'<button onclick="cet_delete('+data.cet4list[i].cet4Id+')" '+
								' class="btn btn-mini btn-danger">'+
								' <i class="icon icon-trash "></i> 删除'+
								'</button></td></tr>';
								$("#show_cetinfo tbody").append(temp);
								$("input[name='page']").val("");
							}

						} 
					}
				}
			});
		}
	}
}

function Batchdelete(){
	var currentpage=$("#currentpage").html();
	var page=currentpage.substring(4);
	var CetIdList="";
	var checknum=$("input[name='checkbox']:checked").length;
	if(checknum<1){
		new $.zui.Messager('请选择一条记录', {
			time:'100000',
			icon: 'times',
			type: 'warning' ,
			placement: 'center' // 定义显示位置
		}).show();
	}else{
		if(confirm( "确定要批量删除?" ))
		{
			var select_obj=$("input[name='checkbox']");
			var cetType=select_obj.get(0).value;
			for(var i=0;i<select_obj.length;i++){
				if(select_obj.get(i).checked == true){
					CetIdList+=select_obj.get(i).value+",";
				}
			}
		}
		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/admin/BatchdeleteCet',
			data:'CetIdList='+CetIdList+'&page='+page+"&cetType="+cetType,
			success:function(data){
				if(data.attr=='success'){
					$("#currentpage").html(currentpage);
					if(data.attr=='success'){
						if(data.page!=page){
							$("#currentpage").html("当前页："+data.page);
							$("#maxpage").html("共"+data.page+"页");
						}
						if(data.cet4list.length!=0){
							$("#show_cetinfo tbody").html("");
							for(var i=0;i<data.cet4list.length;i++){
								var temp='<tr><td><label> <input'+
								' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
								'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
								'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
								'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
								'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
								'<td><a id="'+data.cet4list[i].cet4Id+'" '+
								' href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'"'+
								'target="myframe"><button class="btn btn-mini btn-info">'+
								'<i class="icon icon-edit"></i> 编辑'+
								'</button></a>&nbsp;&nbsp;&nbsp;'+
								'<button onclick="cet_delete('+data.cet4list[i].cet4Id+')" '+
								' class="btn btn-mini btn-danger">'+
								' <i class="icon icon-trash "></i> 删除'+
								'</button></td></tr>';
								$("#show_cetinfo tbody").append(temp);
							}
							new $.zui.Messager('删除成功', {
								time:'4000',
								icon: 'check',
								type: 'success' ,
								placement: 'center' // 定义显示位置
							}).show();
						} 
					}
				}
			}
		})
	}
}

function cet_delete(cetid){
	var currentpage=$("#currentpage").html();
	var page=currentpage.substring(4);
	if(confirm( "确定要删除这条记录吗?" ))
	{
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/admin/cet_delete",
			data:'cet4Id='+cetid+"&page="+page,
			success:function(data){
				if(data.attr=='success'){
					if(data.cet4list.length!=0){
						$("#show_cetinfo tbody").html("");
						for(var i=0;i<data.cet4list.length;i++){
							var temp='<tr><td><label> <input'+
							' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
							'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
							'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
							'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
							'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
							'<td><a id="'+data.cet4list[i].cet4Id+'" '+
							' href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'"'+
							'target="myframe"><button class="btn btn-mini btn-info">'+
							'<i class="icon icon-edit"></i> 编辑'+
							'</button></a>&nbsp;&nbsp;&nbsp;'+
							'<button onclick="cet_delete('+data.cet4list[i].cet4Id+')" '+
							' class="btn btn-mini btn-danger">'+
							' <i class="icon icon-trash "></i> 删除'+
							'</button></td></tr>';
							$("#show_cetinfo tbody").append(temp);
						} 
					}
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
}