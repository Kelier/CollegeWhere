<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!Doctype html>
<html>
<head>
	<meta name="baidu-site-verification" content="QImkfncm6c" />
	<meta name="baidu-site-verification" content="hicMwvzYOS" />
	<meta name="baidu-site-verification" content="ONMLdG1oX5" />
	<meta name="renderer" content="webkit|ie-comp|ie-stand" >
	<title>地区批次线|批次查询|查分数-大学去哪儿</title>
	<meta name="keywords" content="地区批次,地区批次线,录取批次,批次分数线,批次线位次,大学批次线">
	<meta name="description" content="全国各地区批次线在线查询，可查询各省市的本科和专科的录取批次，包括该地区的录取批次线、批次分数线和批次线位次，让考生在填报志愿时，明白院校的录取批次！">
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">   
	<meta charset="UTF-8">
	<link rel="icon" href="/Z1/favicon.ico" type="image/x-icon" />
</head>
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

</script>

<style type="text/css">	
	@import url( css/base.css?1487743253553 );
	@import url( css/common.css?1487743253553 );
	@import url( css/index.css?1487743253553 );
	@import url( css/list.css?1487743253553 );
	@import url( css/lrtk.css?1487743253553 );
	@import url( css/professional.css?1487743253553 );
</style>
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/menu.js" ="text/javascript"></script>
<script src="js/lrtk2.js" ="text/javascript"></script>
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
							<a href="javascript:void(0)" >安徽</a>
						</dd>
						<dt>B</dt>
						<dd>
							<a href="javascript:void(0)" >北京</a>
						</dd>
						<dt>C</dt>
						<dd>
							<a href="javascript:void(0)" >重庆</a>
						</dd>
						<dt>F</dt>
						<dd>
							<a href="javascript:void(0)" >福建</a>
						</dd>
						<dt>G</dt>
						<dd>
							<a href="javascript:void(0)" >广东</a><a
								href="javascript:void(0)" >广西</a><a
								href="javascript:void(0)" >贵州</a><a
								href="javascript:void(0)" >甘肃</a>
						</dd>
						<dt>H</dt>
						<dd>
							<a href="javascript:void(0)" >河北</a><a
								href="javascript:void(0)" >黑龙江</a><a
								href="javascript:void(0)" >海南</a><a
								href="javascript:void(0)" >湖北</a><a
								href="javascript:void(0)" >河南</a>
                                <a href="javascript:void(0)">湖南</a>
						</dd>
						<dt>J</dt>
						<dd>
							<a href="javascript:void(0)" >江苏</a><a
								href="javascript:void(0)" >吉林</a><a
								href="javascript:void(0)" >江西</a>
						</dd>
						<dt>L</dt>
						<dd>
							<a href="javascript:void(0)" >辽宁</a>
						</dd>
					</dl>
					<dl>
						<dt>N</dt>
						<dd>
							<a href="javascript:void(0)" >内蒙古</a><a
								href="javascript:void(0)" >宁夏</a>
						</dd>
						<dt>Q</dt>
						<dd>
							<a href="javascript:void(0)" >青海</a>
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
							<a href="javascript:void(0)">西藏</a><a
								href="javascript:void(0)">新疆</a>
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
	  window.open("/expert/login.html");
  }
  function userLogin(){
	  var URL = window.location.href;
	  //window.location.href = "/user/login.html?urlValue="+url+"&1487743253553";
	  window.open("/user/login.html?urlValue="+URL+"");
  }
  function userRegister(){
	  var URL = window.location.href;
	  //window.location.href = "/user/register.html?urlValue="+url+"&1487743253553"
	  window.open("/user/register.html?urlValue="+URL+"");
  }
