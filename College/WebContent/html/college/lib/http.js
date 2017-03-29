function getNews(){
	$.ajax({
		type : "post",
		url : "../../../GetData",
		dataType : "json",
		data : {
			param : 'new'+param
		},
		success : function(ret) {
			alert(ret);
			//外部参数函数方法
			layui.use('laytpl', function(laytpl) {
				var data = {
					"list" : JSON.parse(ret).papers
				};
				var getTpl = news_model.innerHTML;
				alert(getTpl);
				laytpl(getTpl).render(data, function(html) {
					news_view.innerHTML = html;
				});
			});
			//  alert(JSON.stringify(ret));
		},
		error : function(ret) {
			alert(JSON.stringify(ret));
		}
	});
}

function getRank(){
	 $.ajax({
		type :"post",
		url : "../../imgList",
		dataType : "json",
		success : function(ret) {
			layui.use('laytpl', function(laytpl) {
				var data = {
					"list" : JSON.parse(ret).banners
				};
				var getTpl = slider_model.innerHTML;
				laytpl(getTpl).render(data, function(html) {
					slider.innerHTML = html;
				});
				initSlider();
			});
		},
		error : function(ret) {
			alert(JSON.stringify(ret));
		}
	});
	$.ajax({
		type : "post",
		url : "../../GetData",
		dataType : "json",
		data : {
			param : "rank"
		},
		success : function(ret) {
			//外部参数函数方法
			layui.use('laytpl', function(laytpl) {

				var data = {
					"list" : JSON.parse(ret).papers
				};
				var getTpl = rank_model.innerHTML;

				laytpl(getTpl).render(data, function(html) {

					rank_view.innerHTML = html;
				});
			});
			//  alert(JSON.stringify(ret));
		},
		error : function(ret) {
			alert(JSON.stringify(ret));
		}
	});
}



function getCollegeList(){
	$.ajax({
		type : "post",
		url : "../../../GetData",
		dataType : "json",
		data : your_query(t),
		success : function(ret) {
			//外部参数函数方法
			layui.use('laytpl', function(laytpl) {
				collegeListData=JSON.parse(ret);
				var data = {
					"list" : JSON.parse(ret).colleges
				};
				laytpl(collegeModel).render(data, function(html) {
					college_view.innerHTML = html;
				});
			});
		//	alert(collegeListData.college_count);
			layui.use([ 'laypage', 'layer' ], function() {
					var laypage = layui.laypage, layer = layui.layer;
					laypage({
						cont : 'demo2',
						pages : collegeListData.college_count/20,
						skin : '#1E9FFF'
					});
					
				//调用分页
			  laypage({
			    cont: 'demo2'
			    ,pages: Math.ceil(collegeListData.college_count/20) //得到总页数
			    ,jump: function(obj){
			    	if(obj.curr>1) getCollegeListBack();
			    }
			  });
			});
			//  alert(JSON.stringify(ret));
		},
		error : function(ret) {
			alert(JSON.stringify(ret));
		}
	});
}
function getCollegeListBack(){
	var last_cid=collegeListData.colleges[collegeListData.colleges.length-1].college_id;
	t=your_query(t);
	t.last_cid=last_cid;
	$.ajax({
		type : "post",
		url : "../../../GetData",
		dataType : "json",
		data : t,
		success : function(ret) {
			//alert(JSON.stringify(ret));
			//外部参数函数方法
			layui.use('laytpl', function(laytpl) {
				collegeListData=JSON.parse(ret);
				var data = {
					"list" : JSON.parse(ret).colleges
				};
			//	alert(collegeModel);
				laytpl(collegeModel).render(data, function(html) {
					college_view.innerHTML = html;
				});
			});
		},
		error : function(ret) {
			alert(JSON.stringify(ret));
		}
	});
}



function getCollegeDetail(){
	var loc = location.href;
	var n1 = loc.length;//地址的总长度
	var n2 = loc.indexOf("=");//取得=号的位置
	var cid = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
	$.ajax({
		type : "post",
		url : "../../../GetData",
		dataType : "json",
		data : {
			param : "college_detail",
			cid:cid
		},
		success : function(ret) {
		//	alert(JSON.stringify(ret));
			//外部参数函数方法
			layui.use('laytpl', function(laytpl) {
				collegeDetailData=JSON.parse(ret);
				
				var data = {
					"list" : JSON.parse(ret)
				};
				var getTpl = college_model.innerHTML;
				laytpl(getTpl).render(data, function(html) {
					college_view.innerHTML = html;
				});
				laytpl(college_description.innerHTML).render(data, function(html) {
					college_view2.innerHTML = html;
				});
				laytpl(college_model4.innerHTML).render(data, function(html) {
					college_view4.innerHTML = html;
				});
			});
		},
		error : function(ret) {
			alert(JSON.stringify(ret));
		}
	});
	$.ajax({
		type : "post",
		url : "../../../GetData",
		dataType : "json",
		data : {
			param : "college_admit",
			cid:cid
		},
		success : function(ret) {
		//	alert(JSON.stringify(ret));
			//外部参数函数方法
			layui.use('laytpl', function(laytpl) {
				collegeAdmitData=JSON.parse(ret);
				
				for(var i=0;i<collegeAdmitData.major_lines.length;i++){
					
				if(collegeAdmitData.major_lines[i].lines[0].line==null)collegeAdmitData.major_lines[i].lines[0].line="-"
				if(collegeAdmitData.major_lines[i].lines[1].line==null)collegeAdmitData.major_lines[i].lines[1].line="-"
				if(collegeAdmitData.major_lines[i].lines[2].line==null)collegeAdmitData.major_lines[i].lines[2].line="-"
				}
				var data = {
					"list" : collegeAdmitData
				};
				var getTpl = college_model3.innerHTML;
				laytpl(getTpl).render(data, function(html) {
					college_view3.innerHTML = html;
				});
				getLineData();
			});
		},
		error : function(ret) {
			alert(JSON.stringify(ret));
		}
	});
}
