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
	alert("��û����д�������룡");
	document.checkorderpay.ordernum.focus();
	return false;
	}
  
   if(checkspace(document.checkorderpay.sureordernum.value)) {
	alert("������ȷ�Ϻ���");
	document.checkorderpay.sureordernum.focus();
	return false;
	}
	if(document.checkorderpay.ordernum.value!=document.checkorderpay.sureordernum.value) {
	alert("����������벻һ��");
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
   ȷ�϶���������Ϣ��<br></br> 
    <form action="servlet/checkorderpay.html" method="post" name="checkorderpay">
  <TABLE cellSpacing=1 cellPadding=0 width="440" bgcolor="#eaeaea" border=0 align="left">
  <%
  
  String teacher="";
  String student="";
  String teachercellphone="";
  String teachtime="";
  String jiaoshiming="��ʦ���ƣ�";
  String kehuming="�ͻ����ƣ�";
  String jiaoshidianhua="��ʦ�绰��";
  String shangkeshijian="�Ͽ�ʱ�䣺";
 
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
                    ��������룺
                </td>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px">
                    <input name="ordernum" type="text" maxlength="50" id="ordernum"  style="width:130px;" />                

                </td>
            </tr>
            <tr>
                <td style="padding-right: 2px; padding-left: 2px; padding-bottom: 2px; padding-top: 2px;
                    text-align: right" width="50%"  valign="top">
                    ��������ȷ�ϣ�
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
                            onmouseup="this.className='btn3_mouseup'" type="submit"  value=" �ύ����� "  style="width:100px;" name="submit" onclick="return checkordernum()" />
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
