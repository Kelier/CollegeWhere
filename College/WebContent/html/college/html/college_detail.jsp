<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>大学详情</title>
  <link rel="stylesheet" href="../layui/css/layui.css">
  <link rel="stylesheet" href="../gkzyw/css/base.css">

  <style>
  .viewStyle{
  max-width: 1000px; min-width: 320px; margin: auto;
   height: auto; padding: 10px 0;
   border-bottom:1px solid #c4c4c4;
   }
   .college-font{
   font-size: 26px;
   padding-left:30px;
   }
   .content-font{
   font-size: 16px;padding-top:3px;padding-bottom:5px;font-weight:bold;
   }
  </style>

  <script type="text/javascript" src="../../../js/jquery.js"></script>
<!-- <script type="text/javascript" src="../js/jquery.form.js"></script> -->
<script type="text/javascript" src="../gkzyw/js/flexible.js"></script>
<script type="text/javascript" src="../../../js/bootstrap.min.js"></script>
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
</script>
</head>
<body>
<%@ include  file="nav.jsp"%>
	

 <div  class="collegeType" style="position: relative; width: 100%;">
 <div class="viewStyle" style="height:300px;" id="college_view">
		
		<script id="college_model" type="text/html">
		{{#   }}
		<div style="float:left;">
		<div style="height:75px;">
		<img src="{{d.list.college_icon.url}}" width="65px" height="65px"/><span class="college-font">{{d.list.college_name}}</span>
		</div>
		<p class="content-font">主管部门：{{d.list.belong_to}}</p>
		<p class="content-font">学校类型：{{d.list.college_type}}</p>
		<p class="content-font">学校排名：No.{{d.list.ranking}}</p>
		<p class="content-font">学校地址：{{d.list.address}}</p>
		<p class="content-font">学校网址：www.xxxx.edu.cn</p>
		<p class="content-font">咨询电话：{{d.list.telnum}}</p>
		<div class="content-font">学校性质：
		{{#  layui.each(d.list.tags, function(index, item2){ }}
		<span style="font-size: 15px;background:#c0c0c0;padding: 2px 6px 2px 6px;border-radius:3px;">{{item2}}</span>
		{{#  }); }}
		</div>	
		</div>	
		<div style="width:400px;height:250px;background:url({{d.list.back_cover.url}});float:right;margin-top:30px;background-size:100% 100%;background-repeat:no-repeat;"/>
		</div>
		
		{{#   }}
		</script>
		
</div>
</div>

 <div  class="collegeType" style="position: relative; width: 100%;">
 
<div class="viewStyle">
	<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
  <ul class="layui-tab-title">
    <li class="layui-this" style="font-size: 20px;width:160px;">录取信息</li>
    <li style="font-size: 20px;width:160px;">院校简介</li>
    <li style="font-size: 20px;width:160px;">就业统计</li>
  </ul>
  <div class="layui-tab-content">
  <!-- 录取 -->
    <div class="layui-tab-item layui-show">
    
    <div  id="college_view3">
    	<script id="college_model3" type="text/html">
    	<div style="height:250px;padding-top:20px;margin-bottom:30px;">
    	<!-- 录取率饼图  -->
    	<div style="width:200px;height:200px;border-radius:1000px;display:inline-block;border:5px solid #5FB878; ">
    	<p style="font-size: 48px;margin-top:50px;color:#5FB878;float:left;width:200px;text-align: center;">{{d.list.possibility}}%</p>
   		 <p style="font-size: 24px;float:left;margin-top:20px;width:200px;text-align: center;">录取概率</p>
    	</div>
    	<!-- 理念分数线折线图 -->
    	<div style="width:600px;height:200px;display:inline-block;margin-left:100px;">
    	<div id="container" style="min-width:400px;height:200px"></div>
		<div class="message"></div>
		</div>
    	</div>
    	<div style="font-size: 20px;margin-top:-50px;width:200px;text-align: center;">预测分:{{d.list.expect_line}}</div>
    	<!-- 列表-->
    	
        <table class="layui-table" lay-even="" lay-skin="nob" style="margin-top:30px;">
		  <colgroup>
		    <col width="40%">
		    <col width="20%">
		    <col width="20%">
		    <col width="20%">
		  </colgroup>
		  <thead>
		    <tr>
		      <th style="font-size: 20px;color:#5FB878;">专业</th>
		      <th style="font-size: 20px;color:#5FB878;">2013</th>
		      <th style="font-size: 20px;color:#5FB878;">2014</th>
		      <th style="font-size: 20px;color:#5FB878;">2015</th>
		    </tr> 
		  </thead>
		  <tbody>
			{{#  layui.each(d.list.major_lines, function(index, item){ }}
		    <tr>
		      <td style="font-size: 20px;">{{item.major_name}}</td>
		      <td style="font-size: 20px;">{{item.lines[0].line}}</td>
		      <td style="font-size: 20px;">{{item.lines[1].line}}</td>
		      <td style="font-size: 20px;">{{item.lines[2].line}}</td>
		    </tr>
			{{#  }); }}
		  </tbody>
		</table> 
			
	   </script>

    	</div>
    
    </div>
    
    
    <div class="layui-tab-item" id="college_view2">
    
    <script id="college_description" type="text/html">
		
		{{#   }}

    <div style="text-align: center;padding-top:35px;padding-bottom:10px;">
    <div style="width:180px;height:110px;display:inline-block;border:1px solid #5FB878;">
    <p style="font-size: 42px;margin-top:15px;color:#5FB878;">{{d.list.master_num}}</p>
    <p style="font-size: 18px;">硕士点</p>
    </div>
     <div style="width:180px;height:110px;display:inline-block;margin-left:100px;border:1px solid #5FB878;">
     <p style="font-size: 42px;margin-top:15px;color:#5FB878;">{{d.list.doctor_num}}</p>
    <p style="font-size: 18px;">博士点</p>
    </div>
     <div style="width:180px;height:110px;display:inline-block;margin-left:100px;border:1px solid #5FB878;">
     <p style="font-size: 42px;margin-top:15px;color:#5FB878;">{{d.list.important_major_num}}</p>
    <p style="font-size: 18px;">重点学科</p>
    </div>
    <div style="display:block;margin-top:30px;font-size: 18px;">
   		 男女比例：<span style="font-size: 18px;color:#5FB878;">{{d.list.sex_rate}}</span>
    </div>
    </div>
    
		<div style="margin-top:30px;">
			{{d.list.college_description}}	
		</div>
	
    <div style="display:inline-block;width:47%;">
    <table class="layui-table">
  <colgroup>
    <col width="90%">
  </colgroup>
  <thead>
    <tr>
      <th style="font-size: 20px;color:#5FB878;">特色专业</th>
    </tr> 
  </thead>
  <tbody>
	{{#  layui.each(d.list.special_majors, function(index, item){ }}
    <tr>
      <td>{{item}}</td>
    </tr>
	{{#  }); }}
  </tbody>
</table>
</div>

<div style="display:inline-block;width:47%;">
     <table class="layui-table">
  <colgroup>
    <col width="90%">
  </colgroup>
  <thead>
    <tr>
      <th style="font-size: 20px;color:#5FB878;">重点专业</th>
    </tr> 
  </thead>
  <tbody>
{{#  layui.each(d.list.important_majors, function(index, item){ }}
    <tr>
      <td>{{item.major_name}}</td>
    </tr>
{{#  }); }}
  </tbody>
</table>
  </div> 
  
{{#   }}
	</script>
    </div>


    <div class="layui-tab-item">
    <div id="college_view5"></div>
  	<div  id="college_view4">
  	<script id="college_model4" type="text/html">

	{{#   }}
  	<div style="padding-top:15px;padding-bottom:15px;">
    <div style="width:180px;text-align: center;height:110px;display:inline-block;border:1px solid #5FB878;">
    <p style="font-size: 42px;margin-top:15px;color:#5FB878;">{{d.list.employment.half_year_employment_ratio}}%</p>
    <p style="font-size: 18px;">就业率</p>
    </div>
     <div style="width:180px;text-align: center;height:110px;display:inline-block;margin-left:31%;border:1px solid #5FB878;">
     <p style="font-size: 42px;margin-top:15px;color:#5FB878;">{{d.list.employment.half_year_salary}}￥</p>
     <p style="font-size: 18px;">预测薪资</p>
    </div>
     </div>
    <table class="layui-table">
  <colgroup>
    <col width="50%">
	<col width="50%">
  </colgroup>
  <thead>
    <tr>
      <th style="font-size: 20px;color:#5FB878;">特色专业</th>
      <th style="font-size: 20px;color:#5FB878;">薪酬</th>
    </tr> 
  </thead>
  <tbody>
	{{#  layui.each(d.list.employment.salary_rank, function(index, item){ }}
    <tr>
      <td>{{item.major_name}}</td>
      <td>{{item.salary}}元</td>
    </tr>
	{{#  }); }}
  </tbody>
</table>
    
   
{{#   }}
  	</script>
    </div>
    </div>
  </div>
</div>	
</div>
 </div>
 	<script src="../lib/highcharts.js"></script>
 	<script src="../lib/exporting.js"></script>
 	<script src="../lib/data.js"></script>
 	<script src="../lib/grid-light.js"></script>
	<script src="../layui/layui.js"></script>
	<script src="../layui/layui.all.js"></script>
	<script src="../layer/layer.js"></script>
	<script src="../lib/http.js"></script>
	<script src="../lib/jquery.min.js"></script>
<script>
var collegeDetailData;
var collegeAdmitData;
$(function(){
	getCollegeDetail();
});
function getLineData(){
		var year= new Array();
		var score= new Array();
		for(var i=collegeAdmitData.lines.length-1;i>=0;i--){
			year.push(collegeAdmitData.lines[i].year+'年');
			score.push(collegeAdmitData.lines[i].line);
		}
		Highcharts.chart('container', {   
		    title: {
				 text: '历年分数线',
	             x: -20 //center
	        },
	        xAxis: {
	            categories: year
	        },
	        yAxis: {
	            title: {
	                text: '分数'
	            },
	            plotLines: [{
	                value: 0,
	                width: 1,
	                color: '#5FB878'
	            }]
	        },
	        tooltip: {
	            valueSuffix: '分'
	        },
	        legend: {
	            layout: 'vertical',
	            align: 'right',
	            verticalAlign: 'middle',
	            borderWidth: 0
	        },
	        series: [{
	            name: '分数',
	            data: score,
	            color: '#5FB878'
	        }]	
    });
}
</script>
</body>
</html>