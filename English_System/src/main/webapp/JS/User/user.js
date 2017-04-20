function changepassowrd(){
	var username=$("#username").html(); 
	var pass=$("input[name='password']").val().trim();
	var newpass=$("input[name='newpassword']").val().trim();
	var renewpass=$("input[name='renewpassword']").val().trim();
	var pattern= /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,15}$/;
	var passvalidate="success";
	var newpassvalidate="success";
	$("#pass").html("");
	$("#newpass").html("");
	$("#renewpass").html("");

	if(username==""){
		new $.zui.Messager('请先登录！', {
			time:'4000',
			icon: 'times',
			type: 'danger' ,
			// 定义颜色主题
			placement: 'top' // 定义显示位置
		}).show();
	}else{
		if(pass==""||newpass==""||renewpass==""){
			if(pass==""){
				$("#pass").html("原密码不能为空！");
				$("#pass2").addClass("has-error");
			}else if(newpass==""){
				$("#newpass").html("新密码不能为空！");
			}else{
				$("#renewpass").html("重复新密码不能为空！");
			}
		}else{
			if(pass!=newpass){
				if(newpass==renewpass){
					if(!pattern.test(pass)){
						$("#pass").html("原密码不符合要求，密码由数字和字母组成，长度6-16位");
						passvalidate="false";
					}else if(!pattern.test(newpass)){
						$("#newpass").html("新密码不满足要求，由数字和字母组成，长度6-16位！");
						newpassvalidate="false";
					}
				}else{
					new $.zui.Messager('新密码两次输入的不一致！',{
						time:'4000',
						icon: 'times',
						type: 'danger' ,
						// 定义颜色主题
						placement: 'top' // 定义显示位置
					}).show();
				}
			}else{
				new $.zui.Messager('新密码不能和旧密码相同！', {
					time:'4000',
					icon: 'times',
					type: 'danger' ,
					// 定义颜色主题
					placement: 'top' // 定义显示位置
				}).show();
			}
		}
		if(newpassvalidate=="success"&&passvalidate=="success"){
			$.ajax({
				type:'post',
				url:"http://localhost:8080/English_System/user/changePass",
				data:'username='+username+'&userpassword='+pass+'&newuserpassword='+newpass,
				success:function(data){
					if(data.message=="success"){
						new $.zui.Messager('修改成功！', {
							time:'4000',
							icon: 'check',
							type: 'success' ,
							// 定义颜色主题
							placement: 'top' // 定义显示位置
						}).show();
					}else{
						new $.zui.Messager('输入的密码不正确！', {
							time:'4000',
							icon: 'times',
							type: 'danger' ,
							// 定义颜色主题
							placement: 'top' // 定义显示位置
						}).show();
					}
				}
			});
		}
	}
}

function edit(){
	$("#phone").attr("disabled",false);
	$("#email").attr("disabled",false);
	$("#file").attr("disabled",false);
}

function save(){
	var phone=$("#phone").val().trim();
	var email=$("#email").val().trim();
	var pattern=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
	var pattern2=/^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(14[0-9]{1})|)+\d{8})$/;
	//$("#file").val();
	var phonevalidate="success";
	var emailvalidate="success";
	var data={
			userphone:phone,
			useremail:email,
	}
	if(phone==""||email==""){
		if(phone==""){
			$("#phone_tip").html("电话不能为空！");
			$("#phone_color").addClass("has-error");

		}
		if(email==""){
			$("#email_tip").html("邮箱不能为空！");
			$("#email_color").addClass("has-error");
		}
	}else{
//		$("#phone_color").removeClass("has-error");
//		$("#phone_color").removeClass("has-success");
//		$("#email_color").removeClass("has-error");
//		$("#email_color").removeClass("has-success");
		
		if(phone.length!=11&&!pattern2.test(phone)){
			$("#phone_tip").removeClass("span_setting1").addClass("span_setting");
			$("#phone_tip").html("请输入正确的手机号码！");
			$("#phone_color").addClass("has-error");
			phonevalidate="false";
		}else{
			$("#phone_tip").removeClass("span_setting").addClass("span_setting1");
			$("#phone_tip").html("<i class='icon icon-check icon-2x'></i>");
			$("#phone_color").addClass("has-success");
		}
		if(!pattern.test(email)){
			$("#email_tip").removeClass("span_setting1").addClass("span_setting");
			$("#email_tip").html("邮箱地址不合法，请输入正确的邮箱地址！");
			$("#email_color").addClass("has-error");
			emailvalidate="false";
		}else{
			$("#email_tip").removeClass("span_setting").addClass("span_setting1");
			$("#email_tip").html("<i class='icon icon-check icon-2x'></i>");
			$("#email_color").addClass("has-success");
		}
		if(emailvalidate=="success"&&phonevalidate=="success"){
			$.ajax({
				type:'post',
				url:"http://localhost:8080/English_System/user/updateUser",
				contentType:'application/json;charset=utf-8',
				data:JSON.stringify(data),
				success:function(data){
					if(data.message=='success'){
						$("#phone_color").removeClass("has-success");
						$("#email_color").removeClass("has-success");
						$("#email_tip").html("");
						$("#phone_tip").html("");
						$("#phone").attr("disabled",true);
						$("#email").attr("disabled",true);
						$("#file").attr("disabled",true);
						new $.zui.Messager('修改成功！', {
							time:'4000',
							icon: 'check',
							type: 'success' ,
							// 定义颜色主题
							placement: 'top' // 定义显示位置
						}).show();
					}else{
						new $.zui.Messager('修改失败！', {
							time:'4000',
							icon: 'times',
							type: 'danger' ,
							// 定义颜色主题
							placement: 'top' // 定义显示位置
						}).show();
					}
				}
			});
		}
	}
}