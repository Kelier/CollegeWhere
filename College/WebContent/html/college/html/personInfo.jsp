<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../gkzyw/css/base.css">
<link rel="stylesheet" href="../../../css/bootstrap.css">

<style type="text/css">

#cropContainerHeader {
	width: 200px;
	height: 150px;
	position: relative; /* or fixed or absolute */
}

.upload {
	display: inline-block;
	border-radius:5%;
	width: 100px;
	height: 40px;
	background: #47AC48;
	position: relative;
	overflow: hidden;
}

.upload:hover {
	background: #458B74;
}

.fileinput {
	position: absolute;
	right: 0;
	top: 0;
	font-size: 100px;
	opacity: 0;
	filter: alpha(opacity = 0);
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
<body style="height: 100%;">
	<div id="top">
		<div class="top-style">
			<div class="top-slogan">报志愿，上大学去哪儿！</div>
			<div class="top-position">
				<a href="javascript:void(0)"><img
					src="../gkzyw/images/position.png" alt="position"></a>
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
				<img src="../gkzyw/images/phone.png" alt="phone" width="18"
					height="18">
				<div class="number">全国服务热线：400-070-8100</div>
			</div>
			<!-- <input type="text" placeholder="志愿填报" class="search float-left" style="font-size: 12px;" />
		<a href=""><img src="images/search.png" alt="search" style=" margin-top: 13px; position:relative; margin-left:-24px;"></a> -->
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
	<div class="screen"
		style="margin: 20px; height: 500px; background: #F8F8F8 ">
		<div class="startmenu" style="height: 250px;background:url(../images/home/wen1.png);overflow: hidden ">
			<div class="avatar" id="MyAvatar"
				style="width: 250px; height: 250px; margin-top: 20px; margin-left: 200px; float: left;">
				<img alt="用户头像" src="../images/home/default_avatar.jpeg"
					style="width: 200px; height: 200px; border-radius: 50%;" id="preview"  name="pic">
			</div>
			<div class="nickname"
				style="padding-top: 80px; margin-left: 20px; font-size: 30px;" id=nick_div>${sessionScope.uname}</div>
				<div hidden="hideen" id="uid_div">${sessionScope.uid}</div>
			<div class="editinfo"
				style="float: left; margin-top: 35px; margin-left: 20px;">
				<a  style="text-decoration: none" onclick="getEnable()"><img
					src="../images/home/editinfo.png"
					style="width: 20px; height: 20px; margin-top: -5px">修改资料</a>
			</div>
			<div class="uploadAva"  style="position:relative;margin-left:500px;float:left;width:50px">
			<form id= "uploadForm"  enctype="multipart/form-data" method="post"  action="../../../UpdateImage"> 
				<a class="upload"  style="text-align: center;text-decoration: none;color: #fff;padding-top:10px">上传 
				<input type="file"  class="fileinput"  id="file"  name="file">
				
				</a>

				</form>
			</div>
		</div>

		<div class="info-form"
			style="height: 350px; background: #F8F8F8 no-repeat;margin-top:30px">
			<form>
			<div style="display:inline-block;width:100%">
				<div class="form-group col-xs-4"
					style="float: left; margin-left:200px">
					<label for="examplePhone">手机号</label> <input type="text"
						class="form-control"  placeholder="Phone"  disabled="disabled" id="edit_phone">
				</div>
				<div class="form-group col-xs-4"
					style="float: right; margin-top:22px;margin-right:200px">
					<select class="form-control"   disabled="disabled" id="edit_sex">
						<option>男</option>
						<option>女</option>
					</select>
				</div>
				</div>
					<div style="display:inline-block;width:100%">
				<div class="form-group col-xs-4"
					style="float: left; margin: 0 auto; margin-left:200px">
					<label for="exampleInputPassword">密码</label> <input
						type="password" class="form-control"  
						placeholder="*************"  disabled="disabled" id="edit_pass">
				</div>
					<div class="form-group col-xs-4"
					style="float: right; margin: 0 auto; margin-right:200px;margin-top:22px">
					<select class="form-control"  disabled="disabled" id="edit_subject">
						<option>理科</option>
						<option>文科</option>
					</select>
				</div>
				
				</div>
					<div style="display:inline-block;width:100%">
			<div class="form-group col-xs-4"
					style="float: left; margin: 0 auto;margin-left:200px;margin-top:10px">
					<label for="exampleInputNickname">昵称</label> <input type="text"
						class="form-control"  disabled="disabled" id="edit_nick"
						placeholder="Nickname">
				</div>
				<div class="form-group col-xs-4"
					style="float: right; margin: 0 auto; margin-top: 32px;margin-right:200px">
					<select class="form-control" disabled="disabled" id="edit_province">
						<option value="北京">北京</option>
						<option value="天津">天津</option>
						<option value="上海">上海</option>
						<option value="重庆">重庆</option>
						<option value="江苏省">江苏省</option>
						<option value="广东省">广东省</option>
						<option value="浙江省">浙江省</option>
						<option value="福建省">福建省</option>
						<option value="湖南省">湖南省</option>
						<option value="湖北省">湖北省</option>
						<option value="山东省">山东省</option>
						<option value="辽宁省">辽宁省</option>
						<option value="吉林省">吉林省</option>
						<option value="云南省">云南省</option>
						<option value="四川省">四川省</option>
						<option value="安徽省">安徽省</option>
						<option value="江西省">江西省</option>
						<option value="黑龙江省">黑龙江省</option>
						<option value="河北省">河北省</option>
						<option value="陕西省">陕西省</option>
						<option value="海南省">海南省</option>
						<option value="河南省">河南省</option>
						<option value="山西省">山西省</option>
						<option value="内蒙古">内蒙古</option>
						<option value="广西">广西</option>
						<option value="贵州省">贵州省</option>
						<option value="宁夏">宁夏</option>
						<option value="青海省">青海省</option>
						<option value="新疆">新疆</option>
						<option value="西藏">西藏</option>
						<option value="甘肃省">甘肃省</option>
						<option value="台湾省">台湾省</option>
						<option value="香港">香港</option>
						<option value="澳门">澳门</option>
						<option value="国外">国外</option>
					</select>
				</div>
				</div>
					<div style="display:inline-block;width:100%">
				<div class="form-group col-xs-4"
					style="float: left; margin: 0 auto; margin-top: 20px;margin-left:200px">
					<label for="exampleInputScore">分数</label> <input type="number"
						class="form-control" disabled="disabled" id="edit_score"placeholder="Score">
				</div>

				<div class="form-group col-xs-4"
					style="float: right; margin: 0 auto; margin-top: 40px;margin-right:200px">
					<button type="button" class="btn btn-default"  onclick="savePerInfo()" id="saveinfo">保存资料</button>
					</div>
				</div>
			</form>
		</div>
	</div>

	
	<script type="text/javascript">
	$(document).ready(function(){
		var nickname=$('#nick_div').html();
		var uid=$('#uid_div').html();
	
		
 		$.ajax({
			method:"post",
			url:"../../../GetSingleInfo",
			data:{
				uid:uid
				},
			dataType:"json",
			success:function(data){
				var edit_gender=data[0].gender;
				var edit_subject=data[0].subject;
				switch (edit_gender) {
				case '0':
					edit_gender="男";
					break;
				case '1':
					edit_gender="女";
					break;
				default:
					break;
				}
				switch (edit_subject) {
				case '0':
					edit_subject="理科";
					break;
				case '1':
					edit_subject="文科";
					break;
				default:
					break;
				}
				
				$('#edit_phone').val(data[0].mobile);
				$('#edit_score').val(data[0].score);
				$('#edit_nick').val(data[0].nickname);
				$('#edit_sex').val(edit_gender);
				$('#edit_province').val(data[0].province);
				$('#edit_subject').val(edit_subject);
				
				$("#preview").attr("src", "../../../"+data[0].avatar);
			},
			error:function(data){
				alert(JSON.stringify(data));
			}
			
		}); 
	})
	
	
	$("#file").change(function() {
var $file = $(this);
var fileObj = $file[0];
var windowURL = window.URL || window.webkitURL;
var dataURL;
var $img = $("#preview");
 
if(fileObj && fileObj.files && fileObj.files[0]){
dataURL = windowURL.createObjectURL(fileObj.files[0]);
$img.attr('src',dataURL);
}else{
dataURL = $file.val();
var imgObj = document.getElementById("preview");
// 两个坑:
// 1、在设置filter属性时，元素必须已经存在在DOM树中，动态创建的Node，也需要在设置属性前加入到DOM中，先设置属性在加入，无效；
// 2、src属性需要像下面的方式添加，上面的两种方式添加，无效；
imgObj.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
imgObj.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = dataURL;
 
}
});
	
	
	
	
	function getEnable(){

		$("#edit_pass").removeAttr("disabled"); 
		$("#edit_nick").removeAttr("disabled"); 
		$("#edit_sex").removeAttr("disabled"); 
		$("#edit_subject").removeAttr("disabled"); 
		$("#edit_province").removeAttr("disabled"); 
		$("#edit_score").removeAttr("disabled"); 
	
	}
	
	function savePerInfo(){

		var uid=$('#uid_div').html();
		var edit_nick=$('#edit_nick').val();
		var edit_score=$('#edit_score').val();
		var edit_gender=$('#edit_sex').val();
		var edit_subject=$('#edit_subject').val();
		var edit_province=$('#edit_province').val();
		
		switch (edit_gender) {
		case '男':
			edit_gender="0";
			break;
		case '女':
			edit_gender="1";
			break;
		default:
			break;
		}
		switch (edit_subject) {
		case '理科':
			edit_subject="0";
			break;
		case '文科':
			edit_subject="1";
			break;
		default:
			break;
		}
		
		
		//alert(uid+","+edit_nick+","+edit_score+","+edit_gender+","+edit_subject+","+edit_province+","+edit_avatar);  
		$.ajax({
			method:"post",
			url:"../../../UpdateUser",

			data:{
				uid:uid,
				nickname:edit_nick,
				subject:edit_subject,
				gender:edit_gender,
				province:edit_province,
				score:edit_score
				},

			dataType:"json",
			success:function(data){
				$("#edit_pass").attr("disabled",true); 
				$("#edit_nick").attr("disabled",true); 
				$("#edit_sex").attr("disabled",true); 
				$("#edit_subject").attr("disabled",true); 
				$("#edit_province").attr("disabled",true); 
				$("#edit_score").attr("disabled",true); 
				
			},
			error:function(data){
				alert(JSON.stringify(data));
				console.log(JSON.stringify(data));
			}
			
		}); 
		
		
		if(document.getElementById('file').files[0].name.length>0){
		$("#uploadForm").submit();
		
		/*  $('#uploadForm').submit(function(event) {
			
		    event.preventDefault();
		    $.ajax({
			url:'../../../UpdateImage',
			success:function(result){
				alert(JSON.stringify(result));
			},
			error:function(result){
				alert(JSON.stringify(result));
			}
			
		}); 
		    return false;
		
	}); */
		}
		
	}
	
	</script>
</body>
</html>