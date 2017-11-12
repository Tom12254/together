<%@ page language="java" import="java.util.*,userinf0.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
      <link rel="stylesheet" type="text/css" href="../150jjw/sso.css">
        <base href="<%=basePath%>">	
     <script type="text/javascript">
  function checkordernum()
{
   if(checkspace(document.checkorderpay.ordernum.value)) {
	alert("您没有填写订单号码！");
	document.checkorderpay.ordernum.focus();
	return false;
	}
  
   if(checkspace(document.checkorderpay.sureordernum.value)) {
	alert("请输入确认号码");
	document.checkorderpay.sureordernum.focus();
	return false;
	}
	if(document.checkorderpay.ordernum.value!=document.checkorderpay.sureordernum.value) {
	alert("两次输入号码不一致");
	document.checkorderpay.ordernum.focus();
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
   确认订单付款信息：<br></br> 
    <form action="servlet/checkorderpay.html" method="post" name="checkorderpay">
  <TABLE cellSpacing=1 cellPadding=0 width="440" bgcolor="#eaeaea" border=0 align="left">
  <%
  
  String teacher="";
  String student="";
  String teachercellphone="";
  String teachtime="";
  String jiaoshiming="教师名称：";
  String kehuming="客户名称：";
  String jiaoshidianhua="教师电话：";
  String shangkeshijian="上课时间：";
 
  try{
  teacher=request.getAttribute("teacher").toString();
   student=request.getAttribute("student").toString();
    teachercellphone=request.getAttribute("teachercellphone").toString();
     teachtime=request.getAttribute("teachtime").toString();
  }catch(Exception e)
  {
  
  }
  
   %>
   <tr>
         <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: right" width="50%" >
                    付款订单号码：
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px">
                    <input name="ordernum" type="text" maxlength="50" id="ordernum"  style="width:130px;" />                

                </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: right" width="50%"  valign="top">
                    订单号码确认：
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px">
                    <input name="sureordernum" type="text" maxlength="50" id="sureordernum"  style="width:130px;" />
                   
                </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: center" colspan="2" >
                    <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
                           onmouseout="this.className='btn3_mouseout'"
                            onmousedown="this.className='btn3_mousedown'"
                            onmouseup="this.className='btn3_mouseup'" type="submit"  value=" 提交付款订单 "  style="width:100px;" name="submit" onclick="return checkordernum()" />
                </td>
            </tr>
            <tr>
               <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: left" width="50%"  valign="top">
                    <%=jiaoshiming%><%=teacher%>
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px">
                   <%=jiaoshidianhua%><%=teachercellphone%>
                   
                </td>
            </tr>
            <tr>
               <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: left" width="50%"  valign="top">
                    <%=shangkeshijian%><%=teachtime%>
               </td>
               <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px">
                   <%=kehuming%><%=student%>
                   
               </td>
           </tr>
    </table>
   </form>
  </body>
</html>
