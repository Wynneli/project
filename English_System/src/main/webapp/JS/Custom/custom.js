
function next(){
	var data={cet4Id:$('#cet4_info_id').text()};
	$.ajax({
		type:"post",
		url:"http://localhost:8080/English_System/cet4/nextword",
		contentType:'application/json;chrset=utf-8',
//		data:'{"cet4Id":"$(#cet4_info_id").text()"}',
		data:JSON.stringify(data),
		success:function(data){
			$('#cet4_info_id').text(data.cet4Id);
			$('#cet4_info_vocabulary').text(data.cet4Vocabulary);
			$('#cet4_info_pronunciation').text(data.cet4Pronunciation);
			$('#cet4_info_meaning').text(data.cet4Meaning);
			$("#add_or_remove_unknown_word").text("收入我的词库");
		}
	});
};

function pre(){
	var data={cet4Id:$('#cet4_info_id').text()};
	if($('#cet4_info_id').text()!=""&&$('#cet4_info_id').text()!="cet4_0001"){
		$.ajax({
			type:"post",
			url:"http://localhost:8080/English_System/cet4/preword",
			contentType:'application/json;chrset=utf-8',
//			data:'{"cet4Id":"$(#cet4_info_id").text()"}',
			data:JSON.stringify(data),
			success:function(data){
				$("#add_or_remove_unknown_word").text("收入我的词库");
				$('#cet4_info_id').text(data.cet4Id);
				$('#cet4_info_vocabulary').text(data.cet4Vocabulary);
				$('#cet4_info_pronunciation').text(data.cet4Pronunciation);
				$('#cet4_info_meaning').text(data.cet4Meaning);
			}
		});
	}else{
		alert("这已经是最开始的一个")
	}
};


$(function(){
	$("#cet4_button").click(function(){
		if($("#cet4_button").text()=="展开评论"){
			$("#cet4_button").text("收起评论");
		}else {
			$("#cet4_button").text("展开评论");
		}
	});
});

function add_or_remove_unknown_word(){
	alert($("#add_or_remove_unknown_word").text());
	if($("#add_or_remove_unknown_word").text()=="收入我的词库"){
		var data={cet4Id:$("#cet4_info_id").text(),
				cet4Vocabulary:$("#cet4_info_vocabulary").text(),
				cet4Pronunciation:$("#cet4_info_pronunciation").text(),
				cet4Meaning:$("#cet4_info_meaning").text()}
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet4/add_unknown_word",
			data:JSON.stringify(data),
//			data:'username=wynne&userphone=13660571248',
			contentType: "application/json;charset=utf-8",
			success:function(data){
				$("#add_or_remove_unknown_word").text("移除我的词库");
			},
		});
	}else{
		alert($("#add_or_remove_unknown_word").text());
		var data={cet4Id:$("#cet4_info_id").text()}
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet4/add_unknown_word",
			data:JSON.stringify(data),
			contentType: "application/json;charset=utf-8",
			success:function(data){
				$("#add_or_remove_unknown_word").text("收入我的词库");
			},
		});
	}
};



