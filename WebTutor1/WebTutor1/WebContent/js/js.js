
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
		alert("����������");
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
	document.write("<td width=55% valign=bottom>���û����ƣ� ");
	document.write("<input name=yyid type=text id=yyid size=10 maxlength=9 onKeyPress='event.returnValue=IsDigit()';> &nbsp; ");
	document.write("���룺 <input name=password type=password id=password size=10 maxlength=16> ");
	document.write("</td>");
	document.write("<td width=10%><input name=denglu type=image src=150jjw_images/ind02.gif  onClick='return checklogon()';></td>");
	document.write("</form>");
	document.write("<td width=30%><a href=/reg.html class=A12><font color=red>ע��&nbsp;&nbsp;</font></a> <a href=/wangji.html class=A12>��������&nbsp;&nbsp;</a> <a href=/reg.html class=A12><font color=red>�ղر�վ</font></a>");
	document.write("</td></tr></table>");
	}
	else
	{
	document.write("��<font color=red>"+username+"</font>("+yyid+")|���:"+userid+"|");
	document.write(shenfen+"|<a href=/chongzhi.php class=A12><font color=red>��ֵ</font></a>|<a href=/my100.php class=A12><font color=red>�ҵİٷ�</font></a>|<a href=/userexit.php class=A12>�˳�</a></font>");
	}
}

function checklogin()
{
   if(checkspace(document.loginform.username.value)) {
	alert("��û����д�û����룡");
	document.loginform.username.focus();
	return false;
	}
  
   if(checkspace(document.loginform.password.value)) {
	alert("����������");
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
		if(confirm('���Ȱ�װ�ٷּҽ����٣٣�����������ϵ��')){window.location.href='http://yy.bfjjw.com/';}		
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
"������",
"����һ",
"���ڶ�",
"������",
"������",
"������",
"������");
theday = today.getYear()+"��" + [today.getMonth()+1]+"��" +today.getDate() +" "+ d[today.getDay()+1];
intHours = today.getHours();
intMinutes = today.getMinutes();
intSeconds = today.getSeconds();
if (intHours == 0) {
hours = "00:";
xfile = "��ҹ";
} else if (intHours < 12) {
hours = intHours+":";
xfile = "����";
} else if (intHours == 12) {
hours = "12:";
xfile = "����";
} else {
intHours = intHours
hours = intHours + ":";
xfile = "����";
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

