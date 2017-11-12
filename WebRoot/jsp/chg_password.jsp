<%@ page language="java" import="java.util.*,userinf0.*,adminuser.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">	
      <link rel="stylesheet" type="text/css" href="../150jjw/sso.css"> 
    <script type="text/javascript">
  function checkpassword()
{
   if(checkspace(document.changepassword.newpassword.value)) {
	alert("您没有填写电话号码！");
	document.changepassword.newpassword.focus();
	return false;
	}
  
   if(checkspace(document.changepassword.surepassword.value)) {
	alert("请输入确认号码");
	document.changepassword.surepassword.focus();
	return false;
	}
	if(document.changepassword.surepassword.value!=document.changepassword.newpassword.value) {
	alert("两次输入号码不一致");
	document.changepassword.newpassword.focus();
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


  </script>
 
  </head>
  <body>  
   修改您的登录密码：<br></br> 
   <form action="servlet/chg_password.html" method="post" name="changepassword">
 <TABLE cellSpacing=1 cellPadding=0 width="440" bgcolor="#eaeaea" border=0 align="left">
  <tr>
  <%    
        int type=(Integer)session.getAttribute("type");
        String username="";
        if(type==2){
        userinf0 user=new userinf0();
        user=(userinf0)session.getAttribute("userinf0");
        username=user.getUsername();
       }
       else {
         adminuser user=new adminuser();
         user=(adminuser)session.getAttribute("adminuser");
         username=user.getUsername();
       }
   %>
       <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; color: #ffffff;
                    padding-top: 2px; height: 19px" align="center" bgcolor="#f598f5" colspan="2">
         <b>输入密码的时候要注意安全，牢记密码！</b>
       </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: right" width="20%" >
                    新的密码：
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px">
                    <input name="newpassword" type="password" maxlength="50" id="newpassword" title="请输入新密码" style="width:260px;" />  
                    <input type="hidden" name="username" value=<%=username%> /> 
                    <input type="hidden" name="type" value=<%=type %> />              
                </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: right" width="20%"  valign="top">
                    再次输入：
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px">
                    <input name="surepassword" type="password" maxlength="50" id="surepassword" title="请再次输入新密码" style="width:260px;" />
                   
                </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: center"  colspan="2" >
                    <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
                      onmouseout="this.className='btn3_mouseout'"
                      onmousedown="this.className='btn3_mousedown'"
                      onmouseup="this.className='btn3_mouseup'" type="submit"  value=" 新设密码 "  style="width:74px;" name="chg_password" onclick="return checkpassword()" />
                </td>
            </tr>         
  </table>
  </form>
  </body>
</html>
