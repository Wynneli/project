function search(){
	var user_name=$("input:text[name='username']").val();
	alert(123);
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
						var temp='<tr><td><label> <input type="checkbox" name="checkbox">'+
						'</label></td>'+
						'<td>'+data.obscure_list[i].userid+'</td>'+
						'<td>'+data.obscure_list[i].username+'</td>'+
						'<td>'+data.obscure_list[i].userphone+'</td>'+
						'<td>'+data.obscure_list[i].useremail+'</td>'+
						'<td><a onclick="deleteUser('+data.obscure_list[i].userid+')" href="#" id="'+data.obscure_list[i].userid+'"> '+
						'<i class="icon icon-times i_color"></i>删除'+
						'</a></td></tr>';
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
	if(confirm( "确定要删除这条信息吗?" )){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/admin/deleteuser",
			data:"userid="+a,
			success:function(data){
				if(data.attr=="success"){
					if(data.allUser_list.length!=0){
						$("#show_userinfo tbody").html("");
						for(var i=0;i<data.allUser_list.length;i++){
							var temp='<tr><td><label> <input type="checkbox" name="checkbox">'+
							'</label></td>'+
							'<td>'+data.allUser_list[i].userid+'</td>'+
							'<td>'+data.allUser_list[i].username+'</td>'+
							'<td>'+data.allUser_list[i].userphone+'</td>'+
							'<td>'+data.allUser_list[i].useremail+'</td>'+
							'<td><a onclick="deleteUser('+data.allUser_list[i].userid+')" href="#" id="'+data.allUser_list[i].userid+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';
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
							var temp='<tr><td><label> <input type="checkbox" name="checkbox">'+
							'</label></td>'+
							'<td>'+data.userlist[i].userid+'</td>'+
							'<td>'+data.userlist[i].username+'</td>'+
							'<td>'+data.userlist[i].userphone+'</td>'+
							'<td>'+data.userlist[i].useremail+'</td>'+
							'<td><a onclick="deleteUser('+data.userlist[i].userid+')" href="#" id="'+data.userlist[i].userid+'"> '+
							'<i class="icon icon-times i_color"></i>删除'+
							'</a></td></tr>';

							$("#show_userinfo tbody").append(temp);
						} 
					}
				}
			}
		})
	}
}


function adduser(){
	var user =$("input[name='user']").val().trim();
	var password =$("input[name='password']").val().trim(); 
	var pattern= /^[a-zA-Z][a-zA-Z0-9]{4,14}$/;
	var pattern2= /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,15}$/;
	var uservalidate="success";
	var passwordvalidate="success";
	var data={
			username:user,
			userpassword:password,
	}
	if(user==""||password==""){
		if(user==""){
			new $.zui.Messager('用户名不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				// 定义颜色主题
				placement: 'top' // 定义显示位置
			}).show();
		}else{
			new $.zui.Messager('密码不能为空', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				// 定义颜色主题
				placement: 'center' // 定义显示位置
			}).show();
		}
	}else{
		if(!pattern.test(user)){
			$("#checkuser").html("<font color='red' size='2'>用户名格式不正确！必须以字母开头，由字母，数字组成，长度5-15位</font>");
			$("#user").addClass("has-error");
			uservalidate="false";
		}else{
			$("#user").addClass("has-success");
			$("#checkuser").html("");
		}
		if(!pattern2.test(password)){
			$("#checkpassword").html("<font color='red' size='2'>密码格式不正确！由数字和字母组成，长度6-16位</font>");
			$("#password").addClass("has-error");
			passwordvalidate="false";
		}else{
			$("#checkpassword").html("");
			$("#password").addClass("has-success");
		}
		if(uservalidate=="success"&&passwordvalidate=="success"){
			$.ajax({
				type:'post',
				url:"http://localhost:8080/English_System/user/RegisterUser",
				contentType:'application/json;charset=utf-8',
				data:JSON.stringify(data),
				success:function(data){
					if(data.success=="success"){
						new $.zui.Messager('添加成功 </a>', {
							time:'4000',
							icon: 'check',
							type: 'success' ,
							// 定义颜色主题
							placement: 'top' // 定义显示位置
						}).show();
						$("#user").removeClass("has-success");
						$("#user").removeClass("has-error");
						$("#password").removeClass("has-success");
						$("#password").removeClass("has-error");
						$("input[name='user']").val("");
						$("input[name='password']").val("");
					}else{
						$("#user").removeClass("has-success");
						$("#checkuser").html("<font color='red' size='2'>用户名已经存在，请使用其他进行注册！</font>");
						$("#user").addClass("has-error");
					}
				}
			})
		}
	}  
}
