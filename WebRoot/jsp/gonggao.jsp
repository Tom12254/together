<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>
  
  </head>
  
  <body>

    <form action="../servlet/updategonggao.html" method="post">
    <table width="440" height="50" border="0" bgcolor=#eaeaea>
    
    <tr>  
     <td width="70" align="center">ѡ����£�</td>
     <td width="320">
    <select name="type" id="type">
    <option value="1">���¹���һ</option>
     <option value="2">���¹����</option>
      <option value="3">���¹�����</option>
       <option value="4">���¹�����</option>
        <option value="5">���¹�����</option>       
     </select>
    </td>
    </tr>
    
    <tr>
    <td width="70" align="center">���⣺</td>
    <td width="320"><input type="text" name="title"  maxlength="5"></td>
    </tr>  
    </table>  
    <table width="440" height="253" border="0" bgcolor=#eaeaea>
     <tr>
	<td width="70" align="center">�������ݣ�</td>
  </tr>
  <tr>
	<td width="440" height="246" align="center"><textarea name="txt" cols="55" rows="16"></textarea></td>
  </tr>

 <tr>
  <td align="center"><input  class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'" type="submit" value="�ύ����"  /></td>
  </tr>

</table>
</form>
  </body>
</html>
