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
    <td width="70" align="center">标题：</td>
    <td width="320"><input type="text" name="title"><input type="hidden" name="username" value=<%=teacher%> ></input></td>
    </tr>
    <tr>
     <td width="70" align="center">类型：</td>
     <td width="320">
    <select name="type" id="type">
    <option value="语文">语 文</option>
     <option value="数学">数学</option>
      <option value="英语">英语</option>
       <option value="历史">历史</option>
        <option value="地理">地理</option>
         <option value="生物">生物</option>
         <option value="物理">物理</option>
         <option value="化学">化学</option>
         <option value="政治">政治</option>
         <option value="体育">体育</option>
          <option value="音乐">音乐</option>
          <option value="美术">美术</option>
          <option value="中考">中考</option>
          <option value="高考">高考</option>
          <option value="竞赛">竞赛</option>
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
onmouseup="this.className='btn3_mouseup'" type="submit" value="提交文章"  /></td>
  </tr>

</table>
</form>
  </body>
</html>
