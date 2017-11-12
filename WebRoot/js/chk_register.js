function bitTotal(num){
		modes=0;
		for (i=0;i<3;i++){
				if (num & 1) modes++;
				num>>>=1;
		}
		return modes;
	}

function CharMode(iN){
		if (iN>=65 && iN <=90) //大写字母
		return 2;
		if (iN>=97 && iN <=122) //小写
		return 4;
		else
		return 1; //数字
}
//计算出当前密码当中一共有多少种模式
function checkStrong(sPW){
		Modes=0;
		for (i=0;i<sPW.length;i++){
				//测试每一个字符的类别并统计一共有多少种模式.
				Modes|=CharMode(sPW.charCodeAt(i));
		}
		var btotal = bitTotal(Modes);
		if (sPW.length >= 10) btotal++;
		switch(btotal) {
				case 1:
						return "<table width='130' class='pswstrong'><tr><td bgcolor='#FE707E'><strong>弱</strong></td><td><span style='color:#666;'>中</span></td><td><span style='color:#666;'>强</span></td></tr></table>";
						break;
				case 2:
						return "<table width='130' class='pswstrong'><tr><td bgcolor='#FCFA93'><span style='color:#666;'>弱</span></td><td bgcolor='#FCFA93'><strong>中</strong></td><td><span style='color:#666;'>强</span></td></tr></table>";
						break;
				case 3:
						return "<table width='130' class='pswstrong'><tr><td bgcolor='#BDFEA6'><span style='color:#666;'>弱</span></td><td bgcolor='#BDFEA6'><span style='color:#666;'>中</span></td><td bgcolor='#BDFEA6'><strong>强</strong></td></tr></table>";
						break;
				default:
						return "<font color='#33CC00'>强</font>";
		}
}
function ShowStrong(obj,oMsg,status){
		var obj = oo(obj);
				if(status==1){
				obj.innerHTML = oMsg
		}else{
				obj.innerHTML = ""
		}
}

