function upvote(a){
//	alert(document.getElementById(a).innerText);
	var data={
			articleId:a,
			articleLike:document.getElementById(a).innerText
	}
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/article/upvote",
		data:JSON.stringify(data),
		contentType:'application/json;charset=utf-8',
		success:function(data){
			if(data.attr=="success"){
				document.getElementById(a).innerText=data.articleLike;
			}
		}
	});
}

function sentenceupvate(b){
	var s=document.getElementById("s"+b).innerText;
	var sentenceUpvote=s.substring(0,s.length-3);
	var data={
			sentenceId:b,
			sentenceUpvote:sentenceUpvote
	}
	$.ajax({
		type:'post',
		url:"http://localhost:8080/English_System/sentence/upvote",
		data:JSON.stringify(data),
		contentType:'application/json;charset=utf-8',
		success:function(data){
			if(data.attr=="success"){
				document.getElementById("s"+b).innerText=data.sentenceUpvote+"人喜欢";
			}
		}
	});
}