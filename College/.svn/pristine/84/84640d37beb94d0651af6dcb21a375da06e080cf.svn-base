<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>霍兰德职业倾向测试完整版测试结果</title>
<!--[if IE 6]>
    <script type='text/javascript' src='/statics/js/plugins/dd.png.min.js'></script>
    <script type='text/javascript'>DD_belatedPNG.fix('div,img,li,a,span,label,p,h2,h3,em');</script>
    <![endif]-->
<link href="../css/test/style.min.css" rel="stylesheet" type="text/css">
<link href="../css/test/tooltip.min.css" rel="stylesheet" type="text/css">
<link href="../css/test/comment.min.css" rel="stylesheet" type="text/css">
<link href="../css/test/dialog.min.css" rel="stylesheet" type="text/css">
<link href="../css/test/scrolltext.min.css" rel="stylesheet" type="text/css">
<link href="../css/test/default.css" rel="stylesheet" type="text/css">
<link href="../css/test/page.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../css/test/jquery.jqChart.css" />
<link rel="stylesheet" type="text/css" href="../css/test/jquery.jqRangeSlider.css" />
<link rel="stylesheet" type="text/css" href="../css/test/jquery-ui-1.8.21.css" />
<script src="../js/jquery-1.5.1.min.js" type="text/javascript"></script>
<script src="../js/jquery.mousewheel.js" type="text/javascript"></script>
<script src="../js/jquery.jqChart.min.js" type="text/javascript"></script>
<script src="../js/jquery.jqRangeSlider.min.js" type="text/javascript"></script>
<!--[if IE]><script lang="javascript" type="text/javascript" src="../js/excanvas.js"></script><![endif]-->

<script lang="javascript" type="text/javascript">
	$(document)
			.ready(
					function() {
						var loc = location.href;
						var n1=loc.indexOf("c_result=");
						var n2 = loc.indexOf("&r_result=");
						var n3 = loc.indexOf("&i_result=");
						var n4 = loc.indexOf("&e_result=");
						var n5 = loc.indexOf("&s_result=");
						var n6 = loc.indexOf("&a_result=");
						var n7 = loc.length;
						var c_result = decodeURI(loc.substr(n1+9, n2-n1-9));
						var r_result = decodeURI(loc.substr(n2+10, n3-n2-10));
						var i_result = decodeURI(loc.substr(n3+10, n4-n3-10));
						var e_result = decodeURI(loc.substr(n4+10, n5-n4-10));
						var s_result = decodeURI(loc.substr(n5+10, n6-n5-10));
						var a_result = decodeURI(loc.substr(n6+10, n7-n6-10));
					//	alert(c_result+"  "+r_result+"  "+i_result+"  "+e_result+"  "+s_result+"  "+a_result);
						var background = {
							type : 'linearGradient',
							x0 : 0,
							y0 : 0,
							x1 : 0,
							y1 : 1,
							colorStops : [ {
								offset : 0,
								color : '#d2e6c9'
							}, {
								offset : 1,
								color : 'white'
							} ]
						};

						$('#jqChart')
								.jqChart(
										{
											title : {
												text : '霍兰德职业测试得分图'
											},
											border : {
												strokeStyle : '#6ba851'
											},
											background : background,
											axes : [
													{
														type : 'categoryAngle',
														categories : [ 'C',
																'R', 'I', 'E',
																'S', 'A' ]
													},
													{
														type : 'linearRadius',
														renderStyle : 'polygon',
														lineWidth : '5',
														minimum : 0,
														maximum : 100,
														interval : 20,

														majorTickMarks : {
															visible : true
														}
													} ],
											series : [
													{
														title : '得分结果',
														type : 'radarArea',
														data : [ c_result, r_result,
															i_result, e_result,
															s_result, a_result
															],
														fillStyle : 'rgba(65,140,240,0.75)'
													}, ]
										});
					});
