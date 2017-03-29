<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!Doctype html>
<html><head>
	<meta name="baidu-site-verification" content="QImkfncm6c">
	<meta name="baidu-site-verification" content="hicMwvzYOS">
	<meta name="baidu-site-verification" content="ONMLdG1oX5">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<title>专业分数线|大学查询|查分数-大学去哪儿</title>
	<meta name="keywords" content="分数线,大学录取分数线,查分数,招生地区查询,录取批次查询,院校分数查询">
	<meta name="description" content="拥有最权威数据，供考生查询全国院校的录取分数线，可以根据往年分数数据评估选大学和选专业，可以查询录取批次、最高分、最低分、平均分、最低分线差、最低分位次、批次线等数据！">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">   
	<meta charset="UTF-8">
	<link rel="icon" href="/Z1/favicon.ico" type="image/x-icon">
<script type="text/javascript">
/*-----------知分选大学页面的判断--------------------*/
	function selectSchool(){
		var originAreaLength = $("#originArea").val().length;
		var schoolAttributeLength = $("#schoolAttribute").val().length;
		var batchLength = $("#batch").val().length;
		var categoryLength = $("#category").val().length;
		var schoolAreaLength = $("#schoolArea").val().length;
		var scoreLength = $("#score").val().length;
		var score = $("#score").val();
		
		if(originAreaLength == 0){
			$("#originArea").focus();
			return false;
		}else if(categoryLength == 0){
			$("#category").focus();
			return false;
		}else if(score<150){
		  alert("抱歉，您输入的高考分数已低于理论值，请重新输入(至少150分)");
          return false;			
		}
		
		else{
			$('#selectUniversityForm').submit()
		}
	
	}
/*-----------------知分选专业---------------------------*/
	function selectMajor(){
		var originAreaLength = $("#originArea1").val().length;
		var batchLength = $("#batch1").val().length;
		var categoryLength = $("#category1").val().length;
		var majorCategoryLength = $("#majorCategory").val().length;
		var scoreLength = $("#score1").val().length;
		if(originAreaLength == 0){
			$("#originArea1").focus();
			return false;
		}
		else if(majorCategoryLength == 0){
			$("#majorCategory").focus();
			return false;
		}
		else if(batchLength == 0){
			$("#batch1").focus();
			return false;
		}
		else if(categoryLength == 0){
			$("#category1").focus();
			return false;
		}
		else if(scoreLength == 0){
			$("#score1").focus();
			return false;
		}else{
			$('#selectMajorForm').submit()
		}
	}

</script><style type="text/css">	
	@import url("css/base.css");
	@import url("css/common.css");
	@import url("css/index.css");
	@import url("css/list.css");
	@import url("css/lrtk.css");
	@import url("css/professional.css");
</style>
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/menu.js" ="text="" javascript"=""></script>
<script src="js/lrtk2.js" ="text="" javascript"=""></script>
<script src="js/tool.js" type="text/javascript"></script>


<script type="text/javascript">
	function test1(class1, class2) {
		$('.' + class1).removeClass(class1).addClass(class2);
	}
	function test2(class1, class2) {
		$('.' + class2).removeClass(class2).addClass(class1);
	}
</script>
<script type="text/javascript">

var province;

