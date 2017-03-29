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
	
	<div id="top" style="display:block;">
		
		<div class="top-style">
			<div class="top-slogan">报志愿，上大学去哪儿！</div>
			<div class="top-position">
				<a href="javascript:void(0)"><img
					src="../gkzyw/images/position.png"
					alt="position"></a>
				<div class="city">
					<a href="javascript:void(0)" onclick="$('.all_city').show()">[北京 ]</a>
				</div>
				<div style="display: none;" class="all_city"
					onmouseleave="$('.all_city').hide()">
					<div class="b_K">
						<div class="tui_j">
							<font style="color: #47ac48;"><center>
									<p>欢迎来到大学去哪儿！</p>
								</center></font>
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
								<a href="javascript:void(0)">广东</a><a href="javascript:void(0)">广西</a><a
									href="javascript:void(0)">贵州</a><a href="javascript:void(0)">甘肃</a>
							</dd>
							<dt>H</dt>
							<dd>
								<a href="javascript:void(0)">河北</a><a href="javascript:void(0)">黑龙江</a><a
									href="javascript:void(0)">海南</a><a href="javascript:void(0)">湖北</a><a
									href="javascript:void(0)">河南</a> <a href="javascript:void(0)">湖南</a>
							</dd>
							<dt>J</dt>
							<dd>
								<a href="javascript:void(0)">江苏</a><a href="javascript:void(0)">吉林</a><a
									href="javascript:void(0)">江西</a>
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
								<a href="javascript:void(0)">上海</a> <a href="javascript:void(0)">山东</a>
								<a href="javascript:void(0)">山西</a> <a href="javascript:void(0)">四川</a>
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
				<img src="../gkzyw/images/phone.png" alt="phone"
					width="18" height="18">
				<div class="number">全国服务热线：400-070-8100</div>
			</div>
			<div class="top-login" style="float:right;">
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
	
	<!--顶部导航开始-->
	<nav>
		<div class="nav-bg">
			<!--兼容不支持H5标签的浏览器-->
			<div class="nav-style">
				<div class="logo">
					<a name="index_img" href="javascript:;"><img
						src="../gkzyw/images/logo.png" alt="大学去哪儿" title="大学去哪儿"></a>
				</div>
				<div class="nav-top">
					<ul>
						<li class="nav02 "><a name="index_img" href="javascript:;">
								<div>首 页</div>
						</a>
							<ul class="list03">
							</ul></li>
						<li class="nav02 "><a href="/reform.html">
								<div>高考改革</div>
						</a>
							<ul class="list03">
								<li><a href="/reform/course_select.html">选考科目</a></li>
							</ul></li>
						<li class="nav02  nav-default "><a>
								<div>志愿填报</div>
						</a>

							<ul class="list03">
								<li><a href="/major.html">专业库</a></li>
								<li><a href="/college.html">大学库</a></li>
								<li><a href="/score.html">查分数</a></li>
								<li><a href="/user/login.html">报志愿</a></li>
								<li><a href="/knowledge.html">志愿百科</a></li>
								<li><a href="/VIPcard.html">VIP会员卡</a></li>
							</ul></li>

						<li class="nav02 "><a>
								<div>特殊报考</div>
						</a>

							<ul class="list03">
								<li><a href="/recruitment.html">自主招生</a></li>
								<li><a href="/military.html">国防/军校生</a></li>
								<li><a href="/normal.html">免费师范生</a></li>
								<li><a href="/cooperation.html">中外合作办学</a></li>
							</ul></li>

						<li class="nav02 "><a href="/carrerplan.html">
								<div>生涯规划</div>
						</a>

							<ul class="list03">
								<li><a href="/carrerplan/assessment.html">素质测评</a></li>
								<li><a href="/carrerplan/gkzy_training.html">志愿规划师培训</a></li>
								<li><a href="/carrerplan/career_training.html">生涯规划师培训</a></li>
							</ul></li>

						<li class="nav02 "><a>
								<div>专家咨询</div>
						</a>

							<ul class="list03">
								<li><a href="/expert/allexpert.html">专家团队</a></li>
								<li><a href="/expert/all_Questions.html">志愿问答</a></li>
							</ul></li>

						<li class="nav02 "><a href="/video.html">
								<div>微 课 堂</div>
						</a>

							<ul class="list03">
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="clear"></div>
	</nav>
	<!--顶部导航结束-->
</body>
</html>