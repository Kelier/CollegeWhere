<%@page import="org.apache.struts2.ServletActionContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/vue.js"></script>
</head>
<body>

 <div class="table-content" id="app">  <!--以下的循环数据，v-click调的函数下都是在tableApp里的数据,方法，因为vue的实例在id=app上  -->         
        <table id="table" class="table table-striped table-bordered table-hover">
            <thead>
                <tr><!--v-for="title in titles"就是循环tableApp里的data下的titles数据 有些数据不一定会要展示出来所以title.show==true 判断下-->
                    <th v-for="title in titles" v-if="title.show==true">{{title.name}}</th>
                    <th></th>
                </tr>
            </thead>
       
            <tr v-for="tr in tableTds">
                <td>{{tr.address}}</td>
                <td>{{tr.back_cover}}</td>
                <td>{{tr.college_type}}</td>
                <td>{{tr.half_year_employment_ratio}}</td>
                        
                <td class="text-center">
                    <a href="javascript:;" data-id="{{tr.ruleId}}"  @click="tdEdit($event)" title="编辑">
                    编辑
                    </a>
                    <a href="javascript:;" data-id="{{tr.ruleId}}" style="padding:1.5px 16px;position: relative;top:2px;" @click="delTd($event)" title="删除">
                    删除
                    </a>
                </td>
            </tr>
        </table>
     </div>
<input type="button" onclick="getBath()" value="getBath">
<hr>
<input type="button" onclick="getCollegeDetail()" value="get">
<input type="button" onclick="updateCollegeDetail()" value="update">
<hr>
<input type="button" onclick="queryCollege()" value="queryC">
<input type="button" onclick="addCollege()" value="addC">
<input type="button" onclick="deleteCollege()" value="deleteC">
<hr>
<input type="button"  onclick="findUser()" value="find">
<input type="button"  onclick="userLogin()" value="login">
<input type="button"  onclick="addUser()" value="register">
<input type="button"  onclick="updateUser()" value="updateUser">
<input type="button"  onclick="deleteUser()" value="deleteUser">
<input type="button" onclick="queryUser()" value="queryUser">

<script>
function getBath(){
	$.ajax({
		type:'post',
		url:'school.json',
		dataType:'json',
		success:function(data){
			alert(JSON.stringify(data));
			var line=JSON.stringify(data);
			$.ajax({
				type:'post',
				url:'../InsertData',
				data:{
					lines:line
					},
				dataType:'json',
				success:function(data){
					alert(JSON.stringify(data));
				
					
				},
				error:function(data){
					alert(JSON.stringify(data)+"连接失败");
				}
				
			}) ;
		},
		error:function(data){
			alert(JSON.stringify(data)+"连接失败");
		}
		
	}) ;
}


function findUser(){
	$.ajax({
		type:'get',
		url:'../FindUser',
		
		dataType:'json',
		success:function(data){
			alert(JSON.stringify(data));
		},
		error:function(data){
			alert(JSON.stringify(data)+"连接失败");
		}
		
	}) ;
}

function userLogin(){
	$.ajax({
		type:'get',
		url:'../UserLogin',
		data:{
			mobile:"110",
			password:"110"
		},
		dataType:'json',
		success:function(data){
			alert(JSON.stringify(data));
		},
		error:function(data){
			alert(JSON.stringify(data)+"连接失败");
		}
		
	}) ;
}
function addUser(){
	$.ajax({
		type:'get',
		url:'../AddUser',
		data:{
			uid:"2222",
			mobile:"120",
			password:"120"
		},
		dataType:'json',
		success:function(data){
			alert(JSON.stringify(data));
		},
		error:function(data){
			alert(JSON.stringify(data)+"连接失败");
		}
		
	}) ;
}
function updateUser(){
	$.ajax({
		type:'get',
		url:'../UpdateUser',
		data:{
			uid:"1111",
			nickname:'小白兔',
			subject:'理科',
			avatar:'rabbit',
			gender:'女',
			province:'成都',
			score:'520'
		},
		dataType:'json',
		success:function(data){
			alert(JSON.stringify(data));
		},
		error:function(data){
			alert(JSON.stringify(data)+"连接失败");
		}
		
	}) ;
}
function deleteUser(){
	$.ajax({
		type:'get',
		url:'../DeleteUser',
		data:{
			uid:"2222",
			
		},
		dataType:'json',
		success:function(data){
			alert(JSON.stringify(data));
		},
		error:function(data){
			alert(JSON.stringify(data)+"连接失败");
		}
		
	}) ;
}
function queryUser(){
	$.ajax({
		type:'get',
		url:'../QueryUser',
		data:{
			uid:"1111",
			
		},
		dataType:'json',
		success:function(data){
			alert(JSON.stringify(data));
		},
		error:function(data){
			alert(JSON.stringify(data)+"连接失败");
		}
		
	}) ;
}
</script>






