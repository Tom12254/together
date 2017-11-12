<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<link rel="stylesheet" type="text/css" href="../150jjw/sso.css">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
 
<script type="text/javascript">
var xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
xmlDoc.async=false;
xmlDoc.load("xml/choice.xml");

init = function(){

 var collegeNode = xmlDoc.getElementsByTagName("college");
 var collegeAttributesValue;
 var college_select = document.getElementById("collegeselect");
 for(var i = 0;i<collegeNode.length;i++){
  collegeAttributesValue = collegeNode(i).attributes.getNamedItem("label").value;
  var option = new Option(collegeAttributesValue,collegeAttributesValue);
  college_select.add(option);
 }
 
 var aeraNode = xmlDoc.getElementsByTagName("aera");
 var regionNode = aeraNode(0).childNodes;
 var regionAttributesValue;
 var region_select = document.getElementById("teach_place");
 region_select.length = 1;
for(var i = 0;i<regionNode.length;i++){
  regionAttributesValue = regionNode(i).attributes.getNamedItem("label").value;
  var option = new Option(regionAttributesValue,regionAttributesValue);
  region_select.add(option);
 }
 
}
collegechange = function(){
 var j = document.getElementById("collegeselect").selectedIndex;
 var collegeNode = xmlDoc.getElementsByTagName("college");
 var departmentNode = collegeNode(j-1).childNodes;
 var departmentAttributesValue;
 var department_select = document.getElementById("departmentselect");
 department_select.length = 0;
 for(var i = 0;i<departmentNode.length;i++){
  departmentAttributesValue = departmentNode(i).attributes.getNamedItem("label").value;
  var option = new Option(departmentAttributesValue,departmentAttributesValue);
  department_select.add(option);
 }
}
</script>
 
</head>

<body onload="init()">
<table cellspacing=0 cellpadding=0 width=440 align=left bgcolor=#ffffff border=0>
  <tbody>
  <tr>
    <td width=15 rowspan=2>&nbsp;</td>
    <td valign=top rowspan=2>
      <table bordercolor="#cccccc" cellspacing=1 cellpadding=0 width="440" bgcolor=#cccccc border=0>
        <tbody>
        <tr>
          <td valign=top align="center" background="150jjw/beijin1.gif" bgcolor=#ffffff>
            <form name="finishregister" action="../servlet/finishregister.html" method="post"  >
            <table cellspacing=1 cellpadding=0 width="97%" bgcolor=#cccccc     border=0>
              <tbody>
              <tr>
                  <td bgcolor="#f8f8f8">
                    <table cellspacing=1 cellpadding=0 width="100%" border=0>
                    <tbody>
                    <tr>
                      <td  width="20%" height=35> <div align=right>用户名称：</div></td>
                       <td  align=left><div align=left> <font color="#ffffff">
					     <input type="text" name="username"  maxlength="20"/> </font> </div>
					   </td>
                    </tr>
                    <tr>
                      <td  width="20%" height=35> <div align=right>年级类别：</div></td>
                       <td  align=left><div align=left> <font color=#ffffff></font>
					     <select name="collegeselect" onchange="collegechange()">
					       <option>选择年级</option>
					     </select> </div>
					    </td>
                    </tr>
                    <tr>
                      <td height=30 width="20%"> <div align=right>教授科目：</div></td>	
                      <td>
                        <div align=left><font color=#ffffff></font>
                          <select name="departmentselect"><option>请选择科目</option></select></div>
                      </td>
                    </tr>
                    <tr>
                       <td  width="20%" height=35> <div align=right>所在区域：</div></td>
                       <td > <div align=left><font  color=#ffffff>
                        <select  id=select2  name=teach_place> 
                           <option value="武昌区"  selected>武昌区</option>
                        </select> </font></div>
                       </td>
                    </tr>
                    <tr>
                       <td  width="20%" height=35> <div align=right>教员性别：</div></td>
                       <td><div align=left><font color=#ffffff></font>
                        <select id=select3 name=gender>  
                          <option value="男">男</option> 
                          <option value="女">女</option>
                        </select> </div>
                       </td>
                    </tr>
                    <tr>
                     <td  width="20%" height=35> <div align=right>视频教学：</div></td>
                      <td><div align=left>
                        <select  id=select4 name=video>  
                          <option value="y">支持</option> 
                          <option  value="n">不支持</option>
                         </select> </div>
                      </td>
                    </tr>
                    <tr>
                      <td width="25%"></td>
                      <td align="left"  >
                        <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
                         onmouseout="this.className='btn3_mouseout'"
                         onmousedown="this.className='btn3_mousedown'"
                         onmouseup="this.className='btn3_mouseup'" type="submit"  value=" 完成注册 "  style="width:74px;" name="submit"/>
                      </td>        
                   </tr>        
                   </tbody>
                   </table>
                 </td>
               </tr>
             </tbody>
            </table>
            </form>
           </td>
          </tr>
        </tbody>
        </table>
      </td>
      </tr>
     </tbody>
    </table>
</body>
</html>