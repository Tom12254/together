<%@ page language="java" import="java.util.*,adminuser.*,org.hibernate.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>
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
  function checkgranted()
{
   if(checkspace(document.newgranted.username.value)) {
	alert("������д�û�����");
	document.newgranted.username.focus();
	return false;
	}
  
   if(checkspace(document.newgranted.email.value)) {
	alert("������д��������");
	document.newgranted.email.focus();
	return false;
	}
	
	if(checkspace(document.newgranted.region.value)) {
	alert("������д��ͥסַ");
	document.newgranted.region.focus();
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
��Ȩ����Ա��<br><br>
<table cellspacing=0 cellpadding=0 width=440 align=left bgcolor=#ffffff border=0>
  <tbody>
  <%    
        adminuser user=new adminuser();
        user=(adminuser)session.getAttribute("adminuser"); 
        String granted=user.getUsername();         
   %>
  <tr>
    <td width=15 rowspan=2>&nbsp;</td>
    <td valign=top rowspan=2>
      <table bordercolor="#cccccc" cellspacing=1 cellpadding=0 width="440" 
      bgcolor=#cccccc border=0>
        <tbody>
        <tr>
          <td valign=top align="center" background="150jjw/beijin1.gif" bgcolor=#ffffff>
  <form name="newgranted" action="servlet/grant.html" method="post"  >
            <input type="hidden" name="granter" id="granter" value=<%=granted %> /> 
            <table cellspacing=1 cellpadding=0 width="97%" bgcolor=#cccccc     border=0>
              <tbody>
              <tr>
                   <td bgcolor="#f8f8f8">
                  <table cellspacing=1 cellpadding=0 width="100%" border=0>
                    <tbody>
                    <tr>
                      <td  width="20%" height=35>
                        <div align=right>�û����ƣ�</div></td>
                       <td  align=left><div align=left>
					   <font color=#ffffff></font><font 
                        color="#ffffff">
					   <input type="text" name="username"  ></input>
					   </font>
					   <font color=#ffffff></font></div></td>
                     </tr>
                    <tr>
                      <td  width="20%" height=35>
                        <div align=right>�������䣺</div></td>
                       <td  align=left><div align=left>
					   <font color=#ffffff></font><font 
                        color="#ffffff">
					    <input type="text" name="email" id="email" ></input>
					   
					   </font><font 
                        color=#ffffff></font></div></td>
                     </tr>
                     <tr>
                      <td height=30 width="20%">
                        <div align=right>�Ա�</div></td>
						
                      <td>
                        <div align=left><font color=#ffffff></font>

						<select name="sex" id="sex">
						<option value="��">��</option>
						<option value="Ů">Ů</option>
						</select>
						
						<font 
                        color=#ffffff></font></div></td>
                        </tr>
                     
                    
                    
                      <tr>
                     <td  width="20%" height=35>
                        <div align=right>��ͥסַ��</div></td>
                      <td>
                        <div align=left><font color=#ffffff></font>
                        <input type="text" name="region"  maxlength="150" id="region" ></input>
                        </div></td>
                     </tr>
                    
                     <tr>
               <td width="25%"></td>
                <td align="left"  >
                    <input  class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'" type="submit"  value="�ύ��Ȩ "  style="width:74px;" name="submit" onclick="return checkgranted()" />
                </td>
                <td ></td>
            </tr>        
                     </tbody></table></td></tr></tbody>
                </table>
                </form>
            </td></tr></tbody></table></td>
         </tr>
        </tbody>
        </table>
         
</body>
</html>