</script>
</head>
<body>
	<form name="form1" method="post"
		action="payresult.aspx?sn=14052814224702w8kb6u" id="form1">
		<div>
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPDwUKLTcyMjAwMzM1MmRk">
		</div>

		<div class="container">
			<div class="wrapper">
				<div class="result-container">
					<div class="border-1-content">
						<div>
							<div class="pad-tb-10 l b f-16 c-black">您的测试报告：</div>
						</div>
						<hr>
						<p class="b c-black ">您的霍兰德代码：ARI（艺术型 A 60% + 现实型 R 40% + 研究型
							I 40%）</p>
						<div id="jqChart" style="width: 500px; height: 300px;"></div>
						<p>说明：</p>
						<p>
							1、您适合的类型范畴在接近六边形边角相对集中的区域。<br>2、如果图形是正六边形或接近正六边形，在霍兰德常模内属罕见情况，本报告及多边形图可能无效。
							<br>3、根据测试最高分数，得出相应的职业类型。
						</p>
	
					
	
						<hr>
						<div>
							<p>简介</p>
							<p>
								约翰.霍兰德于1959年提出了具有广泛社会影响的人业互择理论。这一理论首先根据劳动者的心理素质和择业倾向，将劳动者划分为6种基本类型，相应的职业也划分为6种类型：社会型（Social）、企业型（Enterprising）、现实型（Realistic）、常规型（Conventional）、研究型（Investigative）、艺术型（Artistic）。他认为，绝大多数人都可以被归于六种类型中的一种。
							</p>
							<p>
								<img src="http://www.findoout.com/statics/pics/Hollander/00.png"
									alt="">
							</p>
							<p>
								霍兰德还认为，每一种职业的工作环境也是由六种不同的工作条件所组成，其中有一种占主导地位。一个人的职业是否成功，是否稳定，是否顺心如意，在很大程度上取决于其个性类型和工作条件之间的适应情况。<br>霍兰德的职业选择理论，实质在于劳动者与职业的相互适应。霍兰德认为，同一类型的劳动和与职业互相结合，便是达到适应状态，结果，劳动者找到适宜的职业岗位，其才能与积极性会得以很好发挥。
							</p>
							<p>六种职业类型</p>
							<p>
								社会型：(S)<br>共同特征：喜欢与人交往、不断结交新的朋友、善言谈、愿意教导别人。关心社会问题、渴望发挥自己的社会作用。寻求广泛的人际关系，比较看重社会义务和社会道德。<br>典型职业：喜欢要求与人打交道的工作，能够不断结交新的朋友，从事提供信息、启迪、帮助、培训、开发或治疗等事务，并具备相应能力。如:
								教育工作者（教师、教育行政人员），社会工作者（咨询人员、公关人员）。
							</p>
							<p align="center">
								<img src="http://www.findoout.com/statics/pics/Hollander/01.png"
									alt="">
							</p>
							<p>
								企业型：(E)<br>共同特征：追求权力、权威和物质财富，具有领导才能。喜欢竞争、敢冒风险、有野心、抱负。为人务实，习惯以利益得失，权利、地位、金钱等来衡量做事的价值，做事有较强的目的性。
								<br>典型职业：喜欢要求具备经营、管理、劝服、监督和领导才能，以实现机构、政治、社会及经济目标的工作，并具备相应的能力。如项目经理、销售人员，营销管理人员、政府官员、企业领导、法官、律师。
							</p>
							<p align="center">
								<img src="http://www.findoout.com/statics/pics/Hollander/02.png"
									alt="">
							</p>
							<p>
								常规型：(C)<br>共同特点：尊重权威和规章制度，喜欢按计划办事，细心、有条理，习惯接受他人的指挥和领导，自己不谋求领导职务。喜欢关注实际和细节情况，通常较为谨慎和保守，缺乏创造性，不喜欢冒险和竞争，富有自我牺牲精神。<br>典型职业：喜欢要求注意细节、精确度、有系统有条理，具有记录、归档、据特定要求或程序组织数据和文字信息的职业，并具备相应能力。如：秘书、办公室人员、记事员、会计、行政助理、图书馆管理员、出纳员、打字员、投资分析员。
							</p>
							<p align="center">
								<img src="http://www.findoout.com/statics/pics/Hollander/03.png"
									alt="">
							</p>
							<p>
								现实型：(R)<br>共同特点：愿意使用工具从事操作性工作，动手能力强，做事手脚灵活，动作协调。偏好于具体任务，不善言辞，做事保守，较为谦虚。缺乏社交能力，通常喜欢独立做事。<br>典型职业：喜欢使用工具、机器，需要基本操作技能的工作。对要求具备机械方面才能、体力或从事与物件、机器、工具、运动器材、植物、动物相关的职业有兴趣，并具备相应能力。如：技术性职业（计算机硬件人员、摄影师、制图员、机械装配工），技能性职业（木匠、厨师、技工、修理工、农民、一般劳动）。
							</p>
							<p align="center">
								<img src="http://www.findoout.com/statics/pics/Hollander/04.png"
									alt="">
							</p>
							<p>
								研究型：(I)<br>共同特点：思想家而非实干家,抽象思维能力强，求知欲强，肯动脑，善思考，不愿动手。喜欢独立的和富有创造性的工作。知识渊博，有学识才能，不善于领导他人。考虑问题理性，做事喜欢精确，喜欢逻辑分析和推理，不断探讨未知的领域。<br>典型职业：喜欢智力的、抽象的、分析的、独立的定向任务，要求具备智力或分析才能，并将其用于观察、估测、衡量、形成理论、最终解决问题的工作，并具备相应的能力。如科学研究人员、教师、工程师、电脑编程人员、医生、系统分析员。
							</p>
							<p align="center">
								<img src="http://www.findoout.com/statics/pics/Hollander/05.png"
									alt="">
							</p>
							<p>
								艺术型：(A)<br>共同特点：有创造力，乐于创造新颖、与众不同的成果，渴望表现自己的个性，实现自身的价值。做事理想化，追求完美，不重实际。具有一定的艺术才能和个性。善于表达、怀旧、心态较为复杂。<br>典型职业：喜欢的工作要求具备艺术修养、创造力、表达能力和直觉，并将其用于语言、行为、声音、颜色和形式的审美、思索和感受，具备相应的能力。如艺术方面（演员、导演、艺术设计师、雕刻家、建筑师、摄影家、广告制作人），音乐方面（歌唱家、作曲家、乐队指挥），文学方面（小说家、诗人、剧作家）。不善于事务性工作。
							</p>
							<p align="center">
								<img src="http://www.findoout.com/statics/pics/Hollander/06.png"
									alt="">
							</p>
							<p>
								<br> <br>然而，大多数人都并非只有一种性向（比如，一个人的性向中很可能是同时包含着社会性向、实际性向和调研性向这三种）。霍兰德认为，这些性向越相似，相容性越强，则一个人在选择职业时所面临的内在冲突和犹豫就会越少。为了帮助描述这种情况，霍兰德建议将这六种性向分别放在一个正六三角形的每一角。<br>员工的工作满意度与流动倾向性,取决于个体的人格特点与职业环境的匹配程度.当人格和职业相匹配时,会产生最高的满意度和最低的流动率.例如,社会型的个体应该从事社会型的工作,社会型的工作对现实型的人则可能不合适.
							</p>
							<p>这一模型的关键</p>
							<p>
								1 个体之间在人格方面存在着本质差异;<br>2 个体具有不同的类型;<br>3
								当工作环境与人格类型协调一致时,会产生更高的工作满意度和更低的离职可能性.
							</p>
							<p>六种类型的内在关系</p>
							<p>
								<br>霍兰德所划分的六大类型，并非是并列的、有着明晰的边界的。他以六边形标示出六大类型的关系。 <br>
								<br>1 ）相邻关系，如 RI 、 IR 、 IA 、 AI 、 AS 、 SA 、 SE 、 ES 、 EC 、
								CE 、 RC 及 CR 。属于这种关系的两种类型的个体之间共同点较多，现实型 R 、研究型 I
								的人就都不太偏好人际交往，这两种职业环境中也都较少机会与人接触。 <br> <br>2 ）相隔关系，如 RA
								、 RE 、 IC 、 IS 、 AR 、 AE 、 SI 、 SC 、 EA 、 ER 、 CI 及 CS
								，属于这种关系的两种类型个体之间共同点较相邻关系少。 <br>3
								）相对关系，在六边形上处于对角位置的类型之间即为相对关系，如 RS 、 IE 、 AC 、 SR 、 EI 、及 CA
								即是，相对关系的人格类型共同点少，因此，一个共同人同时对处于相对关系的两种职业环境都兴趣很浓的情况较为少见。 <br>
								<br>人们通常倾向选择与自我兴趣类型匹配的职业环境，如具有现实型兴趣的人希望在现实型的职业环境中工作，可以最好地发挥个人的潜能。但职业选择中，个体并非一定要选择与自己兴趣完全对应的职业环境。一则因为个体本身常是多种兴趣类型的综合体，单一类型显著突出的情况不多，因此评价个体的兴趣类型时也时常以其在六大类型中得分居前三位的类型组合而成，组合时根据分数的高低依次排列字母，构成其兴趣组型，如
								RCA 、 AIS
								等；二则因为影响职业选择的因素是多方面的，不完全依据兴趣类型，还要参照社会的职业需求及获得职业的现实可能性。因此，职业选择时会不断妥协，寻求与相邻职业环境、甚至相隔职业环境，在这种环境中，个体需要逐渐适应工作环境。但如果个体寻找的是相对的职业环境，意味着所进入的是与自我兴趣完全不同的职业环境，则我们工作起来可能难以适应，或者难以做到工作时觉得很快乐，相反，甚至可能会每天工作得很痛苦。
							</p>
						</div>
						<hr>
					</div>
					<div class="border-1-bottom"></div>
				</div>
			</div>
		</div>
	</form>

</body>
</html>