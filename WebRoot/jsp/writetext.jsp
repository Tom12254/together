<%@ page language="java" import="java.util.*,userinf0.*" pageEncoding="GBK"%>
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

    <form action="../servlet/savetxt.html" method="post">
    <table width="440" height="50" border="0" bgcolor=#eaeaea>
    <%
        userinf0 user=new userinf0();
        user=(userinf0)session.getAttribute("userinf0");
        String teacher=user.getUsername();
     %>
    <tr>
    <td width="70" align="center">���⣺</td>
    <td width="320"><input type="text" name="title"><input type="hidden" name="username" value=<%=teacher%> ></input></td>
    </tr>
    <tr>
     <td width="70" align="center">���ͣ�</td>
     <td width="320">
    <select name="type" id="type">
    <option value="����">�� ��</option>
     <option value="��ѧ">��ѧ</option>
      <option value="Ӣ��">Ӣ��</option>
       <option value="��ʷ">��ʷ</option>
        <option value="����">����</option>
         <option value="����">����</option>
         <option value="����">����</option>
         <option value="��ѧ">��ѧ</option>
         <option value="����">����</option>
         <option value="����">����</option>
          <option value="����">����</option>
          <option value="����">����</option>
          <option value="�п�">�п�</option>
          <option value="�߿�">�߿�</option>
          <option value="����">����</option>
     </select>
    </td>
    </tr>
    </table>
    
    <table width="440" height="253" border="0" bgcolor=#eaeaea>
    
  <tr>
	<td width="440" height="246" align="center"><textarea name="txt" cols="55" rows="16"></textarea></td>
  </tr>
  <tr>
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
