<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>College</title>
<link href="../images/flashlight.ico" rel="shortcut icon">
<link rel="stylesheet" type="text/css" href="../css/semantic.min.css">

<!--自定义样式-->
<link rel="stylesheet" type="text/css" href="../css/home.css">



<script src="../js/jquery.min.js"></script>
<script src="../js/semantic.min.js"></script>
<script src="../js/vue.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>

<!--   <script>
  $(document)
    .ready(function() {
      // fix menu when passed
      $('.masthead')
        .visibility({
          once: false,
          onBottomPassed: function() {
            $('.fixed.menu').transition('fade in');
          },
          onBottomPassedReverse: function() {
            $('.fixed.menu').transition('fade out');
          }
        })
      ;
      // create sidebar and attach to menu open
      $('.ui.sidebar')
        .sidebar('attach events', '.toc.item')
      ;
    })
  ;
  </script> -->
</head>
<body style="overflow-y: hidden;">
	<!-- Page Contents -->
	<div class="pusher" style="width:100%;height:100%;">
		<div class="ui inverted vertical masthead center aligned segment" style="background:#23BAB5;width:100%;height:100%;">
			<div class="ui container">
				<div class="ui large secondary inverted pointing menu" style="border-color:rgba(34,36,38,0)">
					<a class="toc item"> <i class="sidebar icon"></i>
					</a> <a class="active item">Home</a>

				</div>
			</div>
			
			<div class="ui text container" style="padding-top: 10px">
				<h1 class="ui inverted header">College-Where</h1>
				<h2>去一所你想要的大学</h2>
				<!-- <img src="../images/home_fire.gif" id="home_fire"
					onclick="fire_input()" style="outline: none; border-radius: 50%"> -->
				<div class="ui inverted segment" id="form_login"
					style="display: none">
					<form class="ui form inverted" style="color:#000">
						<div class="two fields">
							<div class="field">
								<label>Username</label> <input placeholder="用户名" type="text"
									id="login_uname" name="username">
							</div>
							<div class="field">
								<label>Password</label> <input placeholder="密码" type="password"
									id="login_pwd" name="password">
							</div>
						</div>
						<div class="ui text container" style="margin-top:30px;;width:30%;height:200px;;background:url(../images/college_login.jpg);background-size:100% 100%;background-repeat:no-repeat;">
						<div class="ui inverted submit button home_add" id="login_go" style="top:40%;">
							<div style="margin: 16px;">Go</div>
						</div>
						</div>
						
						<div class="ui error message"
							style="margin-top: -30px; background-color: transparent;color:#fff;"></div>
					</form>
				</div>
			</div>
			
		</div>

	</div>



	<!--相关js逻辑-->
	<script type="text/javascript">


  function fire_input(){
    
    $("#home_fire").hide();


  }

</script>
	<!--表单核验-->
	<script type="text/javascript">
$(document).ready(function(){
    $("#form_login").fadeIn(1000);
  	// some arbitrary business-logic
	  window.user = {
	    exist :3,
	    passmatch:3
	  };
	 // custom form validation rule
	  
		  $('.ui.form').form({
			    fields:{
			      username:{
			        identifier:'username',
			        rules:[{
			          type:'empty',
			          prompt:'请输入你的用户名'
			        }

			]
			      },
			      password: {
			        identifier: 'password',
			        rules: [
			          {
			            type   : 'empty',
			            prompt : '请输入你的密码'
			          },
			          {
			            type   : 'minLength[6]',
			            prompt : '密码不能少于6个字符'
			          }
			         // ,
			       //   {
			         //     type   : 'passmatch[2]',
			          //    prompt : '密码不匹配'
			        //    }
			        ]
			      }
			    }
			  }
			        );
 $('.ui.form').submit(function(e){
	 e.preventDefault();
        submitForm();
        
    });
 function submitForm(){
        /*jquery ajax方式*/
        
        
        var formData = $('.ui.form input').serializeArray(); //or .serialize();
        $.ajax({
            type: 'POST',
            url: '../adminlogin',
            data: formData,
            dataType:'JSON',
            success:function(data){

              if(data=="success")
            	  self.location='home.jsp'
  
            	
            	
            	  else if(data="errorpass"){
            		 // alert(data);
            	  window.user.passmatch=1;
            	  $.fn.form.settings.rules.passmatch = function(value, passmatch) {
      			    return (window.user.passmatch>= passmatch)
      			  };
      			
            	  $('.ui.form')
            	  .form({
            	    fields: {
            	      password: {
            	        identifier: 'password',
            	        rules: [
            	          {
            	            type: 'passmatch[2]',
            	            prompt:'密码不匹配'
            	          }
            	        ]
            	      }
            	    }
            	  })
            	;
            	  //$('#login_pwd').val('');
              }
            	
            	  
            },
            error:function(XMLHttpRequest, textStatus, errorThrown){
            alert('e');
            }
        });

        /*简单vue+axios测试(这里不用到绑定)*/
        // var formdata=$('.ui.form input').serializeArray()
        // var user=JSON.stringify(formdata[0]);
        // var pass=JSON.stringify(formdata[1]);
        // var data={uname:user,upass:pass}; //or .serialize();
        // var vm=new Vue({
        //   data:data

        //   });
        // alert(vm.uname+vm.upass);
        // axios.post('/action', {
        // username: vm.uname,
        // password: vm.upass
        // })
        // .then(function (response) {
        // alert('r');
        // })
        // .catch(function (response) {
        // alert('e');
        // });
}
        

});
</script>
</body>
</html>