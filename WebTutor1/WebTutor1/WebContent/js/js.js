
function IsDigit()
{
	if(event.keyCode==65296){event.keyCode=48}
	if(event.keyCode==65297){event.keyCode=49}
	if(event.keyCode==65298){event.keyCode=50}
	if(event.keyCode==65299){event.keyCode=51}
	if(event.keyCode==65300){event.keyCode=52}
	if(event.keyCode==65301){event.keyCode=53}
	if(event.keyCode==65302){event.keyCode=54}
	if(event.keyCode==65303){event.keyCode=55}
	if(event.keyCode==65304){event.keyCode=56}
	if(event.keyCode==65305){event.keyCode=57}
	if((event.keyCode < 48) && (event.keyCode!=13)  || (event.keyCode > 57))
	{
		alert("请输入数字");
		return false;
	}
}

function getCookie(name)
{
   var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
    if(arr !=null) return unescape(arr[2]); return null;
}

function writeLogin()
{
	var userid=getCookie("userid");
	var yyid=getCookie("yyid");
	var username=getCookie("usernamejava");
	var shenfen=getCookie("shenfenjava");
	if (userid=="" || userid==null)
	{
	document.write("<table width=100% height=33 border=0 cellpadding=0 cellspacing=0>");
	document.write("<tr valign=bottom>");
	document.write("<form action=/checklogin.php method=post name=logon id=logon>");
	document.write("<td width=55% valign=bottom>　用户名称： ");
	document.write("<input name=yyid type=text id=yyid size=10 maxlength=9 onKeyPress='event.returnValue=IsDigit()';> &nbsp; ");
	document.write("密码： <input name=password type=password id=password size=10 maxlength=16> ");
	document.write("</td>");
	document.write("<td width=10%><input name=denglu type=image src=150jjw_images/ind02.gif  onClick='return checklogon()';></td>");
	document.write("</form>");
	document.write("<td width=30%><a href=/reg.html class=A12><font color=red>注册&nbsp;&nbsp;</font></a> <a href=/wangji.html class=A12>忘记密码&nbsp;&nbsp;</a> <a href=/reg.html class=A12><font color=red>收藏本站</font></a>");
	document.write("</td></tr></table>");
	}
	else
	{
	document.write("　<font color=red>"+username+"</font>("+yyid+")|编号:"+userid+"|");
	document.write(shenfen+"|<a href=/chongzhi.php class=A12><font color=red>充值</font></a>|<a href=/my100.php class=A12><font color=red>我的百分</font></a>|<a href=/userexit.php class=A12>退出</a></font>");
	}
}

function checklogin()
{
   if(checkspace(document.loginform.username.value)) {
	alert("您没有填写用户号码！");
	document.loginform.username.focus();
	return false;
	}
  
   if(checkspace(document.loginform.password.value)) {
	alert("请输入密码");
	document.loginform.password.focus();
	return false;
	}
}

function checkspace(checkstr)
{
  var str = '';
  for(i = 0; i < checkstr.length; i++){
    str = str + ' ';
  }
  return (str == checkstr);
}

function openyy(userid)
{
	var YYInstalled = false;
	try {
		if (!YYInstalled) {
			var obj = new ActiveXObject("ICCARD.ICCardCtrl.1");
			if (obj) {
				YYInstalled = true;
				delete obj;
			}
		}
	}catch(e){
	}
	if (YYInstalled==true)
		window.location.href='yy:userid='+userid;
	else
		if(confirm('请先安装百分家教网ＹＹ！才能与其联系！')){window.location.href='http://yy.bfjjw.com/';}		
}

function openqq(qq)
{
	var myurl=document.location.host;
	document.write("<a href=http://wpa.qq.com/msgrd?V=1&Uin="+qq+"&Site="+myurl+"&Menu=yes target=_blank><img src=http://wpa.qq.com/pa?p=1:"+qq+":10 border=0 align=absbottom></a>");
}

function touxiangshow(id,liulanpath,userid)
{
	var str="";
	if (userid!="" && userid!=null)
	{
		str+="<img src='/touxiang/small/"+liulanpath+"' style='padding:0;position:absolute;top:0;left:0;width:120;height:90;z-index:102;'>";
		str+="<a href=/teacher/"+userid+".html target=_blank><img border=0 src='/touxiang/other/blank.gif' style='padding:0;position:absolute;top:0;left:0;width:120;height:90;z-index:103;'></a>";
	}
	else
	{
		str+="<img src='/images/useruptouxiangwu.gif' style='padding:0;position:absolute;top:0;left:0;width:120;height:90;z-index:102;'>";
	}
	eval("user"+id+".innerHTML=str");
}

function tick() {
var hours, minutes, seconds, xfile;
var intHours, intMinutes, intSeconds;
var today, theday;
today = new Date();
function initArray(){
this.length=initArray.arguments.length
for(var i=0;i<this.length;i++)
this[i+1]=initArray.arguments[i] }
var d=new initArray(
"星期日",
"星期一",
"星期二",
"星期三",
"星期四",
"星期五",
"星期六");
theday = today.getYear()+"年" + [today.getMonth()+1]+"月" +today.getDate() +" "+ d[today.getDay()+1];
intHours = today.getHours();
intMinutes = today.getMinutes();
intSeconds = today.getSeconds();
if (intHours == 0) {
hours = "00:";
xfile = "午夜";
} else if (intHours < 12) {
hours = intHours+":";
xfile = "上午";
} else if (intHours == 12) {
hours = "12:";
xfile = "正午";
} else {
intHours = intHours
hours = intHours + ":";
xfile = "下午";
}
if (intMinutes < 10) {
minutes = "0"+intMinutes+":";
} else {
minutes = intMinutes+":";
}
if (intSeconds < 10) {
seconds = "0"+intSeconds+" ";
} else {
seconds = intSeconds+" ";
}
timeString = theday+" "+xfile+" "+hours+minutes+seconds;
Clock.innerHTML = timeString;
window.setTimeout("tick();", 100);
}

function MM_goToURL() { 

 var i, args=MM_goToURL.arguments; document.MM_returnValue = false;

 for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");

}

