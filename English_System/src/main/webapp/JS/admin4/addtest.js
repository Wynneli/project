function addcet(){
	var cetid =$("input[name='cetid']").val().trim();
	var cetinfo =$("input[name='cetinfo']").val().trim(); 
	var cetidvalidate="success";
	$("#checkcetid").html("");
	$("#checkcetinfo").html("");
	$("#cetid").removeClass("has-error");
	$("#cetid").removeClass("has-success");
	$("#cetinfo").removeClass("has-error");
	$("#cetinfo").removeClass("has-success");
	var data={
			cetid:cetid,
			cetInfo:cetinfo
	}
	if(cetid==""||cetinfo==""){
		if(cetid==""){
			new $.zui.Messager('试题编号不能为空！', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				// 定义颜色主题
				placement: 'top' // 定义显示位置
			}).show();
		}else{
			new $.zui.Messager('试题信息不能为空！', {
				time:'4000',
				icon: 'times',
				type: 'danger' ,
				// 定义颜色主题
				placement: 'top' // 定义显示位置
			}).show();
		}
	}else{
		var font=cetid.substring(0,8);
		var parttern=/^[0-9]*$/;
		var back=cetid.substring(9,cetid.length);
		if(cetid.length==14||cetid.length==13){
			if(font=="cet4_201"||font=="cet6_201"){
				if(parttern.test(cetid.substring(8,9))){
					if(back=="_12_1"||back=="_12_2"||back=="_12_3"||back=="_6_1"||back=="_6_2"||back=="_6_3"){
						$("#checkcetid").html("");
						$("#cetid").removeClass("has-error");
						$("#cetid").addClass("has-success");
						$("#cetinfo").addClass("has-success");
						cetidvalidate="success";
					}else{
						acetIdValidate="false";
						$("#checkcetid").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
						$("#cetid").addClass("has-error");
					}
				}else{
					acetIdValidate="false";
					$("#checkcetid").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
					$("#cetid").addClass("has-error");
				}
			}else{
				cetidvalidate="false";
				$("#checkcetid").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
				$("#cetid").addClass("has-error");
			}
		}else{
			$("#checkcetid").html("格式不正确,正确格式：“例如：2016年6月四级第一套:cet4_2016_6_1,六级只需要把cet4换成cet6”");
			$("#cetid").addClass("has-error");
			cetidvalidate="false";
		}
		if(cetidvalidate=="success"){
			$.ajax({
				type:'post',
				url:"http://localhost:8080/English_System/cet/addCet",
				contentType:'application/json;charset=utf-8',
				data:JSON.stringify(data),
				success:function(data){
					if(data.attr=="success"){
						new $.zui.Messager('添加成功 </a>', {
							time:'4000',
							icon: 'check',
							type: 'success' ,
							// 定义颜色主题
							placement: 'top' // 定义显示位置
						}).show();
						$("#cetid").removeClass("has-success");
						$("#cetid").removeClass("has-error");
						$("#cetinfo").removeClass("has-success");
						$("#cetinfo").removeClass("has-error");
						$("input[name='cetinfo']").val("");
						$("input[name='cetid']").val("");
						$("#checkcetid").html("");
						$("#checkcetinfo").html("");
						if(data.cet!=null||data.cet!=""){
							temp='<tr "'+data.cet.cetPrimary+'">'+
							' <td><label> <input type="checkbox" name="checkbox"'+
							'value="'+data.cet.cetPrimary+'"></label></td>'+
							'<td>'+data.cet.cetPrimary+'</td>'+
							'<td>'+data.cet.cetid+'</td>'+
							'<td>'+data.cet.cetInfo+'</td>'+
							'<td>'+data.cet.cetEntend1+'</td>'+
							'<td><a'+
							' href="http://localhost:8080/English_System/cet/editCet/'+data.cet.cetPrimary+'"'+
							'target="myframe"><button class="btn btn-mini btn-info">'+
							'<i class="icon icon-edit"></i> 编辑试题信息</button></a> &nbsp;&nbsp;&nbsp;'+
							'<button class="btn btn-mini btn-danger"'+
							'onclick="deleteCet('+data.cet.cetPrimary+')" type="button">'+
							'<i class="icon icon-trash"></i> 删除</button></td>'+
							'</tr>'
							$("#mytbody").append(temp);
						}
					}else{

						if(data.cetid=="试题编号已经存在，请输入其他的！"){
							$("#checkcetid").html(data.cetid);
							$("#cetid").removeClass("has-success");
							$("#cetid").addClass("has-error");
						}
						if(data.cetinfo=="试题信息已经存在，请输入其他的！"){
							$("#checkcetinfo").html(data.cetinfo);
							$("#cetinfo").removeClass("has-success");
							$("#cetinfo").addClass("has-error");
						}
						new $.zui.Messager('添加失败 </a>', {
							time:'4000',
							icon: 'times',
							type: 'danger' ,
							// 定义颜色主题
							placement: 'top' // 定义显示位置
						}).show();
					}
				}
			})
		}
	}  
}

function deleteCet(cet_primary){
	var cell = document.getElementById(cet_primary);
	if(confirm("是否删除这条记录？")){
		$.ajax({
			type:'post',
			url:"http://localhost:8080/English_System/cet/deleteCet",
			data:"cetPrimary="+cet_primary,
			success:function(data){
				if(data.attr=="success"){
					document.getElementById("mytbody").removeChild(cell);
					new $.zui.Messager('删除成功 </a>', {
						time:'4000',
						icon: 'check',
						type: 'success' ,
						// 定义颜色主题
						placement: 'center' // 定义显示位置
					}).show();
				}
			}
		});
	}
}