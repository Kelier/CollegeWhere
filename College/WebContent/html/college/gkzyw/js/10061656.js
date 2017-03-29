




















if(typeof doyoo=='undefined' || !doyoo){
var d_genId=function(){
    var id ='',ids='0123456789abcdef';
    for(var i=0;i<34;i++){ id+=ids.charAt(Math.floor(Math.random()*16));  }  return id;
};
var doyoo={
env:{
secure:false,
mon:'http://m7827.talk99.cn/monitor',
chat:'http://chat7811.talk99.cn/chat',
file:'http://yun-static.soperson.com/131221',
compId:10039507,
confId:10061656,
vId:d_genId(),
lang:'',
fixFlash:0,
subComp:0,
_mark:'dd5c69ce861e8729077b0783d42e6399f43b295b35c160deea6d9ec7cc5236b7bdb1daa9c56e158f'
}

, monParam:{
index:-1,
preferConfig:0,

style:{mbg:'',mh:0,mw:0,
elepos:'0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0',
mbabg:'',
mbdbg:'',
mbpbg:''},

title:'\u5728\u7ebf\u5ba2\u670d',
text:'\u5c0a\u656c\u7684\u5ba2\u6237\u60a8\u597d\uff0c\u6b22\u8fce\u5149\u4e34\u672c\u516c\u53f8\u7f51\u7ad9\uff01\u6211\u662f\u4eca\u5929\u7684\u5728\u7ebf\u503c\u73ed\u5ba2\u670d\uff0c\u70b9\u51fb\u201c\u5f00\u59cb\u4ea4\u8c08\u201d\u5373\u53ef\u4e0e\u6211\u5bf9\u8bdd\u3002',
auto:-1,
group:'10062806',
start:'00:00',
end:'24:00',
mask:false,
status:false,
fx:0,
mini:1,
pos:0,
offShow:0,
loop:0,
autoHide:0,
hidePanel:0,
miniStyle:'#0680b2',
miniWidth:'340',
miniHeight:'490',
showPhone:0,
monHideStatus:[0,0,0],
monShowOnly:'',
autoDirectChat:-1,
allowMobileDirect:0,
minBallon:1
}


, panelParam:{
category:'icon',
preferConfig:0,
position:1,
vertical:150,
horizon:5


,mode:1,
target:'10062806',
online:'http://a.looyu.com/10002/13cfb128dad04416955325629e079508.jpg',
offline:'http://a.looyu.com/10002/13cfb128dad04416955325629e079508.jpg',
width:150,
height:485,
status:0,
closable:0,
regions:[{type:"0",l:"",t:"",w:"",h:"",bk:"",v:"83718214"}],
collapse:1

,collapsed:1
,collapseIcon:'http://a.looyu.com/10002/37455d74833348988f45879ea60212de.png'
,expandIcon:'http://a.looyu.com/10002/0929e4e48ec04c449400cf7c1e79810b.png'
,collapseW:30
,collapseH:102
,collapseT:150



}



};

if(typeof talk99Init == 'function'){
    talk99Init(doyoo);
}
if(!document.getElementById('doyoo_panel')){
var supportJquery=typeof jQuery!='undefined';
var doyooWrite=function(html){
	document.writeln(html);
}

doyooWrite('<div id="doyoo_panel"></div>');


doyooWrite('<div id="doyoo_monitor"></div>');


doyooWrite('<div id="talk99_message"></div>')

doyooWrite('<div id="doyoo_share" style="display:none;"></div>');
doyooWrite('<lin'+'k rel="stylesheet" type="text/css" href="http://yun-static.soperson.com/131221/oms.css?170217"></li'+'nk>');
doyooWrite('<scr'+'ipt type="text/javascript" src="http://yun-static.soperson.com/131221/oms.js?17021902" charset="utf-8"></scr'+'ipt>');
}
}
