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

<style type="text/css">
@import url( css/base.css?1487743253553 );

@import url( css/common.css?1487743253553 );

@import url( css/index.css?1487743253553 );

@import url( css/list.css?1487743253553 );

@import url( css/lrtk.css?1487743253553 );

@import
	url( css/professional.css?1487743253553 );

.news_item{
	width:45%;height:160px;border-radius: 5px;border:2px solid #5FB878;display:inline-block;margin-left:10px;margin-top:10px;
}
.news_item:hover{
	background-color: rgba(95,184,120,0.5);
}
</style>
<script src="../layui/layui.js"></script>
<script src="../layui.all.js"></script>
<script src="../layer/layer.js"></script>
<script src="js/jquery-1.11.3.min.js"></script>
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
					<font style="color: #47ac48;">
						<center>
						<p>欢迎来到大学去哪儿！</p>
						</center>
					</font>


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

	<!--顶部导航开始-->
	<nav>
		<div class="nav-bg">
			<!--兼容不支持H5标签的浏览器-->
			<div class="nav-style">
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
			<a class="tab-default tab-hover-style float-left" href="javascript:void(0)">新闻</a>
		</div>
		
		<div class="tab-fixed1 font-size14 float-left"  style="width:80%;"></div>
		<div class="clear"></div>
		
		<div id="news_view" style="padding-top:20px;">
		<script id="news_model" type="text/html">
			{{#  layui.each(d.list, function(index, item){ }}
			<div class="news_item" onclick="gotoPaper('{{item.paper_url}}')">
				<img src="{{item.cover.url}}" height="130" style="width:36%;border-radius: 5px;float:left;margin-top:15px;margin-left:10px;"/>
				<div style="float:left;width:57%;margin-top:15px;margin-left:10px;height:130px;background:#ffffff;">
				<div style="font-size: 24px;width:100%;color:#000000;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;">{{item.paper_title}}</div>
				<div style="font-size: 18px;width:100%;margin-top:5px;height:75px;color:#333333;display:-webkit-box;overflow: hidden;text-overflow:ellipsis;word-wrap:break-word;white-space: normal!important;-webkit-line-clamp:3;-webkit-box-orient:vertical;">
				{{item.paper_snippet}}
				</div>
				<div>
				<span style="font-size: 14px;float:left;background:#5FB878;color:#ffffff;">-[{{item.tags}}]-</span>
				<span style="font-size: 14px;color:#999999;float:right;margin-right:10px;">{{item.paper_views}}</span>
				<span style="font-size: 14px;color:#999999;float:right;margin-right:20px;">阅读</span>
				</div>
				</div>
			</div>
			{{#  }); }}
		</script>
		</div>
		<script type="text/javascript">
$(function(){
	var loc = location.href;
	var n1 = loc.length;//地址的总长度
	var n2 = loc.indexOf("=");//取得=号的位置
	var param = decodeURI(loc.substr(n2+1, n1-n2));//从=号后面的内容
//	alert(param);
	$.ajax({
		type : "POST",
		url : "../../../GetData",
		cache : false,
		async : true,
		data : {
			"param" : 'new'+param
		},
		error : function(e) {
			console.log(e);
		},
		success : function(result) {
			//alert(result)
			layui.use('laytpl', function(laytpl) {
				var data = {
					"list" : JSON.parse(result).papers
				};
				var getTpl = news_model.innerHTML;
				laytpl(getTpl).render(data, function(html) {
					news_view.innerHTML = html;
				});
			});
		}
	});	
});
function gotoPaper(url){
	window.location.href=url;
}
</script>
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