<%--    
 文件名：adminuser.jsp    
 作  者：王伟  
 描述：用于管理员处理各种业务  
--%>   
<%@ page  language="java" import="java.util.*,java.text.SimpleDateFormat,org.hibernate.*,adminuser.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0026)https://login.sina.com.cn/ -->
<HTML>

<HEAD>

<TITLE>150jjw->用户管理页面</TITLE>

<META http-equiv=Content-type content="text/html; charset=gb2312">
<META http-equiv=Expires content=0>
<META http-equiv=Cache-Control content=no-cache>
<META http-equiv=Pragma content=no-cache>
<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.5730.13" name=GENERATOR>

<style type="text/css"> 
input 
{ 
  border-top:0px ; 
  border-left:0px ; 
  border-right:0px ; 
  border-bottom:0px ; 

} 

</style>

</HEAD>
<BODY bgColor=#ffffff topMargin=5 marginheight="5" onload="tick()">
<CENTER>

<SCRIPT language=javascript src="../js/header_sso.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript type=text/javascript>
header();
</SCRIPT>

<TABLE height=1 cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=bg02></TD>
    </TR></TBODY>
  </TABLE>
  
<!--欢迎词 日期 -->
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
           adminuser user=new adminuser();
           user=(adminuser)session.getAttribute("adminuser"); 
            String username=user.getUsername();      
            String date=new SimpleDateFormat("MM/dd HH:mm:ss").format(Calendar.getInstance().getTime()); 
            session.setAttribute("num",456);
         
        %>
         <TR>
          <TD width=450>欢迎您的到来：&nbsp;<B><%=username%></B></TD></TR></TBODY></TABLE></TD>
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
    <TD class=bg02 width=1></TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE height=1 cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=726></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=1></TD>
  </TR>
  </TBODY>
</TABLE>

<!-- 内容start -->
<TABLE height=260 cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=1></TD>
    <TD vAlign=top align=middle width=250><!--左侧菜单 begin-->
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
          width=238 height=20>基本信息</TD>
          <TD class=bg02 width=1></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD>
        </TR>
        </TBODY>
        </TABLE>
        
      
       <TABLE  style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
           cellSpacing=0 cellPadding=0 width=230 border=0>
        <TBODY>
        <TR>
          <TD  class=l15>用户名:<b><%=username%></b></TD>  
        </TR>
        <tr>
            <TD class=l15>日期:
            <input id="showTime" readnoly /> 
            
<script type="text/javascript"> 
function getNowTime(){ 
var now = new Date(); 
document.getElementById("showTime").value=now.getFullYear()+"-"+(now.getMonth()+1)+"-"+now.getDate(); 
document.getElementById("showTime").value+=" "+now.getHours()+":"+now.getMinutes()+":"+now.getSeconds(); 
} 
window.setInterval("getNowTime()",1000); 
</script> 
            
             </TD>
         </tr>  
        </TBODY>
      </TABLE>
      
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
          width=238 height=20>设置个人信息</TD>
          <TD class=bg02 width=1></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD>
        </TR>
        </TBODY>
      </TABLE>
      <TABLE  style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
             cellSpacing=0 cellPadding=0 width=230 border=0>
        <TBODY>
        <TR>
          <TD 
            class=l20>·&nbsp;<A 
            class=a05 
            href="chg_cellnum.jsp" 
            target="blankjsp">修改手机号码</A><BR><BR>·&nbsp;<A class=a05   
            href="chg_password.jsp" 
            target="blankjsp">修改密码</A><BR></TD>
        </TR>
        </TBODY>
      </TABLE>
      
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
          width=238 height=20>管理 操作</TD>
          <TD class=bg02 width=1></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD>
        </TR>
        </TBODY>
      </TABLE>
       <FORM NAME="myform" action="../servlet/showfiles.html" method="post"> 
      <TABLE style="PADDING-RIGHT: 5px; PADDING-LEFT: 5px; PADDING-BOTTOM: 5px; PADDING-TOP: 5px" 
              cellSpacing=0 cellPadding=0 width=230 border=0>
        <TBODY>
        
        <TR>
          <TD style="PADDING-TOP: 10px">·&nbsp;<A class=a05 
            href="studentpingfen.jsp" 
            target="blankjsp">客户订单评分</A><BR><BR>·&nbsp;<A class=a05 
            href="finishregister.jsp" 
            target="blankjsp">完成教员注册</A><BR><BR>·&nbsp;<A class=a05 
            href="neworder.jsp" 
            target="blankjsp">新建客户订单</A><BR><BR>·&nbsp;<A class=a05 
            href="checkorder.jsp" 
            target="blankjsp">查看待批订单</A><BR><BR> ·&nbsp;<A class=a05 
            href="modifyorder.jsp" 
            target="blankjsp">修改订单信息</A><BR><BR>·&nbsp;<A class=a05 
            href="teacherpaihang.jsp" 
            target="blankjsp">明星教师排行</A><BR><br>·&nbsp;<A class=a05 
            href="checkorderpay.jsp" 
            target="blankjsp">订单付款确认</A><BR><BR>·&nbsp;<A class=a05 
            href="grant.jsp" 
            target="blankjsp">授权管理员</A><BR><BR>·&nbsp;<A class=a05 
            href="gonggao.jsp" 
            target="blankjsp">更新公告</A><BR><BR>·&nbsp;<A class=a05 
            href="addfudao.jsp" 
            target="blankjsp">添加辅导班</A><BR><BR></TD></TR></TBODY></TABLE><!--左侧菜单 end--></FORM></TD>
          <TD class=bg02 width=1></TD>
          <TD class=bg01 width=24></TD>
          <TD class=bg02 width=1></TD>
     <TD vAlign=top align=middle width=450>
      
      <!--右侧菜单 begin-->
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
          width=448 height=20>系统处理信息</TD>
          <TD class=bg02 width=1></TD></TR>
        <TR>
          <TD class=bg02 width=1 height=1></TD>
          <TD class=bg02 width=238 height=1></TD>
          <TD class=bg02 width=1 height=1></TD>
        </TR>
        </TBODY>
       </TABLE>
      
       <TABLE cellSpacing=0 cellPadding=0 width=440 border=0>
        <TR>
         <TD class=l20 width="440" height="600">
		 <iframe name="blankjsp" frameborder="0" id="frame" src="checkorder.jsp"  height="600" width="440" scrolling="no"></iframe>
		  </TD>
         </TR>
       </TABLE><!--右侧菜单 end--></TD>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=1></TD>
  </TR>
  </TBODY>
</TABLE>
<!-- 内容 end -->

<!--下边线 begin-->
<TABLE height=1 cellSpacing=0 cellPadding=0 width=750 border=0>
  <TBODY>
  <TR>
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=726></TD>
    <TD class=bg01 width=10></TD>
    <TD class=bg02 width=1></TD>
  </TR>
  </TBODY>
</TABLE>
<!--下边线 end-->

<!--标准尾-->
<SCRIPT language=javascript src="../js/footer_sso.js" 
type=text/javascript></SCRIPT>

</CENTER>
</BODY>
</HTML>
