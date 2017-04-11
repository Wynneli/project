function page_cet(page){
	var currentpage="当前页："+page;
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/admin/unique_cet_page",
		data:"pagecontent="+page,
		success:function(data){
			if(data.attr=='success'){
				$("#currentpage").html(currentpage);
				if(data.cet4list.length!=0){
					$("#show_userinfo tbody").html("");
					for(var i=0;i<data.cet4list.length;i++){
						if(i%2==0){
							var temp='<tr><td style="padding-left: 35px;"><label> <input'+
							' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
							'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
							'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
							'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
							'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
							'<td><a href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'" target="myframe" id="'+data.cet4list[i].cet4Id+'"> '+
							'<i class="icon icon-edit i_color"></i> 编辑'+
							'</a></td></tr>';
						}else{
							var temp='<tr class="active"><td style="padding-left: 35px;"><label> <input'+
							' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
							'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
							'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
							'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
							'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
							'<td><a href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'" target="myframe" id="'+data.cet4list[i].cet4Id+'"> '+
							'<i class="icon icon-edit i_color"></i> 编辑'+
							'</a></td></tr>';
						}
						$("#show_userinfo tbody").append(temp);
					} 
				}
			}
		}
	})
}


function search_cet_page(){
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
				data:'page='+page,
				success:function(data){
					$("#currentpage").html(currentpage);
					if(data.attr=='success'){
						if(data.cet4list.length!=0){
							$("#show_userinfo tbody").html("");
							for(var i=0;i<data.cet4list.length;i++){
								if(i%2==0){
									var temp='<tr><td style="padding-left: 35px;"><label> <input'+
									' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
									'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
									'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
									'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
									'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
									'<td><a href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'" target="myframe" id="'+data.cet4list[i].cet4Id+'"> '+
									'<i class="icon icon-edit i_color"></i> 编辑'+
									'</a></td></tr>';
								}else{
									var temp='<tr class="active"><td style="padding-left: 35px;"><label> <input'+
									' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
									'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
									'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
									'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
									'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
									'<td><a href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'" target="myframe" id="'+data.cet4list[i].cet4Id+'"> '+
									'<i class="icon icon-edit i_color"></i> 编辑'+
									'</a></td></tr>';
								}
								$("#show_userinfo tbody").append(temp);
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
			for(var i=0;i<select_obj.length;i++){
				if(select_obj.get(i).checked == true){
					CetIdList+=select_obj.get(i).value+",";
				}
			}
		}
		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/admin/BatchdeleteCet',
			data:'CetIdList='+CetIdList+'&page='+page,
			success:function(data){
				if(data.attr=='success'){
					$("#currentpage").html(currentpage);
					if(data.attr=='success'){
						if(data.page!=page){
							$("#currentpage").html("当前页："+data.page);
							$("#maxpage").html("共"+data.page+"页");
						}
						if(data.cet4list.length!=0){
							$("#show_userinfo tbody").html("");
							for(var i=0;i<data.cet4list.length;i++){
								if(i%2==0){
									var temp='<tr><td style="padding-left: 35px;"><label> <input'+
									' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
									'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
									'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
									'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
									'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
									'<td><a href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'" target="myframe" id="'+data.cet4list[i].cet4Id+'"> '+
									'<i class="icon icon-edit i_color"></i> 编辑'+
									'</a></td></tr>';
								}else{
									var temp='<tr class="active"><td style="padding-left: 35px;"><label> <input'+
									' type="checkbox" name="checkbox" value="'+data.cet4list[i].cet4Id+'">'+
									'</label></td><td>'+data.cet4list[i].cet4Id+'</td>'+
									'<td>'+data.cet4list[i].cet4Vocabulary+'</td>'+
									'<td>'+data.cet4list[i].cet4Pronunciation+'</td>'+
									'<td>'+data.cet4list[i].cet4Meaning+'</td>'+
									'<td><a href="http://localhost:8080/English_System/admin/cet_edit/'+data.cet4list[i].cet4Id+'" target="myframe" id="'+data.cet4list[i].cet4Id+'"> '+
									'<i class="icon icon-edit i_color"></i> 编辑'+
									'</a></td></tr>';
								}
								$("#show_userinfo tbody").append(temp);
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

