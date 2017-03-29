var action ="www.baidu.com";
var method="post";
var nowpage = 1;
var totalpage = 20;
var totalpageele;
var indexpage;
var prepage;
var page1;
var page2;
var page3;
var nextpage;
var lastpage;
var pageinput;
var pagesub;
var dao;
var txt;
$(document).ready(function () {
	
	action = getaction();
    totalpageele = $(".pagelist .page");
    indexpage = $(".pagelist span a ").eq(0);
    prepage = $(".pagelist span a ").eq(1);
    page1 = $(".pagelist span a ").eq(2);
    page2 = $(".pagelist span a ").eq(3);
    page3 = $(".pagelist span a ").eq(4);
    nextpage = $(".pagelist span a ").eq(5);
    lastpage =$(".pagelist span a ").eq(6);
    pageinput = $(".pagelist input");
    pagesub = $(".pagelist span a ").eq(7);
    dao = $(".pagelist div").eq(1);
    indexpage.parent().hide();
    prepage.parent().hide();
    page1.parent().hide();
    page2.parent().hide();
    page3.parent().hide();
    nextpage.parent().hide();
    lastpage.parent().hide();
    dao.hide();
    pageinput.hide();
    pagesub.parent().hide();
    totalpageele.hide();
    nowpage=1;
    txt = your_query(txt);
    doquery();
    indexpage.click(function () {
        nowpage = 1;
        doquery();
    })
    prepage.click(function () {
        if(nowpage > 1){
            nowpage--;
        }
        doquery();

    })
    page1.click(function () {
        if(nowpage>1&&nowpage!=totalpage){
            nowpage--;
        }else if(nowpage>1 &&nowpage==totalpage){
            if(totalpage==2){
                nowpage -=1;
            }else {
                nowpage -= 2;
            }
        }else {
            nowpage =1;
        }
        doquery();

    })
    page2.click(function () {
        if(nowpage>1&&nowpage!=totalpage){
            nowpage = nowpage;
        }else if(nowpage>1 &&nowpage==totalpage){
            nowpage--;
        }else {
            nowpage++;
        }
        doquery();

    })
    page3.click(function () {
        if(nowpage>1&&nowpage!=totalpage){
            nowpage++;
        }else if(nowpage>1 &&nowpage==totalpage){
            nowpage =nowpage;
        }else {
            nowpage +=2;
        }
        doquery();

    })
    nextpage.click(function () {
        if(nowpage<totalpage){
            nowpage++;
        }
        doquery();

    })
    lastpage.click(function () {
        nowpage = totalpage;
        doquery();

    })
    indexpage.click(function () {
        nowpage = 1;
        doquery();
    })

    pagesub.click(function () {
        var input = pageinput.val();
        if(input){
            nowpage=input;
        }
        doquery();
    })
    $(".inquiry2").click(function (e) {
    	nowpage=1;
    	txt = your_query(txt);
        doquery();
    })
});

function select (ele,str){
    var txt = $(ele).text();
    if(!str) str = new Object();
    if($(ele).hasClass("current1")){
        $(ele).removeClass("current1");
        str[txt]=null;
    }else{
        $(ele).addClass("current1");
        str[txt] = txt;
    }
    return str;
};

function doquery(){
	

    txt.page=nowpage;
    $('#page').prev().html('<div class="loading"></div>')
   
    $.ajax({
        url:action,
        type:'post',    
        data:txt,
        cache: false,
        async: true,
        success: function (data) {
            indexpage.parent().hide();
            prepage.parent().hide();
            page1.parent().hide();
            page2.parent().hide();
            page3.parent().hide();
            nextpage.parent().hide();
            lastpage.parent().hide();
            dao.hide();
            pageinput.hide();
            pagesub.parent().hide();
            totalpageele.hide();
            re = data;
            ele = getele();
            $(ele).html(data);
            totalpage = cutstr(data,'@start','@end');
            totalpageele.text("µÚ"+nowpage+"Ò³/¹²"+totalpage+"Ò³");
            if(totalpage==0){

            }
            else if(totalpage==1){
                //page1.parent().show()
            }
            else if(totalpage==2){
                totalpageele.show();

                page1.parent().show()
                page2.parent().show()
                indexpage.parent().show()
                prepage.parent().show()
                nextpage.parent().show()
                lastpage.parent().show()
                dao.show()
                pageinput.show()
                pagesub.parent().show()
            }else {
                totalpageele.show();

                indexpage.parent().show()
                prepage.parent().show()
                page1.parent().show()
                page2.parent().show()
                page3.parent().show()
                nextpage.parent().show()
                lastpage.parent().show()
                dao.show()
                pageinput.show()
                pagesub.parent().show()
            }
            if(nowpage==1){
                page1.text(1)
                page1.parent().attr("class","current")
                page2.parent().attr("class","num")
                page3.parent().attr("class","num")
                page2.text(2)
                page3.text(3)
            }else if(nowpage==totalpage &&totalpage!=2){
                page1.text(totalpage-2)
                page1.parent().attr("class","num")
                page2.parent().attr("class","num")
                page3.parent().attr("class","current")
                page2.text(totalpage-1)
                page3.text(totalpage)
            }else if(nowpage==totalpage &&totalpage==2){
                page1.text(totalpage-1)
                page1.parent().attr("class","num")
                page2.parent().attr("class","current")
                page2.text(totalpage)
            }else {
                page1.text(nowpage-1)
                page1.parent().attr("class","num")
                page2.parent().attr("class","current")
                page3.parent().attr("class","num")
                page2.text(nowpage)
                page3.text(parseInt(nowpage)+1)
            }
          // callback();
        },
        error:function(){
        	alert("the data is loading ...");
        }
    });
}
Object.size = function(obj) {
    var size = 0, key;
    for (key in obj) {
        if (obj.hasOwnProperty(key)) size++;
    }
    return size;
};
function cutstr(text,start,end){

	var s = text.indexOf(start)

	if(s>-1){

	var text2 = text.substr(s+start.length);

	var s2 = text2.indexOf(end);

	if(s2>-1){

	result = text2.substr(0,s2);

	}else result = '';

	}else result = '';

	return result;

	}