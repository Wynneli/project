function deletearticle(a){
	var cell = document.getElementById(a);
	if(confirm( "确定要删除这条记录吗?" )){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/article/deleteArticle",
			data:"articleId="+a,
			success:function(data){
				if(data.attr=="success"){
					document.getElementById("mytbody").removeChild(cell);
					new $.zui.Messager('删除成功', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('删除失败', {
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}
			}
		});
	}
}

function Batchdelete(){
	var ArticleIdList="";
	var checknum=$("input[name='checkbox']:checked").length;
	if(checknum<1){
		new $.zui.Messager('请选择一条记录', {
			time:'100000',
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
					ArticleIdList+=select_obj.get(i).value+",";
				}
			}
		}
		$.ajax({
			type:'post',
			url:'http://localhost:8080/English_System/article/BatchdeleteArticle',
			data:'ArticleIdList='+ArticleIdList,
			success:function(data){
				if(data.attr=='success'){
					if(data.list.length!=0){
						$("#show_articleinfo tbody").html("");
						for(var i=0;i<data.list.length;i++){
							var temp='<tr id="'+data.list[i].articleId+'">'+
							'<td><label> <input type="checkbox" value="'+data.list[i].articleId+'" name="checkbox">'+
							'</label></td>'+
							'<td>'+data.list[i].articleId+'</td>'+
							'<td>'+data.list[i].articleChinese+'</td>'+
							'<td>'+data.list[i].articleEnglish+'</td>'+
							'<td>'+data.list[i].articleTime+'</td>'+
							'<td>'+data.list[i].articleScan+'</td>'+
							'<td>'+data.list[i].articleLike+'</td>'+
							'<td><a target="myframe"'+
							'href="http://localhost:8080/English_System/article/articleDetails/'+data.list[i].articleId+'"><button'+
							' class="btn btn-mini btn-info">'+
							'<i class="icon icon-edit"></i>编辑'+
							'</button>&nbsp; </a>'+
							'<button onclick="deletearticle('+data.list[i].articleId+')"'+
							'  class="btn btn-mini btn-danger">'+
							'<i class="icon icon-trash  "></i>删除'+
							'</button></td></tr>';
							$("#show_articleinfo tbody").append(temp);
						} 
					}
					new $.zui.Messager('批量删除成功', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
				}else{
					new $.zui.Messager('批量删除失败！', {
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

function edit(b){
	var articleEnglish=$("#english").val();
	var articleChinese=$("#chinese").val();
	var validate="success";
	var data={
			articleEnglish:articleEnglish,
			articleChinese:articleChinese,
			articleId:b
	}
	$("#englishinfo").removeClass("has-error");
	$("#chineseinfo").removeClass("has-error");
	if(articleEnglish==""||articleChinese==""){
		validate="false";
		if(articleChinese==""){
			new $.zui.Messager('中文不能为空！', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'top' // 定义显示位置
			}).show();
			$("#chineseinfo").addClass("has-error");
		}else{
			new $.zui.Messager('英文不能为空！',{
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'top' // 定义显示位置
			}).show();
			$("#englishinfo").addClass("has-error");
		}
	}
	if(validate=="success"){
		$.ajax({
			type:'post',
			data:JSON.stringify(data),
			contentType: "application/json;charset=utf-8",
			url:'http://localhost:8080/English_System/article/updateArticle',
			success:function(data){
				if(data.attr=='success'){
					new $.zui.Messager('修改成功', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();

				}else{
					new $.zui.Messager('修改失败！', {
						time:'4000',
						icon: 'info',
						type: 'danger' ,
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		})
	}
}

function add(){
	var articleEnglish=$("#english").val();
	var articleChinese=$("#chinese").val();
	var validate="success";
	var data={
			articleEnglish:articleEnglish,
			articleChinese:articleChinese,
	}
	$("#englishinfo").removeClass("has-error");
	$("#chineseinfo").removeClass("has-error");
	if(articleEnglish==""||articleChinese==""){
		validate="false";
		if(articleChinese==""){
			new $.zui.Messager('中文不能为空！', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'top' // 定义显示位置
			}).show();
			$("#chineseinfo").addClass("has-error");
		}else{
			new $.zui.Messager('英文不能为空！',{
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				placement: 'top' // 定义显示位置
			}).show();
			$("#englishinfo").addClass("has-error");
		}
	}
	if(validate=="success"){
		$.ajax({
			type:'post',
			data:JSON.stringify(data),
			contentType: "application/json;charset=utf-8",
			url:'http://localhost:8080/English_System/article/addArticle',
			success:function(data){
				if(data.attr=='success'){
					new $.zui.Messager('新增成功', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						placement: 'top' // 定义显示位置
					}).show();
					$("#english").val("");
					$("#chinese").val("");
				}else{
					new $.zui.Messager('新增失败！', {
						time:'4000',
						icon: 'info',
						type: 'danger' ,
						placement: 'top' // 定义显示位置
					}).show();
				}
			}
		})
	}
}