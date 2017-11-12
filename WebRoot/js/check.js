/**
* SSO check user exist
* author lijun
* date 2007.5.8
*/

<!--//
/* 变量 */
var checkUrl="/cgi/register/check_user.php";
var mailYes="抱歉！该邮箱名已被占用，请重新选择一个。";
var mailNo="<font color=#0F840F>邮箱名可用</font>";
var memberYes="用户名已被注册";
var memberNo="<font color=#0F840F>用户名可用</font>";
var error="异步通信错误";
var defer="您的查询次数过多，请一分钟后再查询";
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