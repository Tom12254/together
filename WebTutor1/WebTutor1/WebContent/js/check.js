/**
* SSO check user exist
* author lijun
* date 2007.5.8
*/

<!--//
/* ���� */
var checkUrl="/cgi/register/check_user.php";
var mailYes="��Ǹ�����������ѱ�ռ�ã�������ѡ��һ����";
var mailNo="<font color=#0F840F>����������</font>";
var memberYes="�û����ѱ�ע��";
var memberNo="<font color=#0F840F>�û�������</font>";
var error="�첽ͨ�Ŵ���";
var defer="���Ĳ�ѯ�������࣬��һ���Ӻ��ٲ�ѯ";
var type1="freemail",type2="vipmail",type3="sinauser",type4="2008mail";

/* check browser type */
function isIE()
{
	if(document.attachEvent)
	{
		return true;
	}
	else
	{
		return false;
	}
}

/* get HTMLElement by Id*/
function $(id)
{
	return document.getElementById(id);
}

/* show return value */
function showCheckResult(from,responseText,updateObjId)
{
	var updateObj=$(updateObjId);

	switch(from)
	{
		case type1:
			if(responseText.search("yes")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=mailYes;
			}
			else if(responseText.search("no")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=mailNo;
				//showSuccessColor();
			}
			else if(responseText.search("defer")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=defer;
			}			
			else
			{
				updateObj.style.display="";
				updateObj.innnerHTML=error;
			}
		    break;
		case type2:
			if(responseText.search("yes")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=mailYes;
			}
			else if(responseText.search("no")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=mailNo;
				//showSuccessColor();
			}
			else if(responseText.search("defer")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=defer;
			}			
			else
			{
				updateObj.style.display="";
				updateObj.innnerHTML=error;
			}
		    break;
		case type3:
			if(responseText.search("yes")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=memberYes;
			}
			else if(responseText.search("no")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=memberNo;
				//showSuccessColor();
			}
			else
			{
				updateObj.style.display="";
				updateObj.innerHTML=error;
			}
		    break;
		case type4:
			if(responseText.search("yes")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=mailYes;
			}
			else if(responseText.search("no")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=mailNo;
				//showSuccessColor();
			}
			else if(responseText.search("defer")>=0)
			{
				updateObj.style.display="";
				updateObj.innerHTML=defer;
			}			
			else
			{
				updateObj.style.display="";
				updateObj.innnerHTML=error;
			}
		    break;
        default:
			;

	}
}

/* ajax engine */
function ajaxCheck(url,from,name,updateObjId)
{
	var XHR;
	var date=new Date();
	var parameter="from="+from+"&name="+name+"&timeStamp="+date.getTime();
	try
	{
		if(isIE())
		{
			XHR=new ActiveXObject("Microsoft.XMLHTTP");
		}
		else
		{
			XHR=new XMLHttpRequest();
		}
		XHR.open("POST",url);
		XHR.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
		XHR.onreadystatechange=function(){
			if(XHR.readyState==4)
			{
				if(XHR.status==200)
				{
					showCheckResult(from,XHR.responseText,updateObjId);
				}
				else
				{
					;
				}
			}
		}
		XHR.send(parameter);
		
	}
	catch (e)
	{
		alert(e.toString());
	}
}

/* checkUserExist */
function checkUserExist(from,name,updateObjId)
{
	ajaxCheck(checkUrl,from,name,updateObjId);
}

/* function for reg_sso.htm */
function ssoCheck(from1,from2,name1,name2,errorId1,errorId2)
{
	checkUserExist(from1,name1,errorId1);
	checkUserExist(from2,name2,errorId2);
}
function showSuccessColor(){
	document.getElementById("errorlogo").className = "step1suc";
}
function showDefaultColor(){
	document.getElementById("errorlogo").className = "step1error";
}
//-->