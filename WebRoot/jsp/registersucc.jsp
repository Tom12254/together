<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD>
<TITLE>150分家教网--武汉站</TITLE>
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
			//检查是否记住登录名
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
				// FlashSoft 注意,最好这个input的autocomplete设定为off
				
				// 需要有下拉框的input对象
				document.getElementById("loginname"),
				{
				// 鼠标经过字体颜色
				overfcolor: "#999",
				// 鼠标经过背景颜色
				overbgcolor: "#e8f4fc",
				// 鼠标离开字体颜色
				outfcolor: "#000000",
				// 鼠标离开背景颜色
				outbgcolor: ""
				},
				// 输入完成后,自动需要跳到的input对象[备选]
				document.getElementById("passcode"));
			}
			window.onload = initUserName;
	</SCRIPT>	
  <DIV id=logoForm>
  <DIV class=loginHead>
  <H6>登录150jjw</H6>
  <SPAN class=help><A href="https://login.sina.com.cn/help.html" target=_blank>帮助</A>
  <IMG  src="../150jjw/help.gif">
  </SPAN>
  </DIV>
  <FORM id=loginform name=loginform action="../servlet/Login.html" method=post>
  <DIV id=login>
  <UL>
    <LI class=th>登录名： </LI>
    <LI><INPUT class=inp1 id=username  name=username autocomplete="off"> </LI></UL>
  <UL>
    <LI class=th>密　码： </LI>
    <LI><INPUT class=inp1 id=password  type=password name=password> </LI>
  </UL>
  <P class=save><INPUT id=save tabIndex=4 type=checkbox value=on 
name=saveLoginName><LABEL for=save>记住登录名</LABEL> <SPAN class=findPswLink><A 
href="../jsp/getpass">找回密码</A></SPAN> </P>

  <DIV class=btnLoginArea>
  <BUTTON class=btnSubmit title="登 录" type=submit>
  <IMG alt="登 录" src="../150jjw/loginbtn.jpg">
  </BUTTON> 
  </DIV></DIV></FORM></DIV></DIV>

  

<!--标准尾 begin-->
<SCRIPT language=javascript src="../js/footer_sso.js" type=text/javascript></SCRIPT>
<!--标准尾 end-->
</CENTER>
</BODY>
</HTML>
