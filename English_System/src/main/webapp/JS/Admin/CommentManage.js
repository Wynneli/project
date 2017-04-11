function deleteComment(a){
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/admin/deleteComment",
		data:"commentId="+a,
		success:function(data){
			if(data.attr=="success"){
				if(data.allComment_list.length!=0){
					$("#show_userinfo tbody").html("");
					for(var i=0;i<data.allComment_list.length;i++){
						if(i%2==0){
							var temp='<tr><td style="padding-left: 20px;">'+data.allComment_list[i].commentId+'</td>'+
							'<td>'+data.allComment_list[i].topicType+'</td>'+
							'<td>'+data.allComment_list[i].commentContent+'</td>'+
							'<td>'+data.allComment_list[i].commentFromUsername+'</td>'+
							'<td>'+data.allComment_list[i].commentToUsername+'</td>'+
							'<td><a onclick="deleteComment('+data.allComment_list[i].commentId+')" href="#" id="'+data.allComment_list[i].commentId+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';

						}else{
							var temp='<tr class="active"><td style="padding-left: 20px;">'+data.allComment_list[i].commentId+'</td>'+
							'<td>'+data.allComment_list[i].topicType+'</td>'+
							'<td>'+data.allComment_list[i].commentContent+'</td>'+
							'<td>'+data.allComment_list[i].commentFromUsername+'</td>'+
							'<td>'+data.allComment_list[i].commentToUsername+'</td>'+
							'<td><a onclick="deleteComment('+data.allComment_list[i].commentId+')" href="#" id="'+data.allComment_list[i].commentId+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';
						}
						$("#show_userinfo tbody").append(temp);
					} 
				}
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
	})
}

function page_comment(page){
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/admin/unique_comment_page",
		data:"pagecontent="+page,
		success:function(data){
			if(data.attr=='success'){
				if(data.commentlist.length!=0){
					$("#show_userinfo tbody").html("");
					for(var i=0;i<data.commentlist.length;i++){
						if(i%2==0){
							var temp='<tr><td style="padding-left: 20px;">'+data.commentlist[i].commentId+'</td>'+
							'<td>'+data.commentlist[i].topicType+'</td>'+
							'<td>'+data.commentlist[i].commentContent+'</td>'+
							'<td>'+data.commentlist[i].commentFromUsername+'</td>'+
							'<td>'+data.commentlist[i].commentToUsername+'</td>'+
							'<td><a onclick="deleteComment('+data.commentlist[i].commentId+')" href="#" id="'+data.commentlist[i].commentId+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';
						}else{
							var temp='<tr class="active"><td style="padding-left: 20px;">'+data.commentlist[i].commentId+'</td>'+
							'<td>'+data.commentlist[i].topicType+'</td>'+
							'<td>'+data.commentlist[i].commentContent+'</td>'+
							'<td>'+data.commentlist[i].commentFromUsername+'</td>'+
							'<td>'+data.commentlist[i].commentToUsername+'</td>'+
							'<td><a onclick="deleteComment('+data.commentlist[i].commentId+')" href="#" id="'+data.commentlist[i].commentId+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';
						}
						$("#show_userinfo tbody").append(temp);
					} 
				}
			}
		}
	})
}

function search_page(){
	var maxpage=$("#maxpage").html();
	var li_list=$("#pagecontent2 li");
//	alert(li_list.length)
//	var pagecontent=$("#pagecontent2  .active a").html();
//	alert(pagecontent)
	var page2=maxpage.substring(1,2);
	var page=$("input[name='page']").val();
//	alert(page);
	if(page>page2||page<=0){
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
//			for(var i=0;i<li_list.length;i++){
//				var index=i;
//				alert($("#pagecontent2  li a").eq(i).html());
//				if(page==$("#pagecontent2  li a").eq(i).html()){
//					alert("success");
//					$(this).addClass("active").siblings().removeClass("active");
//				}
//			}
			$.ajax({
				type:'post',
				url:'http://localhost:8080/English_System/admin/search_page',
				data:'page='+page,
				success:function(data){
					if(data.attr=='success'){
						if(data.commentlist.length!=0){
							$("#show_userinfo tbody").html("");
							for(var i=0;i<data.commentlist.length;i++){
								if(i%2==0){
									var temp='<tr><td style="padding-left: 20px;">'+data.commentlist[i].commentId+'</td>'+
									'<td>'+data.commentlist[i].topicType+'</td>'+
									'<td>'+data.commentlist[i].commentContent+'</td>'+
									'<td>'+data.commentlist[i].commentFromUsername+'</td>'+
									'<td>'+data.commentlist[i].commentToUsername+'</td>'+
									'<td><a onclick="deleteComment('+data.commentlist[i].commentId+')" href="#" id="'+data.commentlist[i].commentId+'"> '+
									'<i class="icon icon-times i_color"></i>删除'+
									'</a></td></tr>';
								}else{
									var temp='<tr class="active"><td style="padding-left: 20px;">'+data.commentlist[i].commentId+'</td>'+
									'<td>'+data.commentlist[i].topicType+'</td>'+
									'<td>'+data.commentlist[i].commentContent+'</td>'+
									'<td>'+data.commentlist[i].commentFromUsername+'</td>'+
									'<td>'+data.commentlist[i].commentToUsername+'</td>'+
									'<td><a onclick="deleteComment('+data.commentlist[i].commentId+')" href="#" id="'+data.commentlist[i].commentId+'"> '+
									'<i class="icon icon-times i_color"></i>删除'+
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



$(function(){	
	$("#pagecontent li").click(function(){
//		if(!isNaN($("ul .active a").html())){
		$(this).addClass("active").siblings().removeClass("active");
	});
});


