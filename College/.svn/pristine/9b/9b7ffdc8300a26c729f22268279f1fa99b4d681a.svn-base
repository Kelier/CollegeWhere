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
<title>志愿填报|专业库|选专业|专业设置|专业就业前景-大学去哪儿</title>
<meta name="keywords" content="选专业，专业查询，学科门类，大学专业设置，专业培养目标，专业就业前景">
<meta name="description"
	content="分析研究哲学、经济学、法学、教育学、文学、历史学、理学、工学、农学、医学、管理学、艺术学12个学科门类专业设置，及各大学专业培养目标、就业前景，帮助学生科学选专业、报志愿。">
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

@import url( css/professional.css?1487743253553 );
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
	<script>
		(function() {
			var bp = document.createElement('script');
			var curProtocol = window.location.protocol.split(':')[0];
			if (curProtocol === 'https') {
				bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
			} else {
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
				<a href="javascript:void(0)"><img src="images/position.png"
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
				<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
				<script src="js/menu.js" ="text="" javascript"=""></script>
				<script src="js/lrtk2.js" ="text="" javascript"=""></script>

				<script type="text/javascript">
					$(document)
							.ready(
									function() {

										$("a[name='index_img']")
												.click(
														function() {
															var root_url = window.document.location.href;
															var uri = 'http://localhost:8080/College/html/college/index.jsp';
															if (root_url
																	.indexOf("Z1") > 10) {
																uri = root_url
																		.substr(
																				0,
																				root_url
																						.indexOf("Z1") + 2);
															}
															//alert(uri);
															window.location.href = uri;
														});

									});
				</script>

				<div class="logo">
					<a name="index_img" href="javascript:;"><img
						src="images/logo.png" alt="大学去哪儿" title="大学去哪儿"></a>
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

	<script src="js/consult_page.js" type="text/javascript"></script>


	<script type="text/javascript">
		//var first="哲学";
		var first = "8";
		var temp = "48";
		var mName = "";

		$(document).ready(
				function() {

					$("#a2 ul li a").click(
							function() {
								//	var str2=$(this).html();
								var str2 = $(this).attr("value");
								//	first=$(this).html();
								first = $(this).attr("value");
								temp = "";
								$(this).addClass("current1").parent()
										.siblings().find("a").removeAttr(
												"class");
								// document.getElementById("scname").value="";
								mName = $("scname").val();
								$("#a3").show();

								$("#discipline").val(str2);

								$.ajax({
									type : 'post',
									url : "../../../showCategory",
									//  data : {cat:encodeURIComponent($("#discipline").val())},
									data : {
										cat : str2
									},
									cache : false,
									async : true,
									success : function(data) {
										$("#a3").html(data);
										document.getElementById("cha").click();
										
									},
									error : function() {
										alert("error");
									}

								});

							});

					$("#new li a").bind('click',function() {
						//temp=$(this).html();
						temp = $(this).attr("value");
						
						//alert(temp);
						//alert($(this).attr("value"));
						$(this).addClass("current1").parent()
								.siblings().find("a").removeAttr(
										"class");
						document.getElementById("cha").click();
					});
				});

		function your_query(t) {
			//t 是你的查询条件
			mName = $("#scname").val();
			t = {
				dis : first,
				cate : temp,
				absname : mName
			};
			
			return t;
		}

		function getele() {
			//需要替换的dom元素
			return "#major-list";
		}

		function getaction() {
			//ajax 请求的页面 
			// js会将下面这个页面返回的字符串原封不动替换到getele这个元素里
			return "../../../majorpage";
		}
	</script>


	<!-- <form id="formsearchmajor" accept-charset="UTF-8" action="/frontchoose/ctmajor.html" method="post">
 -->
	<input type="hidden" id="majorname" name="majorname" value="">
	<input type="hidden" id="academicdegree" name="academicdegree" value="">
	<input type="hidden" id="discipline" name="discipline" value="8">
	<input type="hidden" id="professioncategory" name="professioncategory"
		value="">
	<input type="hidden" id="pc" name="pc" value="">

	<div class="screen">
		<div class="site">
			当前位置： <a href="http://www.gkzy100.com">首页</a>&nbsp;&gt;&nbsp;<b>
				<b>志愿填报&nbsp;&gt;&nbsp;</b> <a href="/major.html">专业库</a>
			</b>
		</div>
		<div id="a0" class="screen-item1">
			<div class="screen-search">


				<input class="school" autocomplete="off" placeholder="请输入专业名称"
					name="scname" id="scname" type="text">
			</div>
		</div>

		<div id="a2" class="screen-item">
			<div class="screen-name">学科门类：</div>
			<ul class="screenList">
				<li><a href="javascript:void(0)" value="00">不限</a></li>
				<li><a href="javascript:void(0)" value="1">哲学</a></li>
				<li><a href="javascript:void(0)" value="2">经济学</a></li>
				<li><a href="javascript:void(0)" value="3">法学</a></li>
				<li><a href="javascript:void(0)" value="4">教育学</a></li>
				<li><a href="javascript:void(0)" value="5">文学</a></li>
				<li><a href="javascript:void(0)" value="6">历史学</a></li>
				<li><a href="javascript:void(0)" value="7">理学</a></li>
				<li><a href="javascript:void(0)" value="8" class="current1">工学</a></li>
				<li><a href="javascript:void(0)" value="9">农学</a></li>
				<li><a href="javascript:void(0)" value="10">医学</a></li>
				<li><a href="javascript:void(0)" value="11">管理学</a></li>
				<li><a href="javascript:void(0)" value="12">艺术学</a></li>


				<!-- <li><a href="" class="">哲学</a></li>
            <li><a href="">经济学</a></li>
            <li><a href="">法学</a></li>
            <li><a href="">教育学</a></li>
            <li><a href="">文学</a></li>
            <li><a href="">历史学</a></li>
            <li><a href="">理学</a></li>
            <li><a href="">工学</a></li>
            <li><a href="">农学</a></li>
            <li><a href="">医学</a></li>
            <li><a href="">管理学</a></li>
            <li><a href="">艺术学</a></li> -->

			</ul>
			<div class="clear"></div>
		</div>
		<div id="aa" class="screen-item">
			<div class="screen-name">专业类别：</div>
			<ul class="screenList">
				<div id="a3">
					<div id="new">
						<li><a href="javascript:void(0)" value="00" class="current1">不限</a></li>
						<li><a href="javascript:void(0)" value="42">力学类</a></li>
						<li><a href="javascript:void(0)" value="43">机械类</a></li>
						<li><a href="javascript:void(0)" value="44">仪器类</a></li>
						<li><a href="javascript:void(0)" value="45">材料类</a></li>
						<li><a href="javascript:void(0)" value="46">能源动力类</a></li>
						<li><a href="javascript:void(0)" value="47">电气类</a></li>
						<li><a href="javascript:void(0)" value="48">电子信息类</a></li>
						<li><a href="javascript:void(0)" value="49">自动化类</a></li>
						<li><a href="javascript:void(0)" value="50">计算机类</a></li>
						<li><a href="javascript:void(0)" value="51">土木类</a></li>
						<li><a href="javascript:void(0)" value="52">水利类</a></li>
						<li><a href="javascript:void(0)" value="53">测绘类</a></li>
						<li><a href="javascript:void(0)" value="54">化工与制药类</a></li>
						<li><a href="javascript:void(0)" value="55">地质类</a></li>
						<li><a href="javascript:void(0)" value="56">矿业类</a></li>
						<li><a href="javascript:void(0)" value="57">纺织类</a></li>
						<li><a href="javascript:void(0)" value="58">轻工类</a></li>
						<li><a href="javascript:void(0)" value="59">交通运输类</a></li>
						<li><a href="javascript:void(0)" value="60">海洋工程类</a></li>
						<li><a href="javascript:void(0)" value="61">航空航天类</a></li>
						<li><a href="javascript:void(0)" value="62">武器类</a></li>
						<li><a href="javascript:void(0)" value="63">核工程类</a></li>
						<li><a href="javascript:void(0)" value="64">农业工程类</a></li>
						<li><a href="javascript:void(0)" value="65">林业工程类</a></li>
						<li><a href="javascript:void(0)" value="66">环境科学与工程类</a></li>
						<li><a href="javascript:void(0)" value="67">生物医学工程类</a></li>
						<li><a href="javascript:void(0)" value="68">食品科学与工程类</a></li>
						<li><a href="javascript:void(0)" value="69">建筑类</a></li>
						<li><a href="javascript:void(0)" value="70">安全科学与工程类</a></li>
						<li><a href="javascript:void(0)" value="71">生物工程类</a></li>
						<li><a href="javascript:void(0)" value="72">公安技术类</a></li>

					</div>
				</div>
			</ul>
			<div class="clear"></div>
		</div>
		<br> <br>


		<div class="screen-inquiry">
			<div class="inquiry2" id="cha">
				<a href="javascript:void(0)">查&nbsp;&nbsp;询</a>
			</div>
		</div>

		<div id="major-list">
			<ul class="specialty-list">
				<li class="specialty-list-content">
					<div class="fl">
						<a href="/major/analysis/292.html"><b><span
								style="font-size: 14px;">大学专业：理论与应用力学</span></b></a>
					</div>
					<div class="list-txt-item">
						授予学位：<span style="font-size: 14px;">理学或工学学士</span>
					</div>
					<div class="list-txt-item">
						修学年限：<span style="font-size: 14px;">四年</span>
					</div>
					<div class="clear"></div>
					<div class="list-txt-mb">
						<div class="list-txt-mb1">
							专业培养目标：<span style="font-size: 14px;"></span>
						</div>
						<div class="list-txt-mb-content">本专业培养掌握力学的基本理论、基本知识和基本技能，能在力学及相关科学领域从事科研、教学、技术和管理工作的高级专门人才。</div>
					</div>

				</li>
				<li class="look"><a href="/major/analysis/292.html">查看详情</a></li>
				<div class="clear"></div>
			</ul>


			<div style="display: none;">@start17@end</div>
		</div>




		<!-- <input class="inquiry2" type="submit" value="查&nbsp;&nbsp;询"/>  -->
		<!-- 	<input type="button" class="inquiry2" value="查&nbsp;&nbsp;询" onclick="this.searchmajor()"></input>  -->

		<!-- </form> -->

		<div id="page">
			<div class="pagelist">
				<div class="page" style="display: block;">第1页/共17页</div>
				<span class="end" style="display: block;"><a>首&nbsp;&nbsp;页</a></span>
				<span class="end" style="display: block;"><a>上一页</a></span> <span
					class="current" style="display: block;"><a>1</a></span> <span
					class="num" style="display: block;"><a>2</a></span> <span
					class="num" style="display: block;"><a>3</a></span> <span
					class="end" style="display: block;"><a>下一页</a></span> <span
					class="end" style="display: block;"><a>尾页</a></span>
				<div class="go" style="display: block;">到</div>
				<input
					style="height: 32px; line-height: 32px; width: 60px; float: left; margin-right: 4px; border: 1px solid rgb(225, 225, 225); display: block;">
				<span class="end" style="display: block;"><a>确定</a></span>
			</div>
		</div>

	</div>

	<!--  <div class="clear"></div>   -->

	<div class="footer">
		<div class="footer-link-container">
			<strong
				style="font-size: 14px; height: 30px; line-height: 30px; float: left; width: 100px">&nbsp;&nbsp;友情链接：</strong>
			<div class="footer-link" style="a: hover #ec8400;">
				<!-- <a target="_blank"  href="http://www.xycareer.com/" title='向阳生涯规划' >向阳生涯规划</a>&nbsp;| -->
				<a target="_blank" href="http://zhiyeguihua.yjbys.com/ceshi/"
					title="职业测试">职业测试</a>&nbsp;| <a target="_blank"
					href="http://lizhi.yjbys.com/yulu/" title="励志语录">励志语录</a>&nbsp;| <a
					target="_blank" href="http://www.nanshikaoyan.com"
					title="南京师范大学研究生院">南京师范大学研究生院</a>&nbsp;| <a target="_blank"
					href="http://www.examw.com/sydw/" title="事业单位考试">事业单位考试 </a>&nbsp;|
				<a target="_blank" href="http://www.lixinedu.com.cn/acca/"
					title="ACCA考试">ACCA考试</a>&nbsp;| <a target="_blank"
					href="http://www.cacee.org.cn/" title="中国继续工程教育协会">中国继续工程教育协会</a>&nbsp;|
				<a target="_blank" href="http://www.xjrsjxjy.com/" title="新疆继续教育网">新疆继续教育网</a>&nbsp;|
				<a target="_blank" href="http://peixunsj.cn" title="教育培训网">教育培训网</a>&nbsp;|
				<a target="_blank" href="http://www.cnrencai.com/studyenglish/"
					title="外语学习">外语学习</a>&nbsp;|
			</div>
			<div class="clear"></div>
		</div>
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
						width="124" height="47" alt="海淀网络警察提醒您"></a> <a href="#"><img
						src="images/02.png" width="124"
						height="47" alt="安全联盟实名验证"></a> <a href="#"><img
						src="images/03.png" width="124"
						height="47" alt="不良信息举报中心"></a> <a href="#"><img
						src="images/04.png" width="124"
						height="47" alt="360绿色网站"></a>
				</div>
			</div>
			<div class="footer-right">
				<div class="weixin-text">微信扫一扫，关注大学去哪儿!</div>
				<a href="#"><img
					src="images/weixin.png" width="154"
					height="154" alt="二维码"></a>
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
				style="position: absolute; margin: 0px; display: none; left: 0px; bottom: 0px; width: 0px; height: 0px; background: url(http://www.gkzy100.com/major.html) no-repeat;"></a>
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