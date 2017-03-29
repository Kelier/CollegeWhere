<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>院校查询</title>
<link rel="stylesheet" href="../layui/css/layui.css" media="all">
  <link rel="stylesheet" href="../gkzyw/css/base.css">
<style>
.layui-btn{background-color: #47ac48;}
.layui-btn-primary{border: 1px solid #C9C9C9; background-color: #fff; color: #555;}
.layui-btn-primary:hover{border-color: #47ac48; color: #47ac48}
#top{
	height:50px;
	width:100%;
	background:#47ac48;
	line-height:40px;
	font-size: 16px;
	z-index:2000;
	color: #fff;}
.top-style{
	max-width: 1000px; min-width: 320px; margin: auto; height: 100px;padding:10px;
	}
.top-slogan{
	display:block;
	float:left;
	width:220px;}
.top-position{
	float:left;
	width:124px;}
.top-position img{
	margin-top:11px;
	float:left;
	margin-right:10px;
	}
.top-tel{
	float:left;
	width:260px;
	}
.top-tel img{
	margin-top:11px;
	float:left;
	margin-right:10px;
	}
.city a{
	height:40px;
	line-height:40px;
	color:#FFF;}
.city a:hover{
	background:#2e964e;}
.all_city{position:absolute; left:10%; top:30px; overflow:hidden; display:none; font-size:12px;z-index:1000; }
.all_city .b_K{border:1px solid #e1e1e1; width:492px; height:320px;border-radius:10px;background:#FFFFFF;margin-top:10px; }
.all_city .tui_j{height:45px; padding:12px 10px 20px 20px; }
.all_city .tui_j p{ height:30px;line-height:30px;font-size:16px;color:#3f3f3f;}
.all_city .tui_j span{ padding:0 6px;}
.all_city .tui_j b{ color:#00913e;}
.all_city dl{ width:230px; padding-left:15px; display:inline; float:left;}
.all_city dl dt{ width:20px; height:26px; float:left; line-height:26px; font-family:Arial, Helvetica, sans-serif;color:#3f3f3f; display:inline;}
.all_city dl dd{ width:210px; float:left;line-height:26px;}
.all_city dl dd a{ padding-right:13px;}
.login-head{
	display:block;
	width:90px;
	height:40px;
	float:left;
	background-color:#47ac48;
	color:#fff;
	font-size:14px;
	text-align:center;}
.top-login .login-head:hover{
color:#fff;
	background-color:#017e40;}

.activity-list img:hover {
	margin-top: -2px;
}

.list li {
	float: left;
	padding:0px 0px 3px 3px;
	width: auto;
	height: auto;
	margin-right: 0px;
}




.activity-list .title:hover {
	color: #008bff;
}

.unit {
	display: inline-block;
	zoom: 1;
	letter-spacing: normal;
	word-spacing: normal;
	vertical-align: top;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	width: 24.7%;
}

.unit-box {
	background-color: #fff;
	height: 130px;
	width: 280px;
	padding: 20px 0;
	margin-top: 10px;
	margin-bottom: 10px;
	-webkit-transition: all .2s linear;
	transition: all .2s linear;
}

.unit-box:hover {
	-webkit-box-shadow: 0 3px 20px rgba(0, 0, 0, .1);
	box-shadow: 0 3px 20px rgba(0, 0, 0, .1);
	-webkit-transform: translate3d(0, -2px, 0);
	transform: translate3d(0, -2px, 0);
}

.unit-box .pd-item-name {
	display: inline-block;
	width: 41%;
	border-right: 1px solid #e2e2e2;
	vertical-align: top;
	height: 100%;
	text-align: center;
}

.unit-box .pd-item-sub {
	display: inline-block;
	width: 52%;
	vertical-align: top;
	padding-left: 5%;
}

.unit-box .pd-item-sub ul {
	-webkit-padding-start: 0px;
}

.unit-box .pd-item-sub ul li {
	display: list-item;
	margin: 10px auto;
	text-align: -webkit-match-parent;
}

.unit-box .pd-item-sub li a:hover {
	color: #008bff;
}
</style>
</head>
<body>
<%@include file="nav.jsp" %>
		
	
	<!-- 地区选择-->
	<div class="province" style="position: relative; width: 100%;">
	
		<div style="max-width: 1000px; min-width: 320px; margin: auto; height: 100px;padding:10px;">
			<div style="width:80px;height: 100px;float:left;">
				院校所在地：
			</div>
			<div style="width:890px;height:auto;float:left;">
			<ul class="list"  id="province_view" style="margin-top:0px;">
      			<script id="province_model" type="text/html">
					{{#  layui.each(d.list, function(index, item){ }}
      				<li><a class="layui-btn layui-btn-primary" style="padding: 0 8px;height:33px;line-height:33px;">{{item}}</a></li>
					{{#  }); }}
      			</script>
			</ul>
			</div>
		</div>
	</div>


	<!-- 院校类型选择-->
	<div class="college_type" style="position: relative; width: 100%;">
		<div style="max-width: 1000px; min-width: 320px; margin: auto; height: 70px;;padding:10px;">
			<div style="width:80px;height: auto;float:left;">
				院校类别
			</div>
			<div style="width:850px;height:auto;float:left;">
			<ul class="list"  id="college_type_view" style="margin-top:0px;">
      			<script id="college_type_model" type="text/html">
					{{#  layui.each(d.list, function(index, item){ }}
      				<li><a class="layui-btn layui-btn-primary" style="padding: 0 8px;height:33px;line-height:33px;">{{item}}</a></li>
					{{#  }); }}
      			</script>
			</ul>
			</div>
		</div>
	</div>
	
	<div style="position: relative; width: 100%;">
		<div style="max-width: 1000px; min-width: 320px; margin: auto; height: 70px;padding:10px;">
			
			<div style="width:850px;height:auto;float:left;">
			<form class="layui-form" action="">	
			 <div class="layui-form-item" style="float:left;">
			      <label class="layui-form-label" style="width:80px;padding-left:0px;width:auto;">院校属性</label>
				  <div id="college_tag" class="layui-input-block" style="margin-left: 83px;">
			      <input type="checkbox" name="不限" title="不限" checked="">
			      <input type="checkbox" name="211" title="211">
			      <input type="checkbox" name="985" title="985">
			      <input type="checkbox" name="国防生" title="国防生">
			      <input type="checkbox" name="研究生院" title="研究生院">
			      <input type="checkbox" name="卓越计划" title="卓越计划">
			      </div>
			  </div>
			  <div class="layui-form-item" style="float:left;">
			      <label class="layui-form-label" style="width:80px;padding-left:0px;width:auto;">文理类别</label>
				  <div id="subject_radio" class="layui-input-block" style="margin-left: 83px;">
			      <input type="checkbox" name="like[write]" title="文科" >
			      <input type="checkbox" name="like[read]" title="理科" checked="true">
			      </div>
			  </div>
			</form>	
			</div>
		</div>
	</div>
	
	<div  style="position: relative; width: 100%;">
		<div style="max-width: 1000px; min-width: 320px; margin: auto; height: 70px;padding:10px;text-align: center;">
      <input type="text" id="college_name" placeholder="请输入院校名称" class="layui-input" style="width:160px;border:1px solid #47ac48;;display:inline-block;">
	  <input type="text" id="score" placeholder="输入考分(不填默认500)" class="layui-input" style="width:160px;border:1px solid #47ac48;;display:inline-block;">
	  <Button class="layui-btn layui-btn-big" id="query" style="width:100px;display:inline-block;font-size: 18px;background:#47ac48;">查询</Button>
	 </div>
	</div>     
	<!-- 院校-->
	<div id="college_view" class="collegeType" style="position: relative; width: 100%;">
		<script id="college_model" type="text/html">
		{{#  layui.each(d.list, function(index, item){ }}
				<div style="max-width: 1000px; min-width: 320px; margin: auto; height: 130px; padding: 10px 0;border-bottom:1px solid #c4c4c4;">
				<img alt="" src="{{item.college_icon.url}}" width="120" height="120" style="float: left"/>
				<div style="float: left;vertical-align:middle;padding: 10px 0px 10px 20px">
					<p style="font-size: 30px; margin-bottom: 5px;">{{item.college_name}}</p>
					<div style="margin-bottom: 8px;">
						<span style="font-size: 20px;">预测分：</span>
						<span style="font-size: 26px;color: #ff00ff;">{{item.expect_line}}</span>
					</div>
					<div>
					{{#  layui.each(item.tags, function(index, item2){ }}
						<span style="font-size: 15px;background:#c0c0c0;padding: 2px 6px 2px 6px;border-radius:3px;">{{item2}}</span>
					{{#  }); }}
					</div>
				</div>
				<div>
					<a href="college_detail.jsp?cid={{item.college_id}}" class="layui-btn" style="float: right;vertical-align:middle;margin-top: 45px;margin-right: 10px;width: 120px;font-size: 18px;background:#47ac48;">查看详情</a>
				</div>
				<div style="float: right;vertical-align:middle;margin-top: 45px;margin-right: 10%;">
				<span style="font-size: 24px;">录取概率：</span><span style="font-size: 26px;color: #ff00ff;">{{item.possibility}}%</span>
				</div>
			</div>
		{{#  }); }}
		</script>
	</div>
	<div style="text-align: center; margin-top: 30px;">

		<div id="demo2"></div>

	</div>
	<!-- 你的HTML代码 -->
	<script src="../lib/area.js"></script>
	<script src="../lib/http.js"></script>
	<script src="../lib/jquery.min.js"></script>
	<script src="../layui/layui.all.js"></script>
	<script src="../nivo-slider/jquery.nivo.slider.js"></script>
	<script src="../countUp/countUp.min.js"></script>
	<script type="text/javascript">
	var province;
	$(document).ready(function() {
		$('.b_K dl dd a').click(function() {
			provinceHeader = "[ " + $(this).text() + " ]";
			//	province =  $(this).text();
			$('.city a').text(provinceHeader);
			var action = "/user_front/saveCity.html";
			$.ajax({
				type : "POST",
				url : action,
				cache : false,
				async : true,
				data : {
					"city" : provinceHeader
				},
				error : function(e) {
					console.log(e);
				},
				success : function(msg) {
					location.reload();
				}
			});
		})
	})
	
	function your_query(t){
    	//t 是你的查询条件
    	t={param:'',province:'',subject:'',score:'',college_province:'',college_type:'',tag:'',last_cid:'',college:''};
    	t.param = "college_list";
    	t.province = "北京市";
    	$("#subject_radio .layui-unselect").each(function(){
			if($(this).hasClass('layui-form-checked') && $(this).find('span').html()=='文科')t.subject = "1";
			else t.subject = "2";
    	});
		var tags=new Array();
		t.tag='';
		$("#college_tag .layui-unselect").each(function(){
			if($(this).hasClass('layui-form-checked') && $.trim($(this).find('span').html())!='不限'){
				tags.push($(this).find('span').html());
			}
		});
		t.tag = encodeURI(tags.join(','));
		t.college_province ='';
		$("#province_view li a").each(function(){
			if(!$(this).hasClass('layui-btn-primary') && $.trim($(this).html())!='不限'){
				t.college_province = $(this).html();
			}
		});
		t.college_type ='';
		$("#college_type_view li a").each(function(){
			if(!$(this).hasClass('layui-btn-primary') && $.trim($(this).html())!='不限'){
				t.college_type = $(this).html();
			}
		});
		if($.trim($("#score").val()).length<=0)t.score = "500";
		else t.score = $.trim($("#score").val());
    	t.college=$.trim($("#college_name").val());
    	return t
	}
	var t,collegeListData,collegeModel;
	collegeModel=document.getElementById('college_model').innerHTML;
	$(function() {
		layui.use('laytpl', function(laytpl) {
			var data = {"list" : area.province};
			var getTpl = province_model.innerHTML;
			laytpl(getTpl).render(data, function(html) {
				province_view.innerHTML = html;
			});
			laytpl(college_type_model.innerHTML).render({"list" : collegeType}, function(html) {
				college_type_view.innerHTML = html;
			});
			$('#province_view li a').eq(0).removeClass('layui-btn-primary');
			$('#province_view li a').click(function(){
				$('#province_view li a').addClass('layui-btn-primary');
				$(this).removeClass('layui-btn-primary');
				//alert(JSON.stringify(your_query(t)));
			});
			$('#college_type_view li a').eq(0).removeClass('layui-btn-primary');
			$('#college_type_view li a').click(function(){
				$('#college_type_view li a').addClass('layui-btn-primary');
				$(this).removeClass('layui-btn-primary');
				alert(JSON.stringify(your_query(t)));
			});
			//alert(JSON.stringify(your_query(t)));
			queryVerify();
		});
	});
	$('#subject_radio .layui-unselect').click(function(){
		$('#subject_radio .layui-unselect').removeClass('layui-form-checked');
		$(this).addClass('layui-form-checked');
	});
	var flag=new Array(false,false,false,false,false);
	$('#college_tag .layui-unselect').click(function(){
		if($(this).find('span').html()=='不限'){
			$('#college_tag .layui-unselect').removeClass('layui-form-checked');
			$(this).addClass('layui-form-checked');
			flag=new Array(true,true,true,true,true);
		}else{
			//alert(($(this).index()-1)/2-1)
			$('#college_tag').find("div").eq(0).removeClass('layui-form-checked');
			if(flag[($(this).index()-1)/2-1]){
				$(this).addClass('layui-form-checked');
				flag[($(this).index()-1)/2-1]=false;
			}
		}
	});
	function queryVerify(){
		if($.trim($("#score").val()).length!=0){
			if($.trim($("#score").val()).length<4 || parseInt($.trim($("#score").val()))<750){
				var reg = /^[0-9]+.?[0-9]*$/;
				if (!reg.test($.trim($("#score").val()))) {
					alert('只能输入数字');return;
				}
			}else{
				alert('请输入正确的分数');return;
			}
		}
		if($.trim($("#college_name").val()).length>0){
			var re = /[^\u4e00-\u9fa5]/;  
			if(re.test($.trim($("#college_name").val()))){
				alert('只能输入汉字');return;
			} 
		}
		getCollegeList(); 
	}
</script>
	
<script>
layui.use('form', function(){
  var form = layui.form();
});
$("#query").click(function(){
	queryVerify();
});
</script>
</body>
</html>