$(document).ready(function(){
	$('.b_K dl dd a').click(function(){
    	provinceHeader = "[ " + $(this).text() + " ]";
	//	province =  $(this).text();
		$('.city a').text(provinceHeader);
		var action = "/user_front/saveCity.html";
		$.ajax({
			type: "POST",
			url: action,
			cache: false,
	        async: true,
			data: {"city":provinceHeader},
			error: function (e) {console.log(e); },
			success: function (msg){
			location.reload(); 
			}
		});
	})
})
</script>
</head>
<body>
<script>
(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';        
    }
    else {
        bp.src = 'http://push.zhanzhang.baidu.com/push.js';
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>

<div id="top">
	<div class="top-style">
		<div class="top-slogan">报志愿，上大学去哪儿！</div>
		<div class="top-position">
			<a href="javascript:void(0)"><img src="images/position.png" alt="position"></a>
			<div class="city">
				<a href="javascript:void(0)" onclick="$('.all_city').show()">[ 北京 ]</a>
			</div>
			
			<div style="display: none;" class="all_city" onmouseleave="$('.all_city').hide()">
				<div class="b_K">
					<div class="tui_j">
						<font style="color:#47ac48;"><center><p>欢迎来到大学去哪儿！</p></center></font>
					</div>
					<!--推荐城市-->
					<dl style="border-right: 1px dashed #e1e1e1;">
						<dt>A</dt>
						<dd>
							<a href="javascript:void(0)">安徽</a>
						</dd>
						<dt>B</dt>
						<dd>
							<a href="javascript:void(0)">北京</a>
						</dd>
						<dt>C</dt>
						<dd>
							<a href="javascript:void(0)">重庆</a>
						</dd>
						<dt>F</dt>
						<dd>
							<a href="javascript:void(0)">福建</a>
						</dd>
						<dt>G</dt>
						<dd>
							<a href="javascript:void(0)">广东</a><a href="javascript:void(0)">广西</a><a href="javascript:void(0)">贵州</a><a href="javascript:void(0)">甘肃</a>
						</dd>
						<dt>H</dt>
						<dd>
							<a href="javascript:void(0)">河北</a><a href="javascript:void(0)">黑龙江</a><a href="javascript:void(0)">海南</a><a href="javascript:void(0)">湖北</a><a href="javascript:void(0)">河南</a>
                                <a href="javascript:void(0)">湖南</a>
						</dd>
						<dt>J</dt>
						<dd>
							<a href="javascript:void(0)">江苏</a><a href="javascript:void(0)">吉林</a><a href="javascript:void(0)">江西</a>
						</dd>
						<dt>L</dt>
						<dd>
							<a href="javascript:void(0)">辽宁</a>
						</dd>
					</dl>
					<dl>
						<dt>N</dt>
						<dd>
							<a href="javascript:void(0)">内蒙古</a><a href="javascript:void(0)">宁夏</a>
						</dd>
						<dt>Q</dt>
						<dd>
							<a href="javascript:void(0)">青海</a>
						</dd>
						<dt>S</dt>
						<dd>
							   <a href="javascript:void(0)">上海</a>
							   <a href="javascript:void(0)">山东</a>
							   <a href="javascript:void(0)">山西</a>
							   <a href="javascript:void(0)">四川</a>
							   <a href="javascript:void(0)">陕西</a>
						</dd>
						<dt>T</dt>
						<dd>
							<a href="javascript:void(0)">天津</a>
						</dd>
						<dt>X</dt>
						<dd>
							<a href="javascript:void(0)">西藏</a><a href="javascript:void(0)">新疆</a>
						</dd>
						<dt>Y</dt>
						<dd>
							<a href="javascript:void(0)">云南</a>
						</dd>
						<dt>Z</dt>
						<dd>
							<a href="javascript:void(0)">浙江</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>

		<div class="top-tel">
            <img src="images/phone.png" alt="phone" width="18" height="18">
            <div class="number">全国服务热线：400-070-8100</div>
		</div>
		<div class="top-login">
				<c:if test="${sessionScope.uname==null}">
				<a class="login-head" href="javascript:void(0);" onclick="userLogin()" title="会员登录">会员登录</a>
				<a class="login-head" href="javascript:void(0);"onclick="userRegister()" title="会员注册">会员注册</a>
				</c:if>	
				<c:if test="${sessionScope.uname!=null}">
				<a class="login-head" href="javascript:void(0);" title="会员登录">
				<img style="width: 15px; height: 15px;margin-right:5px;" src="../images/home/user.png">
				${sessionScope.uname}</a>
				</c:if>
				<div class="clear"></div>
		</div>
	</div>
</div>
<div class="clear"></div>
<!--头部结束-->

<!--placeholder兼容ie代码-->
<script type="text/javascript">
$(document).ready(function(){
    var doc=document,inputs=doc.getElementsByTagName('input'),supportPlaceholder='placeholder'in doc.createElement('input'),placeholder=function(input){var text=input.getAttribute('placeholder'),defaultValue=input.defaultValue;
    if(defaultValue==''){
        input.value=text}
        input.onfocus=function(){
            if(input.value===text){this.value=''}};
            input.onblur=function(){if(input.value===''){this.value=text}}};
            if(!supportPlaceholder){
                for(var i=0,len=inputs.length;i<len;i++){var input=inputs[i],text=input.getAttribute('placeholder');
                if(input.type==='text'&&text)
                {placeholder(input)}}}
  });
  function expertLogin(){
	  var URL = window.location.href;
	  window.open("/expert/login.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E");
  }
  function userLogin(){
	  var URL = window.location.href;
	  //window.location.href = "/user/login.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E?urlValue="+url+"&1487743253553";
	  window.open("/user/login.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E?urlValue="+URL+"");
  }
  function userRegister(){
	  var URL = window.location.href;
	  //window.location.href = "/user/register.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E?urlValue="+url+"&1487743253553"
	  window.open("/user/register.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E?urlValue="+URL+"");
  }
</script>
<!--placeholder兼容ie代码j结束-->
<script>
$(document).ready(function(){
	
	$('body').on('click','.confirm-modal button',function(){
		if($(this).is(('.confirmmodal-btn2'))&&$('.confirm-modal .alert-body').text()=='想要测试？请先登录 ^_^')
			{window.open('/user/login.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E')}
		else
			{}
	})
	$('.list03 a:contains("素质测评")').click(function(){
		if($('.a-status').length==0)
			{
			confirmmodal2("想要测试？请先登录 ^_^","关闭","登录");
			return false;
			}
	
	})
}
);
</script><!--顶部导航开始-->
<nav>
	<div class="nav-bg">
		<!--兼容不支持H5标签的浏览器-->
		<div class="nav-style">
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/menu.js" ="text="" javascript"=""></script>
<script src="js/lrtk2.js" ="text="" javascript"=""></script>

<script type="text/javascript">
$(document).ready(function(){
	
	$("a[name='index_img']").click(function(){
		var root_url = window.document.location.href;
		var uri = 'http://www.gkzy100.com';
		if(root_url.indexOf("Z1")>10){
			uri = root_url.substr(0,root_url.indexOf("Z1")+2);
		}
		//alert(uri);
		window.location.href = uri;
	});

	//$('body').html().find("a").attr('href','test122221');
});
</script>

<div class="logo">
				<a name="index_img" href="javascript:;"><img src="images/logo.png" alt="大学去哪儿" title="大学去哪儿"></a>
			</div>			<div class="nav-top">
				
				<ul>
		
		<li class="nav02 ">
		<a name="index_img" href="javascript:;">
		<div>
			首  页
		</div></a>		
	
		<ul class="list03">
		</ul>
		</li>
		
		<li class="nav02 ">
		<a href="/reform.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">
		<div>
			高考改革
		</div></a>		
	
		<ul class="list03">
					<li><a href="/reform/course_select.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">选考科目</a></li>
		</ul>
		</li>
		
		<li class="nav02  nav-default ">
		<a>
		<div>
			志愿填报
		</div></a>		
	
		<ul class="list03">
					<li><a href="/major.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">专业库</a></li>
					<li><a href="/college.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">大学库</a></li>
					<li><a href="/score.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">查分数</a></li>
						<li><a href="/user/login.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">报志愿</a></li>
					<li><a href="/knowledge.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">志愿百科</a></li>
					<li><a href="/VIPcard.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">VIP会员卡</a></li>
		</ul>
		</li>
		
		<li class="nav02 ">
		<a>
		<div>
			特殊报考
		</div></a>		
	
		<ul class="list03">
					<li><a href="/recruitment.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">自主招生</a></li>
					<li><a href="/military.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">国防/军校生</a></li>
					<li><a href="/normal.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">免费师范生</a></li>
					<li><a href="/cooperation.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">中外合作办学</a></li>
		</ul>
		</li>
		
		<li class="nav02 ">
		<a href="/carrerplan.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">
		<div>
			生涯规划
		</div></a>		
	
		<ul class="list03">
					<li><a href="/carrerplan/assessment.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">素质测评</a></li>
					<li><a href="/carrerplan/gkzy_training.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">志愿规划师培训</a></li>
					<li><a href="/carrerplan/career_training.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">生涯规划师培训</a></li>
		</ul>
		</li>
		
		<li class="nav02 ">
		<a>
		<div>
			专家咨询
		</div></a>		
	
		<ul class="list03">
					<li><a href="/expert/allexpert.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">专家团队</a></li>
					<li><a href="/expert/all_Questions.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">志愿问答</a></li>
		</ul>
		</li>
		
		<li class="nav02 ">
		<a href="/video.html;jsessionid=A708DDC09F7A6B3735633E91569BBA9E">
		<div>
			微 课 堂
		</div></a>		
	
		<ul class="list03">
		</ul>
		</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</nav>
<!--顶部导航结束-->
<style>
body{
 -moz-user-select:none;
 hutia:expression(this.onselectstart=function(){return(false)});
}
</style>
<script type="text/javascript" src="js/consult_page.js"></script>
<script type="text/javascript">

var test="[ 北京 ]";
var province=test.substring(2,test.length-2);

var batch = 2;
var wl = "L";
var year = "2015";


  	$(document).ready(function(){
    	$("#a1 ul li a").click(function(){
    		$(this).addClass("current1").parent().siblings().find("a").removeClass("current1");
    		province = $(this).text();
        });
    	$("#a2 ul li a").click(function(){
    		$(this).addClass("current1").parent().siblings().find("a").removeClass("current1");
    		if($(this).text() == "理科"){
    			wl = "L";
    		}else if($(this).text() == "文科"){
    			wl = "W";
    		}
        });
    	$("#a3 ul li a").click(function(){
    		$(this).addClass("current1").parent().siblings().find("a").removeClass("current1");
    		if($(this).text() == "本科一批"){
				batch = 2;
			}else if($(this).text() == "本科二批"){
				batch = 3;
			}else if($(this).text() == "本科三批"){
				batch = 4;
			}else if($(this).text() == "高职高专"){
				batch = 6;
			}
    		
        });
    	$("#a4 ul li a").click(function(){
    		$(this).addClass("current1").parent().siblings().find("a").removeClass("current1");
    		year = $(this).text();
        });
    });
  
  	function your_query(t){
    	//t 是你的查询条件
    	t={schoolname:'',majorname:'',province:'',wl:'',batch:'',year:''};
    	// your_query 需要你选取页面元素构造这个txt查询条件
    	t.schoolname = $("#schoolname").val();
    	t.majorname = $("#majorname").val();
    	t.province = province;
    	t.wl = wl;
    	t.batch = batch;
    	t.year = year;
    	return t
    }
    function getele(){
    	//需要替换的dom元素
    	return "#majorScore"
    }
    function getaction(){
    	//ajax 请求的页面 
    	// js会将下面这个页面返回的字符串原封不动替换到getele这个元素里
    	return "../../../showProfessional"
    }
</script>


<!--内容开始-->
<div id="main">
	<div class="w clearfix">
		<div class="screen">
			<div class="site">
				当前位置： <a href="http://www.gkzy100.com">首页</a>&nbsp;&gt;&nbsp;<b>  	
		<b>志愿填报&nbsp;&gt;&nbsp;</b>
		<a href="/score.html">查分数</a>&nbsp;&gt;&nbsp;
		<a href="/score/profession.html">专业分数线</a>
</b>
			</div>
			<div class="cut-style1"></div>
			<div class=" font-size14">
				<a class="tab-hover-style float-left" href="score.jsp">院校分数线</a>
			</div>
			<div class=" font-size14">
				<a class="tab-default tab-hover-style float-left" href="profession.jsp">专业分数线</a>
			</div>
			<div class=" font-size14">
				<a class="tab-hover-style float-left" href="batch.jsp">地区批次线</a>
			</div>
			
			
			<div class="tab-fixed font-size14 float-left"></div>
			<div class="clear"></div>
			<div id="a0" class="screen-item1">
				<div class="screen-search">
					<input class="school" autocomplete="off" placeholder="请输入专业名称" name="majorname" id="majorname" type="text"> <input class="school" autocomplete="off" placeholder="请输入院校名称" name="schoolname" id="schoolname" type="text">
				</div>
			</div>
			<div id="a1" class="screen-item">
				<div class="screen-name">招生地区：</div>
				<ul class="screenList">
					<li><a href="javascript:void(0)" class="current1">北京</a></li>          
              <li><a href="javascript:void(0)">上海</a></li>                           
              <li><a href="javascript:void(0)">天津</a></li>	
              <li><a href="javascript:void(0)">重庆</a></li>
              <li><a href="javascript:void(0)">辽宁</a></li>
              <li><a href="javascript:void(0)">吉林</a></li>
              <li><a href="javascript:void(0)">黑龙江</a></li>
              <li><a href="javascript:void(0)">山东</a></li>
              <li><a href="javascript:void(0)">河南</a></li>
              <li><a href="javascript:void(0)">河北</a></li>
              <li><a href="javascript:void(0)">山西</a></li>
              <li><a href="javascript:void(0)">陕西</a></li>
              <li><a href="javascript:void(0)">江苏</a></li>
              <li><a href="javascript:void(0)">浙江</a></li>
              <li><a href="javascript:void(0)">江西</a></li>
              <li><a href="javascript:void(0)">安徽</a></li>
              <li><a href="javascript:void(0)">海南</a></li>
              <li><a href="javascript:void(0)">湖北</a></li>
              <li><a href="javascript:void(0)">湖南</a></li>
              <li><a href="javascript:void(0)">福建</a></li>
              <li><a href="javascript:void(0)">广东</a></li>
              <li><a href="javascript:void(0)">四川</a></li>
              <li><a href="javascript:void(0)">广西</a></li>
              <li><a href="javascript:void(0)">云南</a></li>
              <li><a href="javascript:void(0)">甘肃</a></li>
              <li><a href="javascript:void(0)">贵州</a></li>
              <li><a href="javascript:void(0)">青海</a></li>
              <li><a href="javascript:void(0)">新疆</a></li>
              <li><a href="javascript:void(0)">内蒙古</a></li>
              <li><a href="javascript:void(0)">宁夏</a></li>
              <li><a href="javascript:void(0)">西藏</a></li>
             
             	</ul>
				<div class="clear"></div>
			</div>
			<div id="a2" class="screen-item">
				<div class="screen-name">考生类别：</div>
				<ul class="screenList">
					<li><a href="javascript:void(0)">文科</a></li>
					<li><a href="javascript:void(0)" class="current1">理科</a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div id="a3" class="screen-item">
				<div class="screen-name">录取批次：</div>
				<ul class="screenList">
					
					<li><a href="javascript:void(0)" class="current1">本科一批</a></li>
					<li><a href="javascript:void(0)">本科二批</a></li>
					<li><a href="javascript:void(0)">本科三批</a></li>
					<li><a href="javascript:void(0)">高职高专</a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div id="a4" class="screen-item">
				<div class="screen-name">招生年份：</div>
				<ul class="screenList">
				    <li><a href="javascript:void(0)">全部</a></li>
					
				    <li><a href="javascript:void(0)">2016</a></li>
				    <li><a href="javascript:void(0)" class="current1">2015</a></li>
					<li><a href="javascript:void(0)">2014</a></li>
					<li><a href="javascript:void(0)">2013</a></li>
				</ul>
				<div class="clear"></div>
			</div>
			<div class="screen-inquiry">
				<div class="inquiry2">
					<a href="javascript:void(0)">查&nbsp;&nbsp;询</a>
				</div>
			</div>
			<div id="majorScore"><div style="display: none;">@start194@end</div><table cellpadding="0" cellspacing="0" border="0" style="text-align:center;">
				<tbody><tr>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top"><div class="padding-left-style4">专业名称</div></td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top"><div class="padding-left-style4">院校名称</div></td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top"><div class="padding-left-style4">招生地区</div></td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top">考生类别</td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top">招生年份</td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top">录取批次</td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top">最低分</td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top">平均分</td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top">最高分</td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top">最低分线差</td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top">最低分位次</td>
					<td class="li-width8 border-bottom font-size14 line-height2 bg-color border-top">招生人数</td>
				</tr>			
			</tbody></table>
    <script type="text/javascript">
   
 
  $(document).ready(function(){
	  var message ="";
		if(message!=""){
	  if(confirm(message)){
		   window.location.href = "/VIPcard/index.html";
	   }else{

	   }	
	  
		}
	});
  
    </script>
</div>
			<div id="page">
				<div class="pagelist">
					<div class="page" style="display: block;">第1页/共194页</div>
					<span class="end" style="display: block;"><a href="javascript:void(0)">首&nbsp;&nbsp;页</a></span> <span class="end" style="display: block;"><a href="javascript:void(0)">上一页</a></span> <span class="current" style="display: block;"><a href="javascript:void(0)">1</a></span> <span class="num" style="display: block;"><a href="javascript:void(0)">2</a></span> <span class="num" style="display: block;"><a href="javascript:void(0)">3</a></span> <span class="end" style="display: block;"><a href="javascript:void(0)">下一页</a></span> <span class="end" style="display: block;"><a href="javascript:void(0)">尾页</a></span>
					<div class="go" style="display: block;">到</div>
					<input style="height: 32px; line-height: 32px; width: 60px; float: left; margin-right: 4px; border: 1px solid rgb(225, 225, 225); display: block;">
					<span class="end" style="display: block;"><a href="javascript:void(0)">确定</a></span>
				</div>
			</div>
		</div>
	</div>
</div>

<!--内容结束-->
<!--返回顶部-->
<script type="text/javascript">
		function prev(prev_id, curr_id) {
			$('#' + prev_id).show();
			$('#' + curr_id).hide();
		}
		function next(curr_id, next_id) {

			$('#' + curr_id).hide();
			$('#' + next_id).show();
		}
	</script>
