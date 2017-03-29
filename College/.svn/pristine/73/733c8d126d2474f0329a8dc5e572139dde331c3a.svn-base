<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Lock</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../images/flashlight.ico" rel="shortcut icon">
<!-- Bootstrap -->
<link href="../css/bootstrap.css" rel="stylesheet">
<!-- Styles -->
<link href="../css/lock.css" rel="stylesheet">
<link href="../css/animate.css" rel="stylesheet">
<link href="../css/font-awesome.css" rel="stylesheet">

</head>
<body>
	<div class="logo" style="top: 40%; left: -2%">
		<h4>
			<a href="#"><img src="../images/logo.png" alt=""></a>
		</h4>
	</div>
	<div class="lock-holder">
		<div class="form-group pull-left input-username">
			<div class="input-group">
				<input type="text" class="form-control " readonly="readonly"
					value=${admin_name}> <span class="input-group-addon"><i
					class="fa fa-user"></i></span>
			</div>
		</div>

		<div class="form-group pull-right input-password">
			<div class="input-group">
				<input type="password"  class="form-control "  placeholder="请输入正确密码" value=${admin_pass
					} id="admin_pass"> <span class="input-group-addon"><i
					class="fa fa-key"></i></span>
			</div>
		</div>
	</div>

	<div class="submit">
		<button type="button" class="btn btn-success"
			onclick="checkadminPass()">
			<i class="fa fa-unlock"></i> ENTER
		</button>
	</div>
</body>
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/bootstrap-progressbar.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
          $('.btn-submit').click(function(e){
            $('.input-username,dot-left').addClass('animated fadeOutRight')
            $('.input-password,dot-right').addClass('animated fadeOutLeft')
            $('.btn-submit').addClass('animated fadeOutUp')
            setTimeout(function () {
                      $('.avatar').addClass('avatar-top');
                      //$('.submit').html('<i class="fa fa-spinner fa-spin text-white"></i>');
                      $('.submit').html('<div class="progress"><div class="progress-bar progress-bar-success" aria-valuetransitiongoal="100"></div></div>');
                      $('.progress .progress-bar').progressbar(); 
              },
          500);
            setTimeout(function () {
                  window.location.href = 'home.jsp'; 
              },
          1500);
          });
          
});
</script>
<script>
function checkadminPass(){
	
	if($('#admin_pass').val()!="${admin_pass}")
		$("#admin_pass").val(''); 
	else location.href="home.jsp";
}
</script>
</html>