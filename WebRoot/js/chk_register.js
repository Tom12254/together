function bitTotal(num){
		modes=0;
		for (i=0;i<3;i++){
				if (num & 1) modes++;
				num>>>=1;
		}
		return modes;
	}

function CharMode(iN){
		if (iN>=65 && iN <=90) //��д��ĸ
		return 2;
		if (iN>=97 && iN <=122) //Сд
		return 4;
		else
		return 1; //����
}
//�������ǰ���뵱��һ���ж�����ģʽ
function checkStrong(sPW){
		Modes=0;
		for (i=0;i<sPW.length;i++){
				//����ÿһ���ַ������ͳ��һ���ж�����ģʽ.
				Modes|=CharMode(sPW.charCodeAt(i));
		}
		var btotal = bitTotal(Modes);
		if (sPW.length >= 10) btotal++;
		switch(btotal) {
				case 1:
						return "<table width='130' class='pswstrong'><tr><td bgcolor='#FE707E'><strong>��</strong></td><td><span style='color:#666;'>��</span></td><td><span style='color:#666;'>ǿ</span></td></tr></table>";
						break;
				case 2:
						return "<table width='130' class='pswstrong'><tr><td bgcolor='#FCFA93'><span style='color:#666;'>��</span></td><td bgcolor='#FCFA93'><strong>��</strong></td><td><span style='color:#666;'>ǿ</span></td></tr></table>";
						break;
				case 3:
						return "<table width='130' class='pswstrong'><tr><td bgcolor='#BDFEA6'><span style='color:#666;'>��</span></td><td bgcolor='#BDFEA6'><span style='color:#666;'>��</span></td><td bgcolor='#BDFEA6'><strong>ǿ</strong></td></tr></table>";
						break;
				default:
						return "<font color='#33CC00'>ǿ</font>";
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
	
	if(key.indexOf("/������/")>-1&&val==""){
		name = (name=="password")?"����":name;
		oShow.innerHTML="������"+name
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/4-16/")>-1&&(strLen(val)<4||strLen(val)>16)){
		oShow.innerHTML="���ȱ���4-16λ"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/4-32/")>-1&&(strLen(val)<4||strLen(val)>32)){
		oShow.innerHTML="���ȱ���4-32λ"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/6-16/")>-1&&(strLen(val)<6||strLen(val)>16)&&strLen(val)!=0){
		oShow.innerHTML="���ȱ���6-16λ"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/8-16/")>-1&&(strLen(val)<8||strLen(val)>16)){
		oShow.innerHTML="���ȱ���8-16λ"
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
		oShow.innerHTML="��������ȷ�����֤���룡"
		oShow.style.display=""
		return false
		}
	}
	if(key.indexOf("/���ַ�/")>-1&&(/>|<|,|\[|\]|\{|\}|\?|\/|\+|=|\||\'|\\|\"|:|;|\~|\!|\@|\#|\*|\$|\%|\^|\&|\(|\)|`/i).test(val)){
		oShow.innerHTML=" ����ʹ�������ַ�"
		oShow.style.display=""
		return false
	}	
	if(key.indexOf("/���ַ�pwd/")>-1&&(/>|<|\+|,|\[|\]|\{|\}|\/|=|\||\'|\\|\"|:|;|\~|\!|\@|\#|\*|\$|\%|\^|\&|\(|\)|`/i).test(val)){
		oShow.innerHTML=" ����ʹ�������ַ�"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/�пո�/")>-1&&val.indexOf(" ")>-1){
		oShow.innerHTML=" ���ܰ����ո��"
		oShow.style.display=""
		return false
	}
	if( key.indexOf("/��β�����ǿո�/")>-1&&val!="")
	{
		var pat_s = /^(\s)/;
		var pat_e = /(\s)$/;

		if ( pat_s.test(val) || pat_e.test( val))
		{
			oShow.innerHTML="��β�����ǿո�"
			oShow.style.display=""
			return false
		}
	}
	if(key.indexOf("/ȫ����/")>-1&&val!=""){
		if ( /^[0-9]+$/.test(val)){
			oShow.innerHTML="������ȫ������"
			oShow.style.display=""
			return false}
	}
	if(key.indexOf("/�ֻ�����/")>-1){
		var pnum=/^(13[0-9]|15[0|3|6|7|8|9]|18[8|9])\d{8}$/;
		if(!pnum.test(val))
		{
           oShow.innerHTML="�ֻ��������"	
		   oShow.style.display=""
		   return false	
 		}
	}
	if(key.indexOf("/�̶��绰/")>-1){
		var hnum=/^0(([1,2]\d)|([3-9]\d{2}))\d{8}$/;
		if(!hnum.test(val)&&val!="")
		{
           oShow.innerHTML="�̶��绰�������"	
		   oShow.style.display=""
		   return false	
 		}
	}
	if(key.indexOf("/QQ����/")>-1){
		var qqnum=/^[1-9][0-9]{4,8}$/;
		if(!qqnum.test(val)&&val!="")
		{
           oShow.innerHTML="���벻����"	
		   oShow.style.display=""
		   return false	
 		}
	}
	
	if(key.indexOf("/�д�д/")>-1&&/[A-Z]/.test(val)){
		oShow.innerHTML="�����д�д��ĸ"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/������/")>-1 && val != "" && !(/([0-9a-z]+(([0-9a-z]*)|([0-9a-z-]*[0-9a-z]))+\.)+[a-z]{2,4}$/i).test(val)){
		oShow.innerHTML=" �������д���";
		oShow.style.display="";
		return false;
	}		
	if(key.indexOf("/Ӣ������/")>-1&&!/^[a-zA-Z0-9_]*$/.test(val)){
		oShow.innerHTML="ֻ��ΪӢ�ĺ�����"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/��ȫ��/")>-1&&/[��-����-�ڣ�-�������������ޣ��������ߣ������ۣݣ����������������������࡫��]/.test(val))
	{
		oShow.innerHTML=" ������ȫ���ַ�"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/�к���/")>-1&&escape(val).indexOf("%u")>-1){
		oShow.innerHTML=" �����к���"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/�»���/")>-1&&val.slice(val.length-1)=="_"){
		oShow.innerHTML="�»��߲��������"
		oShow.style.display=""
		return false
	}
	if(key.indexOf("/ȷ������/")>-1){
		if(obj.form[name].value!=val){
			oShow.innerHTML="ȷ�����벻һ��"
			oShow.style.display=""
			return false
		}
	}
	if(key.indexOf("/ȷ��֤������/")>-1){
		if(obj.form[name].value!=val){
			oShow.innerHTML="ȷ��֤�����벻һ��"
			oShow.style.display=""
			return false
		}
	}
	if(key.indexOf("/��ѡ/")>-1){
		var ol=obj.form[obj.name],isSel=false
		for(var i=0;i<ol.length;i++){
			if(ol[i].checked)
				isSel=true
		}
		if(!isSel){
			oShow.innerHTML=name+"����ѡ��"
			oShow.style.display=""
			return false
		}
	}
	if(key.indexOf("/����/")>-1){
		var ol=obj.form[obj.name],isSel=false
		if(ol.checked){
			isSel=true
		}
		if(!isSel){
			oShow.innerHTML=name+"����ѡ��"
			oShow.style.display=""
			return false
		}
	}
	if ( name=="password" || name=="����"){
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
		alert("����д����Ϣ���������ҳ����ָ��ģ�");
		return false
	}
}
function checkname(){

var username=document.memberform.username.value;
window.location.href="register.jsp?username="+username;

}

