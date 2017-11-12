<%@ page language="java" import="java.util.*,userinf0.*" pageEncoding="GBK"%>
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
  function checkhomenum()
{
   if(checkspace(document.changehomenum.newhomenum.value)) {
	alert("您没有填写电话号码！");
	document.changehomenum.newhomenum.focus();
	return false;
	}
  
   if(checkspace(document.changehomenum.surehomenum.value)) {
	alert("请输入确认号码");
	document.changehomenum.surehomenum.focus();
	return false;
	}
	if(document.changehomenum.surehomenum.value!=document.changehomenum.newhomenum.value) {
	alert("两次输入号码不一致");
	document.changehomenum.newhomenum.focus();
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
   修改您的住宅电话信息：<br></br> 
    <form action="servlet/chg_homenum.html" method="post" name="changehomenum">
 <TABLE cellSpacing=1 cellPadding=0 width="440" bgcolor="#eaeaea" border=0 align="left">
  <%
        userinf0 user=new userinf0();
        user=(userinf0)session.getAttribute("userinf0");
        String username=user.getUsername();
   %>
   <tr>
         <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: right" width="30%" >
                    新住宅电话：
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px">
                    <input name="newhomenum" type="text" maxlength="50" id="newhomenum" title="请输入新号码" style="width:260px;" />                
                    <input type="hidden" name="username" value=<%=username%> /> 
                </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: right" width="30%"  valign="top">
                    请再次输入：
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px">
                    <input name="surehomenum" type="text" maxlength="50" id="surehomenum" title="请再次输入号码" style="width:260px;" />
                   
                </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: center" colspan="2" >
                    <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
                     onmouseout="this.className='btn3_mouseout'"
                     onmousedown="this.className='btn3_mousedown'"
                     onmouseup="this.className='btn3_mouseup'" type="submit"  value=" 提交修改 "  style="width:74px;" name="newchg_homenum" onclick="return checkhomenum()" />
                </td>
            </tr>
  </table>
  </body>
</html>
