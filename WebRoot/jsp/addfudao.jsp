<%@ page language="java" import="java.util.*,myorder.*,org.hibernate.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>
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
  function checkorder()
{
   
   if(checkspace(document.neworder.student.value)) {
	alert("忘记填写辅导班名");
	document.neworder.student.focus();
	return false;
	}
	if(checkspace(document.neworder.cellnum.value)) {
	alert("忘记填联系方式");
	document.neworder.cellnum.focus();
	return false;
	}
	if(checkspace(document.neworder.region.value)) {
	alert("忘记填上课地点");
	document.neworder.region.focus();
	return false;
	}
	if(checkspace(document.neworder.homenum.value)) {
	alert("忘记填写开课时间");
	document.neworder.homenum.focus();
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
<table cellspacing=0 cellpadding=0 width=440 align=left bgcolor=#ffffff border=0>
  <tbody>
  
  <tr>
    <td width=15 rowspan=2>&nbsp;</td>
    <td valign=top rowspan=2>
      <table bordercolor="#cccccc" cellspacing=1 cellpadding=0 width="440" 
      bgcolor=#cccccc border=0>
        <tbody>
        <tr>
          <td valign=top align="center" background="150jjw/beijin1.gif" bgcolor=#ffffff>
  <form name="neworder" action="servlet/newfudao.html" method="post"  >
            <table cellspacing=1 cellpadding=0 width="97%" bgcolor=#cccccc     border=0>
              <tbody>
              <tr>
                   <td bgcolor="#f8f8f8">
                  <table cellspacing=1 cellpadding=0 width="100%" border=0>
                    <tbody>
                   
                    
                     <tr>
                      <td height=30 width="20%">
                        <div align=right>辅导班名：</div></td>
						
                      <td>
                        <div align=left><font color=#ffffff></font>

						<input type="text" name="student" id="student" ></input>
						
						<font 
                        color=#ffffff></font></div></td>
                        </tr>
                     <tr>
                       <td  width="20%" height=35>
                        <div align=right>联系方式：</div></td>
                      <td >
                        <div align=left><font color=#ffffff></font><font 
                        color=#ffffff>
                        <input type="text" name="cellnum" id="cellnum"  ></input>
                        </font><font 
                        color=#ffffff></font></div></td>
                     </tr>
                    
                        <tr>
                     <td  width="20%" height=35>
                        <div align=right>开课时间：</div></td>
                      <td>
                        <div align=left><font color=#ffffff></font>
                        <input type="text" name="homenum" id="homenum" ></input>如：2009-01-19
                        </div></td>
                     </tr>
                      <tr>
                     <td  width="20%" height=35>
                        <div align=right>上课地址：</div></td>
                      <td>
                        <div align=left><font color=#ffffff></font>
                        <input type="text" name="region"  maxlength="150" id="region" ></input>
                        </div></td>
                     </tr>
                     <tr>
                     <td  width="20%" height=35>
                        <div align=right>广告等级：</div></td>
                      <td>
                        <div align=left><font color=#ffffff></font>
                        <select name="pro" id="pro">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        </select>
                        </div></td>
                     </tr>
                     <tr>
               <td width="25%"></td>
                <td align="left"  >
                    <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'"
                     type="submit"  value="提交广告 "  style="width:74px;" name="submit" onclick="return checkorder()" />
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