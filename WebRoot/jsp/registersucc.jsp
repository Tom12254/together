<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD>
<TITLE>150�ּҽ���--�人վ</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META http-equiv=Expires content=0>
<META http-equiv=Cache-Control content=no-cache>
<META http-equiv=Pragma content=no-cache>
<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>
<LINK media=all href="../150jjw/login.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.5730.13" name=GENERATOR>

</HEAD>

<BODY  bgColor=#ffffff topMargin=5  marginheight="5" >
<CENTER>
<SCRIPT language=javascript src="../js/header_sso.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript type=text/javascript>
header();
</SCRIPT>
<DIV id=all>
<SCRIPT language=javascript type=text/javascript>
			//����Ƿ��ס��¼��
			function $(id){
				return document.getElementById(id);
			}
			function GetCookie(_Name)
			{
				var Res = eval('/'+_Name+'=([^;]+)/').exec(document.cookie);
				return Res == null ? false : Res[1];
			}

			function initUserName(){
				var loginname = GetCookie('cREMloginname');
				if(loginname != false){
					$('loginname').value = decodeURIComponent(loginname);
					$('save').checked = "checked";
				}
					passcardOBJ.init(
				// FlashSoft ע��,������input��autocomplete�趨Ϊoff
				
				// ��Ҫ���������input����
				document.getElementById("loginname"),
				{
				// ��꾭��������ɫ
				overfcolor: "#999",
				// ��꾭��������ɫ
				overbgcolor: "#e8f4fc",
				// ����뿪������ɫ
				outfcolor: "#000000",
				// ����뿪������ɫ
				outbgcolor: ""
				},
				// ������ɺ�,�Զ���Ҫ������input����[��ѡ]
				document.getElementById("passcode"));
			}
			window.onload = initUserName;
	</SCRIPT>	
  <DIV id=logoForm>
  <DIV class=loginHead>
  <H6>��¼150jjw</H6>
  <SPAN class=help><A href="https://login.sina.com.cn/help.html" target=_blank>����</A>
  <IMG  src="../150jjw/help.gif">
  </SPAN>
  </DIV>
  <FORM id=loginform name=loginform action="../servlet/Login.html" method=post>
  <DIV id=login>
  <UL>
    <LI class=th>��¼���� </LI>
    <LI><INPUT class=inp1 id=username  name=username autocomplete="off"> </LI></UL>
  <UL>
    <LI class=th>�ܡ��룺 </LI>
    <LI><INPUT class=inp1 id=password  type=password name=password> </LI>
  </UL>
  <P class=save><INPUT id=save tabIndex=4 type=checkbox value=on 
name=saveLoginName><LABEL for=save>��ס��¼��</LABEL> <SPAN class=findPswLink><A 
href="../jsp/getpass">�һ�����</A></SPAN> </P>

  <DIV class=btnLoginArea>
  <BUTTON class=btnSubmit title="�� ¼" type=submit>
  <IMG alt="�� ¼" src="../150jjw/loginbtn.jpg">
  </BUTTON> 
  </DIV></DIV></FORM></DIV></DIV>

  

<!--��׼β begin-->
<SCRIPT language=javascript src="../js/footer_sso.js" type=text/javascript></SCRIPT>
<!--��׼β end-->
</CENTER>
</BODY>
</HTML>
