<%@ page language="java" import="java.util.*,org.hibernate.*,userinf1.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<TITLE>教师列表_资讯中心_150家教网</TITLE>


<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>

</head>

<BODY bgColor=#ffffff >
<CENTER>
<SCRIPT language=javascript src="../js/commonhead.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript type=text/javascript>
myheader();
</SCRIPT>

<TABLE cellSpacing=0 cellPadding=0 width=560  border=0 >
  <TBODY >
  <TR >
    <TD class=bg02 width=1></TD>
    <TD class=bg01 width=8></TD>
    <TD align=middle width=431>
      <TABLE height=40 cellSpacing=2 cellPadding=0  width="100%" border=0 >
        <TBODY>
        <TR>
          <TD align=right width=20><IMG height=13 
            src="../150jjw/mcenter_arrow.gif" width=13>
          </TD>
          <TD>&nbsp;&nbsp;150家教网 &gt;&gt; 支持视频教学的教师列表
          </TD>
          <TD align=right><IMG height=13 
            src="../150jjw/mcenter_ico_help.gif" width=13> <A 
            class=a02 href="http://login.sina.com.cn/help.html" 
            target=_blank>帮助</A>
           </TD>
     </TR>
     </TBODY>
     </TABLE>
      <TABLE cellSpacing=2 cellPadding=0 width="100%"  border=0 >
        <TBODY>
        <TR>
          <TD background=../150jjw/mcenter_dot.gif 
        height=1>
          </TD>
         </TR>
        </TBODY>
      </TABLE>
      <TABLE cellSpacing=1 cellPadding=0  width=560 bgColor=#eaeaea border=0 >
      <tr>
      <td align=center width=100>教师名称</td>
      <td align=center width=160>执教科目</td>
      <td align=center width=170>所在地区</td>
      <td align=center width=50>性别</td>
      
      <td align=center width=80>积分</td>
      </tr>
      </TABLE>
     <TABLE cellSpacing=1 cellPadding=0  width=560 bgColor=#eaeaea border=0 >
    
    <%
        int intpage;
        Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Transaction tx=sess.beginTransaction();
		 userinf1DAO userdao=new userinf1DAO();
		 
		 java.lang.String strPage;
		 strPage = request.getParameter("page");
		 if(strPage==null){
//表明在QueryString中没有page这一个参数，此时显示第一页数据
          intpage = 1;
          } else{
//将字符串转换成整型
        intpage = java.lang.Integer.parseInt(strPage);
         if(intpage<1) intpage = 1; }
		 
		int j=0;
		 int pagerecords=25;
		 List users =userdao.pagediv((intpage-1)*pagerecords); 
		 List<userinf1> useradmin=new ArrayList<userinf1>();
		  
			for (ListIterator iterator = users.listIterator(); iterator.hasNext(); )
			{  userinf1 user = (userinf1) iterator.next(); 
			String a=user.getVideo();
			String b="n"; 
			   if(a.charAt(0)>b.charAt(0)) useradmin.add(user);
			   
			}

		request.setAttribute("useradmin",useradmin);
     %>
   
     
      <c:forEach var="user" items="${useradmin}">
			<tr>	
			 	
                <td align="center" width=100 >
					${user.username}
				</td>
				<td align="center" width=160>
					${user.subject}
				</td>
                <td align="center" width=170>
					${user.region}
				</td>
				<td align="center" width=50>
					${user.sex}
				</td>
				
				<td align="center" width=80>
					${user.score} 
				</td>
				
			</tr>
			</c:forEach>
			
	  </TABLE>
	  <form name="setpage" method="post">
	 <table cellSpacing=1 cellPadding=0   width=560  border=0>
	  <tr>
      <td height="25" colspan="7" align="center">
       总共 <%=userdao.count()/pagerecords+1%> 页&nbsp;
       第 <%=intpage%> 页 &nbsp;
      <a href="teacher.jsp?page=1">首页</a>&nbsp;
      <%if(intpage>1){%>
      <a href="teacher.jsp?page=<%=intpage-1%>">上一页</a>&nbsp;
             <%
              }
             %>
        <%if(intpage<userdao.count()/pagerecords){%>
      <a href="teacher.jsp?page=<%=intpage+1%>">下一页</a>&nbsp;
          <%
           }
         %>
      <%if(intpage<userdao.count()/pagerecords){%>
      <a href="teacher.jsp?page=<%=userdao.count()/pagerecords%>">最后一页</a>&nbsp;
      <%
           }
         %>
      <font color="#0000FF">转到第
        <input type=text name=page size=2 maxlength=3 value=''>
        页
        <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'" type=button value=' Go ' onclick="changepage()">
        </font></td>
    </tr>
    <tr > 
    <td align="center">
    <br>
    <a href="neworder.jsp"><span>新建订单</span></a>
    </td>
    </tr>
	  </table>
	  </form>
       <BR>
       </TD>
    <TD class=bg01 width=8></TD>
    <TD class=bg02 width=1></TD>
    
    </TR></TBODY></TABLE>
  <script type="text/javascript">
  function changepage(){

var page=document.setpage.page.value;
window.location.href="teacher.jsp?page="+page;

}
  </script>  		
<script language=javascript src="../js/footer_sso.js" 
type=text/javascript></script>
</center>

</BODY>
</html>
