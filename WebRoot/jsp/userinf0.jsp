<%@ page  language="java" import="java.util.*,org.hibernate.*,userinf0.*,userinf1.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0026)https://login.sina.com.cn/ -->
<HTML><HEAD><TITLE>150jjw->�û�����ҳ��</TITLE>
<META http-equiv=Content-type content="text/html; charset=gb2312">
<META http-equiv=Expires content=0>
<META http-equiv=Cache-Control content=no-cache>
<META http-equiv=Pragma content=no-cache>
<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.5730.13" name=GENERATOR>
</HEAD>
<BODY bgColor=#ffffff topMargin=5 marginheight="5">
<CENTER>
<SCRIPT language=javascript src="../js/header_sso.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript type=text/javascript>
header();

</SCRIPT>
<TABLE height=1 cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=bg02></TD></TR></TBODY></TABLE><!--��ӭ�� ���� ����Ԥ�� begin-->
<TABLE height=22 cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR height=21>
    <TD width=1 bgColor=#c1c1c1></TD>
    <TD vAlign=bottom width=260 bgColor=#eaeaea>&nbsp; <FONT color=red><SPAN 
      id=welcome></SPAN>
      <SCRIPT language=javascript src="../js/date.js" 
      type=text/javascript></SCRIPT>
      </FONT></TD>
    <TD width=488 bgColor=#eaeaea>
      <TABLE height=22 cellSpacing=0 cellPadding=0 width=450 border=0>
        <TBODY>
        <%
        userinf0 user=new userinf0();
        user=(userinf0)session.getAttribute("userinf0"); 
        String username=user.getUsername();      
        Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Transaction tx=sess.beginTransaction(); 
		userinf1DAO userinf1dao=new userinf1DAO();
		userinf1 userinf1=new userinf1();
		userinf1=userinf1dao.findById(username);
		int score=userinf1.getScore();
		 
         %>
        <TR>
          <TD width=450>��ӭ���ĵ�����&nbsp;<B><%=username%></B></TD></TR></TBODY></TABLE></TD>
    <TD class=bg02 width=1></TD></TR>
  <TR height=1>
    <TD class=bg02 width=1></TD>
    <TD ></TD>
    <TD ></TD>
    <TD class=bg02 width=1></TD></TR>
  <TR height=5>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=374></TD>
    <TD class=bg01 width=374></TD>
    <TD class=bg02 width=1></TD></TR></TBODY></TABLE><!--��ӭ�� ���� ����Ԥ�� end-->
<TABLE height=1 cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=726></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=1></TD></TR></TBODY></TABLE><!-- ����start -->
<TABLE height=260 cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=1></TD>
    <TD vAlign=top align=middle width=250><!--���˵� begin-->
      <TABLE cellSpacing=0 cellPadding=0 width=240 border=0>
        <TBODY>
        <TR>
          <TD width=240 colSpan=3 height=5></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD></TR>
        <TR>
          <TD class=bg02 width=1></TD>
          <TD class=bg01 
          style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
          width=238 height=20>������Ϣ</TD>
          <TD class=bg02 width=1></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD></TR></TBODY></TABLE>
      <TABLE 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
      cellSpacing=0 cellPadding=0 width=230 border=0>
        <TBODY>
        <TR>
          <TD 
            class=l15>�û���:<b><%=username%></b><br><br>��ǰ����:<b><%=score %></b><BR></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=240 border=0>
        <TBODY>
        <TR>
          <TD width=240 colSpan=3 height=5></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD></TR>
        <TR>
          <TD class=bg02 width=1></TD>
          <TD class=bg01 
          style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
          width=238 height=20>���ø�����Ϣ</TD>
          <TD class=bg02 width=1></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD></TR></TBODY></TABLE>
      <TABLE 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
      cellSpacing=0 cellPadding=0 width=230 border=0>
        <TBODY>
        <TR>
          <TD 
            class=l20>��&nbsp;<A 
            class=a05 
            href="chg_cellnum.jsp" 
            target="blankjsp">�޸��ֻ�����</A><BR><BR>��&nbsp;<A class=a05 
            href="chg_homenum.jsp" 
            target="blankjsp">�޸�סլ�绰</A><BR><BR>��&nbsp;<A class=a05 
            href="chg_password.jsp" 
            target="blankjsp">�޸�����</A><BR></TD></TR></TBODY></TABLE><!-- ��ѻ�Ա vip���� ���İ��û� 2008���� dotcn���� ��������û�-->
      <TABLE cellSpacing=0 cellPadding=0 width=240 border=0>
        <TBODY>
        <TR>
          <TD width=240 colSpan=3 height=5></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD></TR>
        <TR>
          <TD class=bg02 width=1></TD>
          <TD class=bg01 
          style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
          width=238 height=20>�鿴ִ�������Ϣ</TD>
          <TD class=bg02 width=1></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD></TR></TBODY></TABLE>
      <TABLE 
      style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
      cellSpacing=0 cellPadding=0 width=230 border=0>
        <TBODY>
        <TR>
          <TD class=l20 style="PADDING-TOP: 10px">��&nbsp;<A class=a05 
            href="checknow.jsp" 
            target="blankjsp">�鿴��ǰ����</A><BR><BR>��&nbsp;<A class=a05 
            href="checkbefore.jsp" 
            target="blankjsp">�鿴����ɶ���</A><BR><BR>��&nbsp;<A class=a05 
            href="writetext.jsp" 
            target="blankjsp">��������</A><BR><BR>��&nbsp;<A class=a05 
            href="upload.html" 
            target="blankjsp">�ϴ��ļ�</A><BR><BR>��&nbsp;<A class=a05 
            href="teacherpaihang.jsp" 
            target="blankjsp">���ǽ�ʦ����</A><BR></TD></TR></TBODY></TABLE><!--���˵� end--></TD>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=24></TD>
    <TD class=bg02 width=1></TD>
    <TD vAlign=top align=middle width=450><!--�Ҳ�˵� begin-->
      <TABLE cellSpacing=0 cellPadding=0 width=440 border=0>
        <TBODY>
        <TR>
          <TD width=240 colSpan=3 height=5></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD></TR>
        <TR>
          <TD class=bg02 width=1></TD>
          <TD class=bg01 
          style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
          width=448 height=20>ϵͳ������Ϣ</TD>
          <TD class=bg02 width=1></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=440 border=0>
      <TR>
         <TD class=l20 width="440" height="600">
		 <iframe name="blankjsp" frameborder="0" id="frame" src="checknow.jsp"  height="600" width="440" scrolling="no"></iframe>
		  </TD>
         </TR>
          </TABLE><!--�Ҳ�˵� end--></TD>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=1></TD></TR></TBODY></TABLE><!-- ���� end --><!--�±��� begin-->
<TABLE height=1 cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=726></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=1></TD></TR></TBODY></TABLE>
<SCRIPT language=javascript src="../js/footer_sso.js" 
type=text/javascript></SCRIPT>
</CENTER></BODY></HTML>
