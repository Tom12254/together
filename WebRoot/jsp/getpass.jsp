<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>找回密码_会员中心_150家教网</TITLE>


<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>

</HEAD>
<BODY bgColor=#ffffff leftMargin=0 topMargin=0>

<CENTER>
<SCRIPT language=javascript src="../js/header_sso.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript type=text/javascript>
header();
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
          <TD align=right width=20><IMG height=13  src="../150jjw/mcenter_arrow.gif" width=13></TD>
          <TD>&nbsp;&nbsp;150家教网 &gt;&gt; 找回密码</TD>
          <TD align=middle width=60><IMG height=13  src="../150jjw/mcenter_ico_help.gif" width=13> <A 
            class=a02 href="http://login.sina.com.cn/help.html" 
            target=_blank>帮助</A></TD>
         </TR>
         </TBODY>
      </TABLE>
      <TABLE cellSpacing=2 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD background=../150jjw/mcenter_dot.gif height=1></TD>
        </TR>
        </TBODY>
      </TABLE>
      <TABLE height=10 cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD></TD></TR></TBODY>
      </TABLE>
      <TABLE cellSpacing=1 cellPadding=0 width=540 bgColor=#999999 border=0>
        <TBODY>
        <TR>
          <TD bgColor=#f7f7f7>
            <TABLE cellSpacing=10 cellPadding=10 width="100%" border=0>
              <TBODY>
              <TR>
                <TD>
                <form name="getpass" action="../servlet/getpass.html" method="post">
                  <TABLE id=memberName cellSpacing=0 cellPadding=0 width="100%"  border=0>
                    <TBODY>
                    <TR>
                      <TD class=txt01 width=150><SPAN  class=vip>*</SPAN>请输入登录名称：</TD>
                      <TD class=txt02 width=310><INPUT id=loginname 
                        onblur=checkloginname(this.id);checkname(this) 
                        onfocus="javascript:this.style.background='#CCFF99';" 
                        name=loginname autocomplete="off"> 
                      </TD>
                    </TR>
                    </TBODY>
                  </TABLE>
                  <TABLE id=pincode cellSpacing=0 cellPadding=0 width="100%"  border=0>
                    <TBODY>
                    <TR>
                      <TD colSpan=2 height=10></TD>
                    </TR>
                    <TR>
                      <TD colSpan=2>
                        <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                          <TBODY>                      
                            <TD class=txt01 style="PADDING-TOP: 14px" vAlign=top align=right width=150><SPAN   class=vip>*</SPAN>请输入注册邮箱：</TD>
                            <TD class=txt02 vAlign=center width=310>
                              <TABLE cellSpacing=0 cellPadding=0 border=0>
                                <TBODY>
                                <TR>
                                 <TD><INPUT class=input02 tabIndex=5    maxLength=80 
                                   name=safemail1 onfocus="javascript:this.style.background='#CCFF99';">&nbsp;@&nbsp;
                                   <INPUT class=input02   tabIndex=5    maxLength=80 name=safemail2 onfocus="javascript:this.style.background='#CCFF99';">
                                 </TD> 
                                </TR>
                               </TBODY>
                              </TABLE>
                            </TD>
                        <TR>
                            <TD align=middle colSpan=2><INPUT class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
                                 onmouseout="this.className='btn3_mouseout'"
                                 onmousedown="this.className='btn3_mousedown'"
                                 onmouseup="this.className='btn3_mouseup'" type=submit value=" 提　交 " name=Submit></TD>
                          </TR></TABLE>
                          </TD></TR>
                          </TBODY></TABLE>
                          </form>
                          </TD></TR></TBODY>
                          </TABLE></TD></TR></TABLE><BR>
                          </TD>
<TD class=bg01 width=8></TD>
<TD class=bg02 width=1></TD></TR></TBODY></TABLE>
<SCRIPT language=javascript src="../js/footer_sso.js" 
type=text/javascript></SCRIPT>
</CENTER>
</BODY>
</HTML>