</script>
<!--placeholder兼容ie代码j结束-->
<script>
$(document).ready(function(){
	
	$('body').on('click','.confirm-modal button',function(){
		if($(this).is(('.confirmmodal-btn2'))&&$('.confirm-modal .alert-body').text()=='想要测试？请先登录 ^_^')
			{window.open('/user/login.html')}
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
<script src="js/menu.js" ="text/javascript"></script>
<script src="js/lrtk2.js" ="text/javascript"></script>

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
				<a  name="index_img" href="javascript:;"><img src="images/logo.png" alt="大学去哪儿" title='大学去哪儿' /></a>
			</div>			<div class="nav-top">
				
				<ul>
		
		<li class="nav02 ">
		<a  name='index_img' href = "javascript:;"  >
		<div>
			首  页
		</div></a>		
	
		<ul class="list03">
		</ul>
		</li>
		
		<li class="nav02 ">
		<a  href = "/reform.html" >
		<div>
			高考改革
		</div></a>		
	
		<ul class="list03">
					<li><a href = "/reform/course_select.html">选考科目</a></li>
		</ul>
		</li>
		
		<li class="nav02  nav-default ">
		<a  >
		<div>
			志愿填报
		</div></a>		
	
		<ul class="list03">
					<li><a href = "/major.html">专业库</a></li>
					<li><a href = "/college.html">大学库</a></li>
					<li><a href = "/score.html">查分数</a></li>
						<li><a href="/user/login.html">报志愿</a></li>
					<li><a href = "/knowledge.html">志愿百科</a></li>
					<li><a href = "/VIPcard.html">VIP会员卡</a></li>
		</ul>
		</li>
		
		<li class="nav02 ">
		<a  >
		<div>
			特殊报考
		</div></a>		
	
		<ul class="list03">
					<li><a href = "/recruitment.html">自主招生</a></li>
					<li><a href = "/military.html">国防/军校生</a></li>
					<li><a href = "/normal.html">免费师范生</a></li>
					<li><a href = "/cooperation.html">中外合作办学</a></li>
		</ul>
		</li>
		
		<li class="nav02 ">
		<a  href = "/carrerplan.html" >
		<div>
			生涯规划
		</div></a>		
	
		<ul class="list03">
					<li><a href = "/carrerplan/assessment.html">素质测评</a></li>
					<li><a href = "/carrerplan/gkzy_training.html">志愿规划师培训</a></li>
					<li><a href = "/carrerplan/career_training.html">生涯规划师培训</a></li>
		</ul>
		</li>
		
		<li class="nav02 ">
		<a  >
		<div>
			专家咨询
		</div></a>		
	
		<ul class="list03">
					<li><a href = "/expert/allexpert.html">专家团队</a></li>
					<li><a href = "/expert/all_Questions.html">志愿问答</a></li>
		</ul>
		</li>
		
		<li class="nav02 ">
		<a  href = "/video.html" >
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
<script type="text/javascript"
	src="js/consult_page.js"></script>
<style>
body{
 -moz-user-select:none;
 hutia:expression(this.onselectstart=function(){return(false)});
}
</style>
<script type="text/javascript">

var test="[ 北京 ]";
var province=test.substring(2,test.length-2);

var batch = 2;
var wl = "L";
var year = "2016";
/*a标签增加、删除class属性。同时获取选中的a标签中的内容*/
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

/*分页使用*/    
    function your_query(t){
    	//t 是你的查询条件
    	t={province:'',wl:'',batch:'',year:''};
    	// your_query 需要你选取页面元素构造这个txt查询条件
    	t.province = province;
    	t.wl = wl;
    	t.batch = batch;
    	t.year = year;
    	return t
    }
    function getele(){
    	//需要替换的dom元素
    	return "#regionScore"
    }
    function getaction(){
    	//ajax 请求的页面 
    	// js会将下面这个页面返回的字符串原封不动替换到getele这个元素里
    	return "../../../showRegion"
    }
</script>
<!--内容开始-->
<div id="main">
	<div class="w clearfix">
		<div class="screen">
			<div class="site">
				当前位置： <a href="http://www.gkzy100.com">首页</a>&nbsp;>&nbsp;<b>  	
		<b>志愿填报&nbsp;>&nbsp;</b>
		<a href="/score.html" >查分数</a>&nbsp;>&nbsp;
		<a href="/score/batch.html" >地区批次线</a>
</b>
			</div>
			<div class="cut-style1"></div>
			<div class=" font-size14">
				<a class="tab-hover-style float-left"
					href="score.jsp">院校分数线</a>
			</div>
			<div class=" font-size14">
				<a class="tab-hover-style float-left"
					href="profession.jsp">专业分数线</a>
			</div>
			<div class=" font-size14">
				<a class="tab-default tab-hover-style float-left"
					href="batch.jsp">地区批次线</a>
			</div>
			
		    
			
			<div class="tab-fixed font-size14 float-left"></div>
			<div class="clear"></div>
				<div id="a1" class="screen-item">
					<div class="screen-name">招生地区：</div>
					<ul class="screenList">
			  <li><a href="javascript:void(0)" class="current1">北京</a></li>          
              <li><a href="javascript:void(0)" >上海</a></li>                           
              <li><a href="javascript:void(0)" >天津</a></li>	
              <li><a href="javascript:void(0)" >重庆</a></li>
              <li><a href="javascript:void(0)" >辽宁</a></li>
              <li><a href="javascript:void(0)" >吉林</a></li>
              <li><a href="javascript:void(0)" >黑龙江</a></li>
              <li><a href="javascript:void(0)" >山东</a></li>
              <li><a href="javascript:void(0)" >河南</a></li>
              <li><a href="javascript:void(0)" >河北</a></li>
              <li><a href="javascript:void(0)" >山西</a></li>
              <li><a href="javascript:void(0)" >陕西</a></li>
              <li><a href="javascript:void(0)" >江苏</a></li>
              <li><a href="javascript:void(0)" >浙江</a></li>
              <li><a href="javascript:void(0)" >江西</a></li>
              <li><a href="javascript:void(0)" >安徽</a></li>
              <li><a href="javascript:void(0)" >海南</a></li>
              <li><a href="javascript:void(0)" >湖北</a></li>
              <li><a href="javascript:void(0)" >湖南</a></li>
              <li><a href="javascript:void(0)" >福建</a></li>
              <li><a href="javascript:void(0)" >广东</a></li>
              <li><a href="javascript:void(0)" >四川</a></li>
              <li><a href="javascript:void(0)" >广西</a></li>
              <li><a href="javascript:void(0)" >云南</a></li>
              <li><a href="javascript:void(0)" >甘肃</a></li>
              <li><a href="javascript:void(0)" >贵州</a></li>
              <li><a href="javascript:void(0)" >青海</a></li>
              <li><a href="javascript:void(0)" >新疆</a></li>
              <li><a href="javascript:void(0)" >内蒙古</a></li>
              <li><a href="javascript:void(0)" >宁夏</a></li>
              <li><a href="javascript:void(0)" >西藏</a></li>
             
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
						<li><a href="javascript:void(0)" class="current1">2016</a></li>
						<li><a href="javascript:void(0)">2015</a></li>
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
			<div id="regionScore"></div>
			<div id="page">
				<div class="pagelist">
					<div class="page">第1页/共2页</div>
					<span class="end"><a href="javascript:void(0)">首&nbsp;&nbsp;页</a></span> <span
						class="end"><a href="javascript:void(0)">上一页</a></span> <span class="current"><a
						href="javascript:void(0)">1</a></span> <span class="num"><a href="javascript:void(0)">2</a></span> <span
						class="num"><a href="javascript:void(0)">3</a></span> <span class="end"><a
						href="javascript:void(0)">下一页</a></span> <span class="end"><a href="javascript:void(0)">尾页</a></span>
					<div class="go">到</div>
					<input
						style="height: 32px; line-height: 32px; width: 60px; float: left; margin-right: 4px; border: #e1e1e1 1px solid;">
					<span class="end"><a href="javascript:void(0)">确定</a></span>
				</div>
			</div>
		</div>
	</div>
</div>
<!--内容结束-->
<div class="clear"></div>
<!--底部开始-->
<div class="footer">
	<div class="footer-link-container">
    	<strong style="font-size:14px;height:30px;line-height:30px;float:left;width:100px" >&nbsp;&nbsp;友情链接：</strong>
        <div class="footer-link" style="a:hover#ec8400;">
          <!-- <a target="_blank"  href="http://www.xycareer.com/" title='向阳生涯规划' >向阳生涯规划</a>&nbsp;| -->         
            <a target="_blank"  href="http://zhiyeguihua.yjbys.com/ceshi/" title='职业测试' >职业测试</a>&nbsp;|        
              <a target="_blank"  href="http://lizhi.yjbys.com/yulu/" title='励志语录'>励志语录</a>&nbsp;|    
                <a target="_blank"  href="http://www.nanshikaoyan.com" title='南京师范大学研究生院'>南京师范大学研究生院</a>&nbsp;|    
                  <a target="_blank"  href="http://www.examw.com/sydw/" title='事业单位考试'>事业单位考试 </a>&nbsp;|
                   <a target="_blank"  href="http://www.lixinedu.com.cn/acca/" title='ACCA考试'>ACCA考试</a>&nbsp;|
                   <a target="_blank"  href="http://www.cacee.org.cn/" title='中国继续工程教育协会'>中国继续工程教育协会</a>&nbsp;|
                   <a target="_blank"  href="http://www.xjrsjxjy.com/" title='新疆继续教育网'>新疆继续教育网</a>&nbsp;|
                    <a target="_blank"  href="http://peixunsj.cn" title='教育培训网'>教育培训网</a>&nbsp;|
                    <a target="_blank"  href="http://www.cnrencai.com/studyenglish/" title='外语学习'>外语学习</a>&nbsp;|
       </div> 
    	<div class="clear"></div>
    </div>  
	<div class="footer-bottom">
        <div class="footer-left">
            <div class="about">
                <strong style="font-size:14px;height:30px;line-height:30px;float:left;width:100px">&nbsp;&nbsp;关于我们：</strong>
                <a target="_blank"  href="/aboutus/brief.html">网站简介&nbsp;&nbsp;</a>|
                <a target="_blank"  href="/aboutus/company.html">&nbsp;公司动态&nbsp;&nbsp;</a>|
                <!--<a href="/frontplan/mediaReport.html">&nbsp;媒体报道&nbsp;&nbsp;</a>|-->
                <a target="_blank"  href="/aboutus/legalDeclaration.html">&nbsp;法律声明&nbsp;&nbsp;</a>|
                <a target="_blank"  href="/aboutus/feedBack.html">&nbsp;意见反馈&nbsp;&nbsp;</a>|
                <a target="_blank"  href="/aboutus/hr.html">&nbsp;诚聘英才&nbsp;&nbsp;</a>|
                <a target="_blank"  href="/aboutus/contactUs.html">&nbsp;联系我们&nbsp;&nbsp;</a>|
                <a href="/aboutus/websiteMap.html">&nbsp;网站地图&nbsp;&nbsp;</a>
            </div>
            <div class="copyright">
                <strong style="font-size:14px;height:30px;line-height:30px;float:left;width:100px">&nbsp;&nbsp;版权所有：</strong>
                <div>
                    <p>Copyright&copy;2010 - 2015 京公网安备11010802017407 京ICP备11016615号-2
                    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1259516367'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s11.cnzz.com/z_stat.php%3Fid%3D1259516367%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
                    </p>
                    <p>北京优品兴业信息科技有限公司版权所有</p>
                </div>
            </div>
            <div class="clear"></div>
            <div class="footer-img">
                <a href="#"><img src="/templates/default/Z1/user/images/01.png" width="124" height="47" alt="海淀网络警察提醒您"></a>
                <a href="#"><img src="/templates/default/Z1/user/images/02.png" width="124" height="47" alt="安全联盟实名验证"></a>
                <a href="#"><img src="/templates/default/Z1/user/images/03.png" width="124" height="47" alt="不良信息举报中心"></a>
                <a href="#"><img src="/templates/default/Z1/user/images/04.png" width="124" height="47" alt="360绿色网站"></a>
            </div>	
        </div>
        <div class="footer-right">
            <div class="weixin-text">微信扫一扫，关注大学去哪儿!</div>
            <a href="#"><img src="/templates/default/Z1/user/images/weixin.png" width="154" height="154" alt="二维码"></a>
        </div>
    </div>
    <div class="clear"></div>
</div>
<!--底部结束-->
<!--在线客服-->
 <script type="text/javascript" charset="utf-8" src="http://lead.soperson.com/10039507/10061656.js"></script>
<!--底部结束-->
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
</body>
<script type="text/javascript"> 
document.body.onselectstart=document.body.oncontextmenu=function(){ return false;} 
</script> 
</html>