function oo(obj){
	return document.getElementById(obj)
}
function strLen(key){
	var l=escape(key),len
	len=l.length-(l.length-l.replace(/\%u/g,"u").length)*4
	l=l.replace(/\%u/g,"uu")
	len=len-(l.length-l.replace(/\%/g,"").length)*2
	return len
}
function tx_chk(obj)
{
	var name, key, val = obj.value, oShow=oo("chk_"+obj.name);
	name = obj.alt.slice(0,obj.alt.indexOf(":"));
	key = "/"+obj.alt.slice(obj.alt.indexOf(":")+1)+"/";
	oo("chk_"+obj.name).style.display = "none";
	
	if(key.indexOf("/无内容/")>-1&&val==""){
		name = (name=="password")?"密码":name;
		oShow.innerHTML="请输入"+name
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/4-16/")>-1&&(strLen(val)<4||strLen(val)>16)){
		oShow.innerHTML="长度必须4-16位"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/4-32/")>-1&&(strLen(val)<4||strLen(val)>32)){
		oShow.innerHTML="长度必须4-32位"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/6-16/")>-1&&(strLen(val)<6||strLen(val)>16)&&strLen(val)!=0){
		oShow.innerHTML="长度必须6-16位"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/8-16/")>-1&&(strLen(val)<8||strLen(val)>16)){
		oShow.innerHTML="长度必须8-16位"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/idcard/")>-1){
	    var id18 = new Object();
		var id15 = new Object();
	     id18= /^\d{6}((1[89])|(2\d))\d{2}((0\d)|(1[0-2]))((3[01])|([0-2]\d))\d{3}(\d|X|x)$/;
		 id15=/^\d{8}((0\d)|(1[0-2]))((3[01])|([0-2]\d))\d{3}$/;
		if (!id18.test(val) &&!id15.test( val))
		{
		oShow.innerHTML="请输入正确的身份证号码！"
		oShow.style.display=""
		return false
		}
	}
	if(key.indexOf("/怪字符/")>-1&&(/>|<|,|\[|\]|\{|\}|\?|\/|\+|=|\||\'|\\|\"|:|;|\~|\!|\@|\#|\*|\$|\%|\^|\&|\(|\)|`/i).test(val)){
		oShow.innerHTML=" 请勿使用特殊字符"
		oShow.style.display=""
		return false
	}	
	if(key.indexOf("/怪字符pwd/")>-1&&(/>|<|\+|,|\[|\]|\{|\}|\/|=|\||\'|\\|\"|:|;|\~|\!|\@|\#|\*|\$|\%|\^|\&|\(|\)|`/i).test(val)){
		oShow.innerHTML=" 请勿使用特殊字符"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/有空格/")>-1&&val.indexOf(" ")>-1){
		oShow.innerHTML=" 不能包含空格符"
		oShow.style.display=""
		return false
	}
	if( key.indexOf("/首尾不能是空格/")>-1&&val!="")
	{
		var pat_s = /^(\s)/;
		var pat_e = /(\s)$/;

		if ( pat_s.test(val) || pat_e.test( val))
		{
			oShow.innerHTML="首尾不能是空格"
			oShow.style.display=""
			return false
		}
	}
	if(key.indexOf("/全数字/")>-1&&val!=""){
		if ( /^[0-9]+$/.test(val)){
			oShow.innerHTML="不可以全是数字"
			oShow.style.display=""
			return false}
	}
	if(key.indexOf("/手机号码/")>-1){
		var pnum=/^(13[0-9]|15[0|3|6|7|8|9]|18[8|9])\d{8}$/;
		if(!pnum.test(val))
		{
           oShow.innerHTML="手机号码规则"	
		   oShow.style.display=""
		   return false	
 		}
	}
	if(key.indexOf("/固定电话/")>-1){
		var hnum=/^0(([1,2]\d)|([3-9]\d{2}))\d{8}$/;
		if(!hnum.test(val)&&val!="")
		{
           oShow.innerHTML="固定电话号码规则"	
		   oShow.style.display=""
		   return false	
 		}
	}
	if(key.indexOf("/QQ号码/")>-1){
		var qqnum=/^[1-9][0-9]{4,8}$/;
		if(!qqnum.test(val)&&val!="")
		{
           oShow.innerHTML="号码不规则"	
		   oShow.style.display=""
		   return false	
 		}
	}
	
	if(key.indexOf("/有大写/")>-1&&/[A-Z]/.test(val)){
		oShow.innerHTML="不能有大写字母"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/邮箱域/")>-1 && val != "" && !(/([0-9a-z]+(([0-9a-z]*)|([0-9a-z-]*[0-9a-z]))+\.)+[a-z]{2,4}$/i).test(val)){
		oShow.innerHTML=" 邮箱域有错误";
		oShow.style.display="";
		return false;
	}		
	if(key.indexOf("/英文数字/")>-1&&!/^[a-zA-Z0-9_]*$/.test(val)){
		oShow.innerHTML="只能为英文和数字"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/有全角/")>-1&&/[ａ-ｚＡ-Ｚ０-９！＠＃￥％＾＆＊（）＿＋｛｝［］｜：＂＇；．，／？＜＞｀～　]/.test(val))
	{
		oShow.innerHTML=" 不能有全角字符"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/有汉字/")>-1&&escape(val).indexOf("%u")>-1){
		oShow.innerHTML=" 不能有汉字"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/下划线/")>-1&&val.slice(val.length-1)=="_"){
		oShow.innerHTML="下划线不能在最后"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/确认密码/")>-1){
		if(obj.form[name].value!=val){
			oShow.innerHTML="确认密码不一致"
			oShow.style.display=""
			return false
		}
	}
	if(key.indexOf("/确认证件号码/")>-1){
		if(obj.form[name].value!=val){
			oShow.innerHTML="确认证件号码不一致"
			oShow.style.display=""
			return false
		}
	}
	if(key.indexOf("/必选/")>-1){
		var ol=obj.form[obj.name],isSel=false
		for(var i=0;i<ol.length;i++){
			if(ol[i].checked)
				isSel=true
		}
		if(!isSel){
			oShow.innerHTML=name+"必须选择"
			oShow.style.display=""
			return false
		}
	}
	if(key.indexOf("/条款/")>-1){
		var ol=obj.form[obj.name],isSel=false
		if(ol.checked){
			isSel=true
		}
		if(!isSel){
			oShow.innerHTML=name+"必须选择"
			oShow.style.display=""
			return false
		}
	}
	if ( name=="password" || name=="密码"){
		ShowStrong('pswstrong',checkStrong(val),1);
	}
	return true
}

function chk_init(){
	var fm,i,j
	for(i=0;i<document.forms.length;i++)
	{
		fm=document.forms[i]
		for(j=0;j<fm.length;j++)
		{//alert(fm[j].name + "|" + (fm[j].alt+"").indexOf(":"));
			if((fm[j].alt+"").indexOf(":")==-1)
				continue;
				
			oo("chk_"+fm[j].name).style.color="#FFCCCC";			
			
			fm[j].onblur = function(){this.style.background=(tx_chk(this)==true)?'#EEEEEE':'#FFCCCC'}
			fm[j].onfocus = function(){this.style.background='#CCFF99'}
		}
	}
	
}
function fm_chk(fm)
{   
	var isPass=true;
	for(var i=0;i<fm.length;i++)
	{
		if((fm[i].alt+"").indexOf(":")==-1)
			continue;
	   	if(!tx_chk(fm[i]))
		{
			isPass=false;
			fm[i].style.background='#FF0000';
		}
	}
	if(isPass)
	{
		fm.Submit.disabled = true;
  		fm.checkname.disabled = true;
		return true;
	}
	else
	{  
		alert("您填写的信息有误，请根据页面红字更改！");
		return false
	}
}
function checkname(){

var username=document.memberform.username.value;
window.location.href="register.jsp?username="+username;

}

