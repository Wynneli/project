function test(){
	alert(1231);
	var data = [{ "username": "t1", "userpassword": "111111"},
	              { "username": "t2", "userpassword": "222222"}];
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/test/test",
		contentType:'application/json;charset=utf-8',
		data:JSON.stringify(data),
		success:function(data){
			alert("success");
		}
	});
}