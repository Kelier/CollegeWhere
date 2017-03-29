<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!Doctype html>
<html>
<head>
<meta name="baidu-site-verification" content="QImkfncm6c">
<meta name="baidu-site-verification" content="hicMwvzYOS">
<meta name="baidu-site-verification" content="ONMLdG1oX5">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<title></title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta charset="UTF-8">
<link rel="icon" href="/Z1/favicon.ico" type="image/x-icon">
<script type="text/javascript">
	/*-----------知分选大学页面的判断--------------------*/
	function selectSchool() {
		var originAreaLength = $("#originArea").val().length;
		var schoolAttributeLength = $("#schoolAttribute").val().length;
		var batchLength = $("#batch").val().length;
		var categoryLength = $("#category").val().length;
		var schoolAreaLength = $("#schoolArea").val().length;
		var scoreLength = $("#score").val().length;
		var score = $("#score").val();

		if (originAreaLength == 0) {
			$("#originArea").focus();
			return false;
		} else if (categoryLength == 0) {
			$("#category").focus();
			return false;
		} else if (score < 150) {
			alert("抱歉，您输入的高考分数已低于理论值，请重新输入(至少150分)");
			return false;
		}

		else {
			$('#selectUniversityForm').submit()
		}

	}
	/*-----------------知分选专业---------------------------*/
	function selectMajor() {
		var originAreaLength = $("#originArea1").val().length;
		var batchLength = $("#batch1").val().length;
		var categoryLength = $("#category1").val().length;
		var majorCategoryLength = $("#majorCategory").val().length;
		var scoreLength = $("#score1").val().length;
		if (originAreaLength == 0) {
			$("#originArea1").focus();
			return false;
		} else if (majorCategoryLength == 0) {
			$("#majorCategory").focus();
			return false;
		} else if (batchLength == 0) {
			$("#batch1").focus();
			return false;
		} else if (categoryLength == 0) {
			$("#category1").focus();
			return false;
		} else if (scoreLength == 0) {
			$("#score1").focus();
			return false;
		} else {
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

@import
	url( css/professional.css?1487743253553 );
</style>
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/menu.js" type="text/javascript"></script>
<script src="js/lrtk2.js" type="text/javascript"></script>
<script src="js/tool.js" type="text/javascript"></script>
<script type="text/javascript">
	var province;
	$(document).ready(function() {
		$('.font-size14 a').click(function(){
			$(".font-size14 a").removeClass("tab-default");
			$(this).addClass("tab-default");
	    });
		
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
		var loc = location.href;
		var n1 = loc.length;//地址的总长度
		var n2 = loc.indexOf("=");//取得=号的位置
		var mid = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
	//	alert(mid);
		$.ajax({
			type : "POST",
			url : "../../../majorAnalysis",
			cache : false,
			async : true,
			data : {
				"mid" : mid
			},
			error : function(e) {
				console.log(e);
			},
			success : function(result) {
				$("#analysis").html(result);
			}
		});
		$.ajax({
			type : "POST",
			url : "../../../majorCollege",
			cache : false,
			async : true,
			data : {majorId:mid},
			error : function(e) {
			},
			success : function(result) {
				$("#schoolcontent").html(result);
			}
		});
		$.ajax({
			type : "POST",
			url : "../../../majorRank",
			cache : false,
			async : true,
			data :  {
				"mid" : mid
			},
			success : function(result) {
				$("#rankcontent").html(result);
			}
		});
	})
	
	function showPage(i){
		$("#analysis").css('display','none');
		$("#schoolcontent").css('display','none');
		$("#rankcontent").css('display','none');
		if(i==0)$("#analysis").css('display','block');
		if(i==1)$("#schoolcontent").css('display','block');
		if(i==2)$("#rankcontent").css('display','block');	
	}
</script>
</head>
<body>
	<div id="top">
		<div class="top-style">
			<div class="top-slogan">报志愿，上大学去哪儿！</div>
			<div class="top-position">
				<a href="javascript:void(0)"><img
					src="images/position.png"
					alt="position"></a>
				<div class="city">
					<a href="javascript:void(0)" onclick="$('.all_city').show()">[
						北京 ]</a>
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
				<img src="images/phone.png" alt="phone"
					width="18" height="18">
				<div class="number">全国服务热线：400-070-8100</div>
			</div>
			<div class="top-login">
				<c:if test="${sessionScope.uname==null}">
				<a class="login-head" href="javascript:void(0);" data-method="login" title="会员登录">会员登录</a>
				<a class="login-head" href="javascript:void(0);" data-method="register"  title="会员注册">会员注册</a>
				</c:if>	
				<c:if test="${sessionScope.uname!=null}">
				<a class="login-head" href="javascript:void(0);">
				<img style="width: 15px; height: 15px;margin-right:5px;" src="../images/home/user.png">
				${sessionScope.uname}</a>
				<a class="login-head" style="margin-top: -2px" href="javascript:;" data-method="loginOut">
  				 <img style="width: 15px; height: 15px;margin-right:5px;" src="../images/home/logout.png">注销</a>
				</c:if>

				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<!--头部结束-->

	<!--placeholder兼容ie代码-->
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var doc = document, inputs = doc
									.getElementsByTagName('input'), supportPlaceholder = 'placeholder' in doc
									.createElement('input'), placeholder = function(
									input) {
								var text = input.getAttribute('placeholder'), defaultValue = input.defaultValue;
								if (defaultValue == '') {
									input.value = text
								}
								input.onfocus = function() {
									if (input.value === text) {
										this.value = ''
									}
								};
								input.onblur = function() {
									if (input.value === '') {
										this.value = text
									}
								}
							};
							if (!supportPlaceholder) {
								for (var i = 0, len = inputs.length; i < len; i++) {
									var input = inputs[i], text = input
											.getAttribute('placeholder');
									if (input.type === 'text' && text) {
										placeholder(input)
									}
								}
							}
						});
		function expertLogin() {
			var URL = window.location.href;
			window.open("/expert/login.html");
		}
		function userLogin() {
			var URL = window.location.href;
			//window.location.href = "/user/login.html?urlValue="+url+"&1487743253553";
			window.open("/user/login.html?urlValue=" + URL + "");
		}
		function userRegister() {
			var URL = window.location.href;
			//window.location.href = "/user/register.html?urlValue="+url+"&1487743253553"
			window.open("/user/register.html?urlValue=" + URL + "");
		}
	</script>
	<!--placeholder兼容ie代码j结束-->
	<script>
		$(document).ready(
				function() {

					$('body').on(
							'click',
							'.confirm-modal button',
							function() {
								if ($(this).is(('.confirmmodal-btn2'))
										&& $('.confirm-modal .alert-body')
												.text() == '想要测试？请先登录 ^_^') {
									window.open('/user/login.html')
								} else {
								}
							})
					$('.list03 a:contains("素质测评")').click(function() {
						if ($('.a-status').length == 0) {
							confirmmodal2("想要测试？请先登录 ^_^", "关闭", "登录");
							return false;
						}

					})
				});
	</script>
	<!--顶部导航开始-->
	<nav>
		<div class="nav-bg">
			<!--兼容不支持H5标签的浏览器-->
			<div class="nav-style">
				<script src="js/jquery-1.11.3.min.js"
					type="text/javascript"></script>
				<script src="js/menu.js" ="text=""
					javascript"=""></script>
				<script src="js/lrtk2.js" ="text=""
					javascript"=""></script>


				<div class="logo">
					<a name="index_img" href="javascript:;"><img
						src="images/logo.png" alt="大学去哪儿"
						title="大学去哪儿"></a>
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

	<div class="screen">

		<div class="site">
			当前位置： <a href="http://www.gkzy100.com">首页</a>&nbsp;&gt;&nbsp;<b>
				<b>志愿填报&nbsp;&gt;&nbsp;</b> <a href="/major.html">专业库</a>
			</b>&nbsp;&gt;&nbsp;<b>汉语言文学专业解读</b>
		</div>
		<div class="cut-style1"></div>
		<div class="font-size14">
			<a class="tab-default tab-hover-style float-left" href="javascript:void(0)" onclick="showPage(0)">专业解读</a>
		</div>
		<div class="font-size14">
			<a class="tab-hover-style float-left" href="javascript:void(0)" onclick="showPage(1)">开设院校</a>
		</div>
		<div class="font-size14">
			<a class="tab-hover-style float-left" href="javascript:void(0)" onclick="showPage(2)">专业排名</a>
		</div>
		<div class="tab-fixed1 font-size14 float-left"></div>
		<div class="clear"></div>

		
		<div  class="font-size14 words-p2" id="analysis">
			
		</div>
		
		
		<div id="schoolcontent" style="display:none;">


		</div>
		<div id="rankcontent" style="display:none;padding-top:30px;">

		</div>
		
		<div class="clear"></div>


	</div>
	<div class="footer">
		<div class="footer-bottom">
			<div class="footer-left">
				<div class="about">
					<strong
						style="font-size: 14px; height: 30px; line-height: 30px; float: left; width: 100px">&nbsp;&nbsp;关于我们：</strong>
					<a target="_blank" href="/aboutus/brief.html">网站简介&nbsp;&nbsp;</a>|
					<a target="_blank" href="/aboutus/company.html">&nbsp;公司动态&nbsp;&nbsp;</a>|
					<!--<a href="/frontplan/mediaReport.html">&nbsp;媒体报道&nbsp;&nbsp;</a>|-->
					<a target="_blank" href="/aboutus/legalDeclaration.html">&nbsp;法律声明&nbsp;&nbsp;</a>|
					<a target="_blank" href="/aboutus/feedBack.html">&nbsp;意见反馈&nbsp;&nbsp;</a>|
					<a target="_blank" href="/aboutus/hr.html">&nbsp;诚聘英才&nbsp;&nbsp;</a>|
					<a target="_blank" href="/aboutus/contactUs.html">&nbsp;联系我们&nbsp;&nbsp;</a>|
					<a href="/aboutus/websiteMap.html">&nbsp;网站地图&nbsp;&nbsp;</a>
				</div>
				<div class="copyright">
					<strong
						style="font-size: 14px; height: 30px; line-height: 30px; float: left; width: 100px">&nbsp;&nbsp;版权所有：</strong>
					<div>
						<p>
							Copyright©2010 - 2015 京公网安备11010802017407 京ICP备11016615号-2
							<script type="text/javascript">
								var cnzz_protocol = (("https:" == document.location.protocol) ? " https://"
										: " http://");
								document
										.write(unescape("%3Cspan id='cnzz_stat_icon_1259516367'%3E%3C/span%3E%3Cscript src='"
												+ cnzz_protocol
												+ "s11.cnzz.com/z_stat.php%3Fid%3D1259516367%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));
							</script>
							<span id="cnzz_stat_icon_1259516367"><a
								href="http://www.cnzz.com/stat/website.php?web_id=1259516367"
								target="_blank" title="站长统计"><img border="0" hspace="0"
									vspace="0" src="http://icon.cnzz.com/img/pic.gif"></a></span>
							<script
								src=" http://s11.cnzz.com/z_stat.php?id=1259516367&amp;show=pic"
								type="text/javascript"></script>
							<script
								src="http://c.cnzz.com/core.php?web_id=1259516367&amp;show=pic&amp;t=z"
								charset="utf-8" type="text/javascript"></script>
						</p>
						<p>北京优品兴业信息科技有限公司版权所有</p>
					</div>
				</div>
				<div class="clear"></div>
				<div class="footer-img">
					<a href="#"><img src="images/01.png"
						width="124" height="47" alt=""></a> <a href="#"><img
						src="images/02.png" width="124"
						height="47" alt=""></a> <a href="#"><img
						src="images/03.png" width="124"
						height="47" alt=""></a> <a href="#"><img
						src="images/04.png" width="124"
						height="47" alt=""></a>
				</div>
			</div>
			<div class="footer-right">
				<div class="weixin-text">微信扫一扫，关注大学去哪儿!</div>
				<a href="#"><img
					src="images/weixin.png" width="154"
					height="154" alt=""></a>
			</div>
		</div>
		<div class="clear"></div>
	</div>
	<!--底部结束-->
	<!--在线客服-->
	<script type="text/javascript" charset="utf-8"
		src="http://lead.soperson.com/10039507/10061656.js"></script>
	<div id="doyoo_panel" class="doyoo_pan_icon"
		style="position: fixed; top: 150px; right: 5px; width: 30px; height: 485px;">
		<div class="doyoo_pan_icon_inner" id="looyu_dom_0"
			style="width: 0px; float: right; background-image: url(http://a.looyu.com/10002/13cfb128dad04416955325629e079508.jpg);">
			<a href="javascript:;" id="looyu_dom_1"
				style="display: block; width: 100%; height: 100%;">&nbsp;</a><a
				href="javascript:;" class="talk99_region"
				style="left: px; top: px; width: px; height: px; background-image: url(http://yun-static.soperson.com/131221/../default/images/s.gif)"
				onclick="window.open('http://wpa.qq.com/msgrd?V=1&amp;uin=83718214');return false;">&nbsp;</a>
		</div>
		<a href="javascript:;" class="talk99_collapse" id="looyu_dom_2"
			style="width: 30px; height: 102px; margin-top: 150px; float: right; background-image: url(http://a.looyu.com/10002/0929e4e48ec04c449400cf7c1e79810b.png)"
			collapsed="1">&nbsp;</a>
	</div>
	<div id="doyoo_monitor"
		style="width: 0px; height: 0px; position: fixed;">
		<div id="doyoo_mon_inner"
			style="position: relative; width: 100%; height: 100%; background-image: url(); -webkit-transform: translateZ(0px)">
			<div id="doyoo_mon_head" class="doyoo_mon_head"
				style="position: absolute; left: 0px; top: 0px; width: 0px; height: 0px; cursor: move;">在线客服</div>
			<a id="doyoo_mon_accept" href="javascript:;"
				style="position: absolute; margin-left: 5px; display: block; left: 0px; bottom: 0px; width: 0px; height: 0px; background: url() no-repeat"></a><a
				id="doyoo_mon_phone" href="javascript:;"
				style="position: absolute; margin: 0px; display: none; left: 0px; bottom: 0px; width: 0px; height: 0px; background: url(http://www.gkzy100.com/major/analysis/174.html) no-repeat;"></a>
			<div id="doyoo_mon_refuse" href="javascript:;"
				style="position: absolute; display: block; left: 0px; bottom: 0px; width: 0px; height: 0px; background: url() no-repeat; top: auto; right: auto; cursor: pointer"></div>
			<div id="doyoo_mon_main" class="doyoo_mon_main"
				style="position: absolute; left: 0px; top: 0px; width: 0px; height: 0px">尊敬的客户您好，欢迎光临本公司网站！我是今天的在线值班客服，点击“开始交谈”即可与我对话。</div>
		</div>
	</div>
	<div id="talk99_message"></div>
	<div id="doyoo_share">
		<iframe src="about:blank" id="shareWrapper"></iframe>
	</div>
	<link rel="stylesheet" type="text/css"
		href="http://yun-static.soperson.com/131221/oms.css?170217">
	<script type="text/javascript"
		src="http://yun-static.soperson.com/131221/oms.js?17021902"
		charset="utf-8"></script>



	<div class="modal2 alert-modal">
		<div class="alert-bg"></div>
		<div class="alert-con">
			<div class="alert-header">
				<button type="button">x</button>
			</div>
			<div class="alert-body">111</div>
			<div class="alert-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
	<div class="modal2 confirm-modal">
		<div class="alert-bg"></div>
		<div class="alert-con">
			<div class="alert-header">
				<button type="button">x</button>
			</div>
			<div class="alert-body">111</div>
			<div class="alert-footer">
				<button type="button" class="btn btn-default confirmmodal-btn1"
					data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-default confirmmodal-btn2"
					data-dismiss="modal"></button>
			</div>
		</div>
	</div>
	
</body>
</html>