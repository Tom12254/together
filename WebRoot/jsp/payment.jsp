<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<TITLE>����֧��_��������_150�ҽ���</TITLE>


<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>


</head>

<BODY bgColor=#ffffff leftMargin=0 topMargin=0>
<CENTER>
<SCRIPT language=javascript src="../js/commonhead.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript type=text/javascript>
myheader();
</SCRIPT>

<TABLE cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=8></TD>
    <TD align=middle width=732>
      <TABLE height=40 cellSpacing=2 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=right width=20><IMG height=13 
            src="../150jjw/mcenter_arrow.gif" width=13>
          </TD>
          <TD>&nbsp;&nbsp;150�ҽ��� &gt;&gt; ����֧��
          </TD>
          <TD align="center" width=60><IMG height=13 
            src="../150jjw/mcenter_ico_help.gif" width=13> <A 
            class=a02 href="http://login.sina.com.cn/help.html" 
            target=_blank>����</A>
           </TD>
     </TR>
     </TBODY>
     </TABLE>
      <TABLE cellSpacing=2 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD background=../150jjw/mcenter_dot.gif 
        height=1>
          </TD>
         </TR>
        </TBODY>
      </TABLE>
<table width="750" border="0" align="center">
  <tr>
    <td width="536" valign="top">
	<form action="${pageContext.request.contextPath}/servlet/yeepay/paymentRequest" method="post" name="paymentform">
	
	<table width="100%" border="0">
      <tr>
        <td height="30" colspan="4"><table width="100%" height="50" border="0" cellpadding="0" cellspacing="1" bgcolor="#A2E0FF">
          <tr>
            <td align="center" bgcolor="#F7FEFF"><h3>�����ţ�<INPUT TYPE="text" NAME="orderid" size="20"> �����<INPUT TYPE="text" NAME="amount" size="8">Ԫ</h3></td>
          </tr>
        </table></td>
        </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
        </tr>
      <tr>
        <td height="30" colspan="4" bgcolor="#F4F8FF"><span class="STYLE3">����ѡ������֧������</span> </td>
        </tr>
      <tr>
        <td width="26%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBCHINA-NET">�������� </td>
        <td width="25%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="ICBC-NET">��������</td>
        <td width="25%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="ABC-NET">ũҵ����</td>
        <td width="24%" height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CCB-NET">�������� </td>
      </tr>
      <tr>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CMBC-NET">�й���������</td>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CEB-NET" >������� </td>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="BOCO-NET">��ͨ����</td>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="SDB-NET">���ڷ�չ����</td>
      </tr>
      <tr>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="BCCB-NET">��������</td>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="CIB-NET">��ҵ���� </td>
        <td height="25"><INPUT TYPE="radio" NAME="pd_FrpId" value="SPDB-NET">�Ϻ��ַ����� </td>
        <td ><INPUT TYPE="radio" NAME="pd_FrpId" value="ECITIC-NET">��������</td>
      </tr>
      <tr>
        <td colspan="4">&nbsp;</td>
        </tr>
      <tr>
        <td colspan="4" align="center"><input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'" type=submit  value=" ȷ��֧�� " /></td>
        </tr>
    </table>
	</form>	</td>
    <td colspan="2" valign="top"><div class="divts"><table width="200" border="0" align="center" cellpadding="5" cellspacing="0">
      <tr>
        <td bgcolor="#F4F8FF"><span class="STYLE5"> ��ܰ��ʾ</span></td>
      </tr>
      <tr>
        <td><ul><li> ���пͻ��赽����ǩԼ�������в���֧��</li>
		<li>��رյ����������ع���</li>
		<li>���ʹ��IE5.0���������</li>
		<li>֧������ʱ��IE�����ˡ���</li>
		</ul></td>
      </tr>
    </table>
    </div>
	
	<div id="blankmessage"></div>	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="290">&nbsp;</td>
    <td width="120">&nbsp;</td>
  </tr>
</table>
     
	  
       <BR>
       </TD>
    <TD class=bg01 width=8></TD>
    <TD class=bg02 width=1></TD>
    
    </TR></TBODY></TABLE>
  
<script language=javascript src="../js/footer_sso.js" 
type=text/javascript></script>
</center>

</BODY>
</html>
