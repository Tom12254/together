<%@ page language="java" import="java.util.*,bean.*,java.net.*" pageEncoding="GBK"%>
<jsp:directive.page import="java.net.URLDecoder"/>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<TITLE>文章列表_资讯中心_150家教网</TITLE>


<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>


</head>

<BODY bgColor=#ffffff leftMargin=0 topMargin=0>
<CENTER>
<SCRIPT language=javascript src="../js/commonhead.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript type=text/javascript>
myheader();
</SCRIPT>

<TABLE cellSpacing=0 cellPadding=0 width=440 border=0>
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
          <TD>&nbsp;&nbsp;150家教网 &gt;&gt; 文章列表
          </TD>
          <TD align="center" width=60><IMG height=13 
            src="../150jjw/mcenter_ico_help.gif" width=13> <A 
            class=a02 href="http://login.sina.com.cn/help.html" 
            target=_blank>帮助</A>
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
   <form name="deletxt" action="../servlet/deletxt.html" method="post">
     <TABLE cellSpacing=1 cellPadding=0 width=440 bgColor=#eaeaea border=2>
     <%   
         int type=0;
        try{ type=(Integer)session.getAttribute("type");} 
        catch(Exception e){
        
        }
         java.lang.String url;
         url=URLDecoder.decode(request.getParameter("url"),"utf-8");
		// url = request.getParameter("url");  
		 
		 opfile filecontrol=new opfile();
         String string=filecontrol.readfile(url);
      %>
    <tr border=2>
    
    <td height="30" border=2 width=440><h4><pre><%=string%></pre></h4></td>
    
    </tr>	
    <tr>
    <td><input type=hidden name="myurl" value=<%=url %>></input>
     <%if(type==1){%>
      <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'"
       type=submit name=submit value="删除" ></input>
          <%
           }
         %>
    </td>
    </tr>		
	  </TABLE>
</form>
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
