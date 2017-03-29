<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/vue.js"></script>
<script type="text/javascript" >
$(function(){
	//alert($("#test").val());
	
	 $.ajax({
			url : "Login",
			type : "POST",
			dataType : "json",
			data : {
				uname : 'wan',
				upwd : "666666"
				
			},
			success : function(ret) {
				alert(JSON.stringify(ret));
				// var o=document.getElementbyId("form_action");
			},
			error:function(ret){
				alert('请求error');
			}
		});
	
})
  function change(state){
	 
	  
	  
	  /*o.submit();*/
  }
  

</script>
<div id="app">
  {{ message }}
</div>
<div id="app-2">
  <span v-bind:title="message">
    Hover your mouse over me for a few seconds to see my dynamically bound title!
  </span>
</div>
<div id="app-3">
  <p v-if="seen">Now you see me</p>
</div>
<div id="app-4">
  <ol>
    <li v-for="todo in todos">
      {{ todo.text }}
    </li>
  </ol>
</div>
<div id="app-5">
  <p>{{ message }}</p>
  <button v-on:click="reverseMessage">Reverse Message</button>
</div>
<div id="app-6">
  <p>{{ message }}</p>
  <input v-model="message">
</div>
<br/>
<br/>
<br/>
<hr/>
<a href="test">show</a>
<form action="login" id="form_action">
num1<input type="text" name="uname"/><br>
num2<input type="text" name="upwd"/><br>
<input type="submit" value="asdasd">   
<input type="button" value="+" id="test" onclick="change('plus')">   
<input type="button" value="-" onclick="change('minus')">  
<input type="button" value="*" onclick="change('mult')">   
<input type="button" value="/" onclick="change('divi')"> 
</form>

</body>
<script>
var app = new Vue({
	  el: '#app',
	  data: {
	    message: 'Hello Vue 万文杰!'
	  }
	})
var app2 = new Vue({
	  el: '#app-2',
	  data: {
	    message: 'You loaded this page on ' + new Date()
	  }
	})
var app3 = new Vue({
	  el: '#app-3',
	  data: {
	    seen: true
	  }
	})
var app4 = new Vue({
	  el: '#app-4',
	  data: {
	    todos: [
	      { text: 'Learn JavaScript' },
	      { text: 'Learn Vue' },
	      { text: 'Build something awesome' }
	    ]
	  }
	})
var app5 = new Vue({
	  el: '#app-5',
	  data: {
	    message: 'Hello Vue.js!'
	  },
	  methods: {
	    reverseMessage: function () {
	      this.message = this.message.split('').reverse().join('')
	    }
	  }
	}) 
var app6 = new Vue({
	  el: '#app-6',
	  data: {
	    message: 'Hello Vue!'
	  }
	})
</script>
</html>