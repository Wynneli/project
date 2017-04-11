function search(){
	var user_name=$("input:text[name='username']").val();
	var user_id=$("input:text[name='userid']").val()
	if(user_name==""&&user_id==""){
		new $.zui.Messager('请输入内容', {
			time:'4000',
			icon: 'times',
			type: 'info' ,
			// 定义颜色主题
			placement: 'center' // 定义显示位置
		}).show();
	}else{
		var data={
				userid:user_id,username:user_name
		}
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/admin/search",
			data:JSON.stringify(data),
			contentType: "application/json;charset=utf-8",
			success:function(data){
				if(data.obscure_list.length!=0){
					$("#show_userinfo tbody").html("");
					for(var i=0;i<data.obscure_list.length;i++){
						if(i%2==0){
							var temp='<tr><td style="padding-left: 20px;">'+data.obscure_list[i].userid+'</td>'+
							'<td>'+data.obscure_list[i].username+'</td>'+
							'<td>'+data.obscure_list[i].userphone+'</td>'+
							'<td>'+data.obscure_list[i].useremail+'</td>'+
							'<td><a onclick="deleteUser('+data.obscure_list[i].userid+')" href="#" id="'+data.obscure_list[i].userid+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';

						}else{
							var temp='<tr class="active"><td style="padding-left: 20px;">'+data.obscure_list[i].userid+'</td>'+
							'<td>'+data.obscure_list[i].username+'</td>'+
							'<td>'+data.obscure_list[i].userphone+'</td>'+
							'<td>'+data.obscure_list[i].useremail+'</td>'+
							'<td><a onclick="deleteUser('+data.obscure_list[i].userid+')" href="#" id="'+data.obscure_list[i].userid+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';
						}
						$("#show_userinfo tbody").append(temp);
					} 
					new $.zui.Messager('查询加载成功', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();

				}else{
					new $.zui.Messager('没有数据', {
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
}
function deleteUser(a){
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/admin/deleteuser",
		data:"userid="+a,
		success:function(data){
			if(data.attr=="success"){
				if(data.allUser_list.length!=0){
					$("#show_userinfo tbody").html("");
					for(var i=0;i<data.allUser_list.length;i++){
						if(i%2==0){
							var temp='<tr><td style="padding-left: 20px;">'+data.allUser_list[i].userid+'</td>'+
							'<td>'+data.allUser_list[i].username+'</td>'+
							'<td>'+data.allUser_list[i].userphone+'</td>'+
							'<td>'+data.allUser_list[i].useremail+'</td>'+
							'<td><a onclick="deleteUser('+data.allUser_list[i].userid+')" href="#" id="'+data.allUser_list[i].userid+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';

						}else{
							var temp='<tr class="active"><td style="padding-left: 20px;">'+data.allUser_list[i].userid+'</td>'+
							'<td>'+data.allUser_list[i].username+'</td>'+
							'<td>'+data.allUser_list[i].userphone+'</td>'+
							'<td>'+data.allUser_list[i].useremail+'</td>'+
							'<td><a onclick="deleteUser('+data.allUser_list[i].userid+')" href="#" id="'+data.allUser_list[i].userid+'"> '+
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

$(function(){	
	$("#pagecontent li").click(function(){
//		if(!isNaN($("ul .active a").html())){
		$(this).addClass("active").siblings().removeClass("active");
	});
});

function page(page){
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/admin/uniquepage",
		data:"pagecontent="+page,
		success:function(data){
			if(data.attr=='success'){
				if(data.userlist.length!=0){
					$("#show_userinfo tbody").html("");
					for(var i=0;i<data.userlist.length;i++){
						if(i%2==0){
							var temp='<tr><td style="padding-left: 20px;">'+data.userlist[i].userid+'</td>'+
							'<td>'+data.userlist[i].username+'</td>'+
							'<td>'+data.userlist[i].userphone+'</td>'+
							'<td>'+data.userlist[i].useremail+'</td>'+
							'<td><a onclick="deleteUser('+data.userlist[i].userid+')" href="#" id="'+data.userlist[i].userid+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';

						}else{
							var temp='<tr class="active"><td style="padding-left: 20px;">'+data.userlist[i].userid+'</td>'+
							'<td>'+data.userlist[i].username+'</td>'+
							'<td>'+data.userlist[i].userphone+'</td>'+
							'<td>'+data.userlist[i].useremail+'</td>'+
							'<td><a onclick="deleteUser('+data.userlist[i].userid+')" href="#" id="'+data.userlist[i].userid+'"> '+
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

//$(function(){
//	$("#selectAll").click(function(){
//		$("input[name='checkbox']").attr("checked","true"); 
//	});
//
//	$("#resever").click(function () {  
//		$("input[name='checkbox']").attr("checked","");  
//
//	})  
//});

//function selectAll() {
//	alert("selectall");
//	$("input[name='checkbox']").attr("checked","true"); 
//}
//
//function notAll() {
//	alert("notAll2");
//	$("input[name='checkbox']").attr("checked",''); 
//}
//
//
//function reverseSelect(){
//	$("input[name='checkbox']").each(function(){ 
//		if($(this).attr("checked")) 
//		{ 
//			$(this).removeAttr("checked"); 
//		} 
//		else 
//		{ 
//			$(this).attr("checked","true"); 
//		}
//	}) 
//}
function test(){
	alert(23);
}