<script type="text/javascript">
var tableTitleData=[
                    {name:"规则名",key:"address",show:true}, 
                    {name:"是否标记",key:"back_cover",show:true},
                    {name:"标记生效日期",key:"college_type",show:true},
                    {name:"标记失效日期",key:"half_year_employment_ratio",show:true},
            ];
            var tableTd=[
                    {
                    	address:1,
                    	back_cover:"发动机1",
                    	college_type:0,
                    	half_year_employment_ratio:"2050-12-31",
                    },
                    {
                    	address:2,
                    	back_cover:"发动机2",
                    	college_type:1,
                    	half_year_employment_ratio:"2016-07-08",
                    }
                ];
           
        
</script>
<script type="text/javascript">



function getCollegeDetail(){
 	$.ajax({
		type:'get',
		url:'../GetCollegeDetail',
		data:{
			cid:"1234"
		},
		dataType:'json',
		success:function(data){
			alert(JSON.stringify(data)+"连接成功");
			console.log(JSON.stringify(data));
			tableTd=data;
			var tableApp=new Vue({
                el:"#app",
                data:{
                    titles:tableTitleData,//表头
                    tableTds:tableTd,//表内容
                   
                }
            });
		},
		error:function(data){
			alert(JSON.stringify(data)+"连接失败");
		}
		
	}) ;

	/* $.ajax({
        url : "http://apizhiyuan.lexue.com/paper/list?type=rank",
        type : "post",
        dataType:"json",
        success : function(ret) {
            //外部参数函数方法
           alert(JSON.stringify(ret));
        },
        xhrFields:{withCredentials:true},
    error: function (msg) {
        alert(JSON.stringify(msg));
    }
    }); */
	
}

function updateCollegeDetail(){
	$.ajax({
		method:'post',
		url:'../UpdateCollegeDetail',
		dataType:'json',
		data:{
			cid:'1234',
			backcover:'德玛西亚',
			college_descrption:'many people are single dog',
			followed:'111',
			tags:'985,211'
		},
		success:function(data){
			alert(JSON.stringify(data));
		},
		error:function(data){
			alert(JSON.stringify(data)+"error");
		}
		
	});
	
}

function queryCollege(){
	$.ajax({
		method:'post',
		url:'../QueryCollege',
		dataType:'json',
		data:{
			province:'自定义',
			Subject:'自定义',
			Score:530,
			college_Province:'天津',
			tag:'985'
		},
		success:function(data){
			alert(JSON.stringify(data));
		},
		error:function(data){
			alert(JSON.stringify(data));
		}
	});
}

function addCollege(){
	$.ajax({
		method:'post',
		url:'../AddCollege',
		dataType:'json',
		data:{
		c_id:'6666',
		college_name:'清华大学',
		college_icon:'fire.jpg',
		pici:1,
		probility:'75%',
		expect_line:560,
		tags:'211',
		},
		success:function(data){
			alert(JSON.stringify(data));
		},
		error:function(data){
			alert(JSON.stringify(data));
		}
	});
	
}

function deleteCollege(){
	$.ajax({
		method:'post',
		url:'../DeleteCollege',
		dataType:'json',
		data:{
		c_id:'4444'
		},
		success:function(data){
			alert(data);
		},
		error:function(data){
			alert(JSON.stringify(data));
		}
	});
	
}

</script>
</body>
</html>