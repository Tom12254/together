<%--    
 �ļ�����150jjw.jsp    
 ��  �ߣ���ΰ
 ������150�ҽ�������ҳ�����ڵ�¼�����ߴ�����ȡ������Ϣ
--%>   
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/tr/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />

<title>150�ּҽ���վ--�人վ</title>

<meta http-equiv=content-language content=zh_CN></meta>
<meta content="�ҽ� �ҽ��� �ҽ���վ �人�ҽ� " name=keywords></meta>
<meta  content =�ṩ�人�и������׶�Сѧ���и��е����ġ���ѧ����ѧ������Ӣ��������鷨�����������١�Χ��ȼҽ̷��� 
        name=description></meta>
<meta content=general name=rating></meta>
<meta content=�ҽ�;�ҽ���;�人�ҽ�;�人�ҽ���;150�ּҽ��� name=author></meta>
<meta content=150�ּҽ��� name=copyright></meta>
<meta content=JavaScript name=vs_defaultClientScript></meta>
<link href="150jjw/style.css" type=text/css rel=stylesheet></link>
<script language=javascript src="js/js.js"></script>

<!-- load the xml file -->
<script type="text/javascript">
var xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
xmlDoc.load("jsp/xml/choice.xml");
init = function(){
 tick();
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

<!-- This is the css of the button -->
<style>
.btn3_mouseout {
BORDER-RIGHT: #FFE400 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #FFE400 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#C3DAF5); BORDER-LEFT: #FFE400 1px solid; CURSOR: hand; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #FFE400 1px solid
}
.btn3_mouseover {
BORDER-RIGHT: #2C59AA 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #2C59AA 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#D7E7FA); BORDER-LEFT: #2C59AA 1px solid; CURSOR: hand; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #2C59AA 1px solid
}
.btn3_mousedown
{
BORDER-RIGHT: #FFE400 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #FFE400 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#C3DAF5); BORDER-LEFT: #FFE400 1px solid; CURSOR: hand; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #FFE400 1px solid
}
.btn3_mouseup {
BORDER-RIGHT: #2C59AA 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #2C59AA 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#ffffff, EndColorStr=#C3DAF5); BORDER-LEFT: #2C59AA 1px solid; CURSOR: hand; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #2C59AA 1px solid
}
</style>

</head>

<body onload="init()">

<!-- the next tahle is for the top of the page -->
<table cellspacing=0 cellpadding=0 width=810 align=center border=0>
  <tbody>
  <tr>
    <td width=29><img height=28 src="150jjw/jiaos1.gif" width=29></img></td>
    <td width=203 bgcolor=#ffffff rowspan=2><img height=43  src="150jjw/logo.gif" width=196></img></td>
    <td valign=bottom width=549 bgcolor=#ffffff rowspan=2>
      <div align=right>
      <table height="68" cellspacing=0 cellpadding=0 width="100%" border=0>
         <tbody>
            <tr>
		        <td valign=top width="15%" rowspan=2>&nbsp;</td>
                <td width="60%"> 
		           <div id="Clock" style="font-size:16px" style="color:#0000FF"></div>
                </td>
                <td valign=top width="25%" rowspan=2>
		           <iframe id='ifm2' width='200' height='70' align="center"  marginwidth='0' marginheight='0' hspace="0"  vspace="0" frameborder='0'  scrolling='no' src="http://news.sina.com.cn/iframe/weather/420101.html"></iframe>
		        </td>
		     </tr>    
		 </tbody>
	  </table>
      </div>
    </td>
    <td width=29><img height=28 src="150jjw/jiaos2.gif" width=29></td>
  </tr>
  <tr>
    <td bgcolor=#ffffff height=40>&nbsp;</td>
    <td bgcolor=#ffffff>&nbsp;</td>
  </tr>
  </tbody>
</table>

<!-- the next tahle is for the guid of the page -->
<table cellspacing=0 cellpadding=0 width=810 align=center bgcolor=#ffffff border=0>
  <tbody>
  <tr>
    <td width=15>&nbsp;</td>
    <td>
      <table cellspacing=0 cellpadding=0 width="100%" align=center  bgcolor=#ffffff border=0>
        <tbody>
        <tr>
           <td width=762 background="150jjw/bar_bg.gif" height=28>
             <div align=center>
			  <ul class="tab">
                <li  class="one"><a href="150jjw.jsp"><span>��վ��ҳ</span></a></li>
                <li><a href="http://www.27jj.com/"><span>�ֵ���վ</span></a></li>
                <li><a href="http://www.whjy.net/"><span>��������</span></a></li>
                <li><a href="jsp/teacher.jsp"><span>��Ա����</span></a></li>
                <li><a href="jsp/student.jsp"><span>ѧԱ����</span></a></li>
                <li><a href="jsp/video_teach.jsp"><span>������ѧ</span></a></li>
                 <li><a href="jsp/downloads.jsp"><span>��������</span></a></li>
                <li><a href="jsp/fudao.jsp"><span>�Ҳ�ϰ��</span></a></li>
                <li><a href="jsp/payment.jsp"><span>����֧��</span></a></li>
              </ul>
             </div>
           </td>
        </tr>
        <tr>
          <td colspan=3 height=10></td>
        </tr>
       </tbody>
     </table>
   </td>
   <td width=15>&nbsp;</td>
  </tr>
  </tbody>
</table>


<table cellspacing=0 cellpadding=0 width=810 align=center bgcolor=#ffffff border=0>
   <tbody>
   <tr>
     <td width=15 rowspan=2>&nbsp;</td>
     <td valign=top rowspan=2>
       <table cellspacing=1 cellpadding=0 width="100%" bgcolor=#cccccc border=0>
         <tbody>
         <tr>
           <td bgcolor=#ffffff height=80>
              <table width="100%" height="125" border=0 cellpadding=0 cellspacing=0>
              <tbody>
              <tr>
                <td align=right width=170><a href="jsp/teacher.jsp"><img  height=72 src="150jjw/qjj.gif" width=134 border=0></img></a></td>
                <td>
                  <table height=50 cellspacing=0 cellpadding=0 width="100%"  border=0>
                    <tbody>
                    <tr>
                      <td width=1 bgcolor=#5ab6d5 rowspan=2></td>
                      <td width=6>&nbsp;</td>
                      <td width=96>
                         <%
                            String qingjiajiao="D:/workspace/WebTutor/file//txt/common/��ҽ�����.txt";
                            String shoufei="D:/workspace/WebTutor/file//txt/common/�շѱ�׼.txt";
                            String ziyuanliyong="D:/workspace/WebTutor/file//txt/common/��վ��Դ����.txt";
                            String howtobe="D:/workspace/WebTutor/file//txt/common/��γ�Ϊ��Ա.txt";
                            String howtodo="D:/workspace/WebTutor/file//txt/common/���ҽ�����.txt";
                            String howtodowell="D:/workspace/WebTutor/file//txt/common/������üҽ�.txt";
                            String gonggao="����";
                          
                          %>
                        <div align=left><span class=red_link_9>+ </span><a class=asho_link_9 
                        href="jsp/showtxt.jsp?url=<%=java.net.URLEncoder.encode(qingjiajiao,"utf-8") %>" 
                        target=_blank>��ҽ�����</a>��
                        </div>
                       </td>
                    </tr>
                    <tr>
                      <td width=3>&nbsp;</td>
                      <td>
                        <div align=left><span class=red_link_9>+</span><a 
                        class=asho_link_9 
                        href="jsp/showtxt.jsp?url=<%=java.net.URLEncoder.encode(shoufei,"utf-8") %>" 
                        target=_blank> �ҽ��շѱ�׼</a>
                        </div>
                       </td>
                    </tr>
                    <tr>
                      <td bgcolor=#5ab6d5></td>
                      <td>&nbsp;</td>
                      <td>
                        <div align=left><span class=red_link_9>+</span><a 
                        class=asho_link_9 
                        href="jsp/showtxt.jsp?url=<%=java.net.URLEncoder.encode(ziyuanliyong,"utf-8") %>" 
                        target=_blank> ��վ��Դ����</a> 
                        </div>
                      </td>
                   </tr>
                   </tbody>
                   </table>
              </td>
              <td align=right width=170><a 
                  href="jsp/register.jsp"><img 
                  height=72 src="150jjw/zjj.gif" 
                  width=134 border=0></img></a>
              </td>
              <td>
                  <table height=50 cellspacing=0 cellpadding=0 width="100%" border=0>
                    <tbody>
                    <tr>
                      <td width=1 bgcolor=#5ab6d5 rowspan=2></td>
                      <td width=6>&nbsp;</td>
                      <td width=95>
                        <div align=left><span class=red_link_9>+ <font 
                        color=#ffffff><span class=asho_link_9><a 
                        class=asho_link_9 
                        href="jsp/showtxt.jsp?url=<%=java.net.URLEncoder.encode(howtobe,"utf-8") %>" 
                        target=_blank>��γ�Ϊ��Ա</a></span></font></span>
                        </div>
                      </td>
                    </tr>
                    <tr>
                      <td width=3>&nbsp;</td>
                      <td>
                        <div align=left><span class=red_link_9>+</span> <a 
                        class=asho_link_9 
                        href="jsp/showtxt.jsp?url=<%=java.net.URLEncoder.encode(howtodo,"utf-8") %>"
                        target=_blank>���ҽ�����</a>
                        </div>
                       </td>
                    </tr>
                    <tr>
                      <td bgcolor=#5ab6d5></td>
                      <td>&nbsp;</td>
                      <td>
                        <div align=left><font color=#ffffff><span 
                        class=red_link_9>+ </span><span 
                        class=asho_link_9></span><a class=asho_link_9 
                        href="jsp/showtxt.jsp?url=<%=java.net.URLEncoder.encode(howtodowell,"utf-8") %>" 
                        target=_blank>������üҽ�</a></font>
                        </div>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                </td>
             </tr>
             </tbody>
             </table>
           </td>
      </tr>
      </tbody>
      </table>
      
      <table cellspacing=0 cellpadding=0 width="100%" border=0>
        <tbody>
        <tr>
          <td height=10></td></tr></tbody>
      </table>
      
      <table bordercolor="#cccccc" cellspacing=1 cellpadding=0 width="100%" 
      bgcolor=#cccccc border=0>
        <tbody>
        <tr>
          <td valign=top align="center"
          background="150jjw/beijin1.gif" bgcolor=#ffffff 
          height=200>
            <table cellspacing=0 cellpadding=3 width="97%" align=center border=0>
              <tbody>
              <tr>
                <td colspan=4 height=9></td></tr>  
              <tr>
                <td width="3%">&nbsp;</td>
                <td align=right width="40%"><a 
                  href="http://www.ttgood.com/nanjing/riyu.php"><img height=122 
                  alt=he src="150jjw/ad/hjx.jpg" width=200 
                  border=0></img></a></td>
                <td width="3%">&nbsp;</td>
                <td width="54%"><a 
                  href="http://www.ttgood.com/nanjing/riyu.php"><img height=122 
                  alt=duan src="150jjw/ad/nyz.jpg" width=200 
                  border=0></img></a>
                </td>
              </tr>
              </tbody>
            </table>
          <form name="searchteacher" action="servlet/searchteacher.html" method="post" target="_blank" >
          <table cellspacing=1 cellpadding=0 width="97%" bgcolor=#cccccc  border=0>
              <tbody>
              <tr>
                   <td bgcolor="#f8f8f8">
                      <table cellspacing=1 cellpadding=0 width="100%" border=0>
                        <tbody>
                        <tr>
                           <td class=ash_link_9 width="12%" height=35>
                              <div align=center>�꼶���</div></td>
                           <td width="26%"><div align=left>
					         <font color="#ffffff">&nbsp;&nbsp;
					          <select name="collegeselect" onchange="collegechange()">
					             <option>��ѡ�����</option>
					          </select> 
					         </font>
					         <font  color=#ffffff></font></div>
					       </td>
                           <td class=ash_link_9 width="18%">
                               <div align=center>��ѧ����</div></td>
                           <td width="16%">
                              <div align=left><font color=#ffffff>
                              <select  id=select  name=teach_place> 
                                <option>�����Ƶ���</option>
                              </select> </font>
                              <font  color=#ffffff></font>
                              </div>
                          </td>
                    </tr>
                    <tr>
                      <td class=ash_link_9 height=30>
                        <div align=center>��Ҫ��Ŀ��</div></td>
                      <td>
                        <div align=left><font color=#ffffff></font>
						&nbsp;&nbsp;
						<select name="departmentselect"><option>��ѡ���Ŀ</option></select>	
						<font  color=#ffffff></font></div></td>
                      <td>
                        <div class=ash_link_9 align=center>�Ա�</div></td>
                      <td>
                        <div align=left><font color=#ffffff>
                        <select id=select3  name=gender> 
                          <option>�������Ա�</option> 
                          <option>��</option> 
                          <option>Ů</option>
                        </select> </font></div></td>
                      <td width="28%" colspan=2>
                        <div align="center"><input type="image" height="23" alt="����" 
                        width="92" src="150jjw/sousuo.jpg"  border="0" name=imageField></input>
                        </div>
                      </td>
                    </tr>
                    </tbody>
                   </table>
                 </td>
               </tr>
               </tbody>
            </table>
            </form>
            
            <table cellspacing=0 cellpadding=0 width="98%" border=0>
              <tbody>
              <tr>
                <td>&nbsp;</td>
              </tr>
              </tbody>
            </table>
          </td>
        </tr>
        </tbody>
        </table>
    </td>
    <td width=10 rowspan=2>&nbsp;</td>
    <td valign="top" align="center" width="200" height="103">
       <table height="139" cellspacing=1 cellpadding=0 width="100%" bgcolor=#cccccc border=0>
         <tbody>
         <tr>
           <td valign=top align="center"  background="150jjw/beijin1.gif" bgcolor="#ffffff">
             <table cellspacing=0 cellpadding=0 width="100%" border=0>
               <tbody>
               <tr>
                 <td align=right  bgcolor="#FFFFCC" height=25>
                    <div align="center"><strong class=red_link_9>�� Ա ��  ½</strong>
                    </div>
                 </td>
               </tr>
               </tbody>
             </table>
             
            <form name="loginform" action="servlet/Login.html" method="post">
            <table cellspacing=0 cellpadding=0 width="94%" border=0>  
               <tbody>
               <tr>
                <td colspan=3 height=10></td>
               </tr>
               <tr>
                <td align=left width="31%" height=30>
                  <div align=right><span class=asho_link_9>�û���</span></div></td>
                <td width="8%">
                  <div class=asho_link_9 align=left>��</div></td>
                <td width="61%">
                  <div align=left><input type="text" class=input_text maxLength="20" size="14" 
                  id=username  name=username ></input></div></td>
              </tr>
              <tr>
                <td align=right height=30><span class=asho_link_9>�ܡ���</span></td>
                <td>
                  <div class=asho_link_9 align=left>��</div></td>
                <td>
                  <div align=left><input class=input_text type=password 
                  maxLength=20 size=14 name=password id=password></input></div></td>
              </tr>
              <tr>
                <td colspan=3 height=35>&nbsp;&nbsp;&nbsp;&nbsp;             
                 <input type="image" height="20" alt="��½" 
                  width="40" src="150jjw/login.gif" 
                  name="image_login" onclick="return checklogin()"></input>&nbsp;
				  <a class=ash_link_9 href="jsp/register.jsp" 
                  target=_blank><font color="red">ע��</font></a> &nbsp;
				  <a  class=ash_link_9   href="jsp/getpass.jsp" 
                  target=_blank><font color="red">��������</font></a>
				  </td>
			   </tr>
             </table>
		     </form>
		  </td>
	    </tr>
		</tbody>	 
	   </table>
	  </td>
    <td width=15 rowspan=2>&nbsp;</td>
  </tr>
  <tr>
    <td valign=top align="center" height=100>
      <table height="234" cellspacing=1 cellpadding=0 width="100%" bgcolor=#cccccc   border=0>
        <tbody>
        <tr>
          <td valign=top align="center" 
           background="150jjw/beijin1.gif" bgcolor=#ffffff 
           height=163>
            <table cellspacing=0 cellpadding=0 width="100%" border=0>
              <tbody>
              <tr>              
                <td align=middle bgcolor="#FFFFCC" height=25>
                  <div  align="center"><strong class=red_link_9>�� �� ��  ��</strong>
                  </div>
                </td>
               </tr>
              </tbody>
             </table>
             
            <table cellspacing=0 cellpadding=0 width="94%" border=0>
              <tbody>
              <tr>
                <td height=10></td></tr>
              <tr>
                <td height=50>
                  <script language=JavaScript 
                  src="150jjw/gonggao.htm"></script>
                </td></tr>
              <tr>
                <td height=30>
         <div align=right><a href="jsp/showpassage.jsp?thetype=<%=java.net.URLEncoder.encode(gonggao,"utf-8") %>">��������&gt;&gt;</a></div></td></tr>
       </tbody>
      </table>
     </td>
    </tr>
    </tbody>
    </table>
    </td>
   </tr>
   </tbody>
</table>

<!-- the next table is for the bottom of the page -->
<form name="searchtxt" action="servlet/searchtxt.html" method="post" target="_blank" >
<table cellspacing=0 cellpadding=0 width=810 align=center border=0>
  <tbody>
  <tr>
    <td width=15 bgcolor=#ffffff height=55>&nbsp;</td>
    <td valign="bottom" bgcolor="#ffffff" height=45>
      <table height="55" cellspacing=0 cellpadding=0 width="750" align="center"  border=0>
        <tbody>
        <tr>
          <td width=192><a href="jsp/showpassage.jsp"><img height=55 
            alt=�ҽ���Ѷվ_�ҽ����� src="150jjw/zixun.jpg" 
            width=192 border=0></img></a></td>
         <td width=580 background="150jjw/info_logo_m.gif">
        
         <table cellspacing=0 cellpadding=0 width="100%" border=0>
           <tbody>
           <tr>
                <td colspan=5 height=5>&nbsp;</td></tr>
           <tr>
                <td align=right width=70><img height=14 
                  src="150jjw/search.gif" width=39></img></td>
                <td align="center" width="140"><font color="#ffffff"><input 
                  id="article" size=16 name="article"></input> </font></td>
                <td width=110><font color=#ffffff>
                <select size=1 name=txtclass> 
                     <option value="��������" selected>��������</option>
                      <option value="����">�� ��</option>
                      <option value="����">����</option>
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
                    </select> </font></td>
                <td width=60><input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
                              onmouseout="this.className='btn3_mouseout'"
                              onmousedown="this.className='btn3_mousedown'"
                              onmouseup="this.className='btn3_mouseup'" type=submit value=��ʼ���� name=Submit></input></td>
               </tr>
               </tbody>
              </table>
             
           </td>
           <td width=10><img height=63  src="150jjw/info_logo_r.gif"  width=8></img></td>
         </tr>
        </tbody>
      </table>
    </td>
    <td width=15 bgcolor=#ffffff>&nbsp;</td>
  </tr>
  </tbody>
</table>
</form>

<!-- the next tahle is for the di of the page -->
<table cellspacing=0 cellpadding=0 width=810 align=center bgcolor=#ffffff border=0>
  <tbody>
  <tr>
    <td width=29><img height=28 src="150jjw/di1.gif" 
      width=29></img></td>
    <td>&nbsp;</td>
    <td width=29><img height=28 src="150jjw/di2.gif" width=29></img>
   </td>
   </tr>
   </tbody>
</table>

</body>
</html>