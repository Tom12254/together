<%@ page language="java" import="java.util.*,userinf0.*,adminuser.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <link rel="stylesheet" type="text/css" href="../150jjw/sso.css">
       <base href="<%=basePath%>">	
  </head>
  
  <body>  
   修改订单上课时间：</br> 
   <form action="servlet/modifyorder.html" method="post" name="modifyorder">
 <TABLE cellSpacing=1 cellPadding=0 width="440" bgcolor="#f0f8ff" border=0 align="left">
  
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: right" width="30%" bgcolor="#eaeaea">
                    订单号码：
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px" bgcolor="#eaeaea" >
                    <input name="ordernum" type="text" maxlength="20" id="ordernum"  style="width:110px;" />   
                             
                </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: right" width="30%" bgcolor="#eaeaea" valign="top">
                    上课时间：
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px" bgcolor="#eaeaea" >
                    <input name="teachtime" type="text" maxlength="50" id="teachtime"  style="width:200px;" />
                   
                </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: center" bgcolor="#eaeaea" colspan="2" >
                    <input  class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'" type="submit"  value="提交订单修改 "  style="width:100px;" name="modify"  />
                </td>
            </tr>
  </table>
  </form>
 
  </body>
</html>
