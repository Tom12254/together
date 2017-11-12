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
          <TD>&nbsp;&nbsp;150家教网 &gt;&gt; 教师列表
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
      <td align=center width=80>教师名称</td>
      <td align=center width=150>执教科目</td>
      <td align=center width=160>所在地区</td>
      <td align=center width=50>性别</td>
      <td align=center width=60>视频教学</td>
      <td align=center width=60>积分</td>
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

		 java.lang.String subject;
		 java.lang.String region;
		 java.lang.String sex;
		 subject= (String)request.getAttribute("subject");
		 region = (String)request.getAttribute("region");
		 sex= (String)request.getAttribute("sex");
		 strPage = request.getParameter("page");
		 String strfind=(String)request.getAttribute("a");
		 if(strPage==null){
//表明在QueryString中没有page这一个参数，此时显示第一页数据
          intpage = 1;
          } else{
//将字符串转换成整型
        intpage = java.lang.Integer.parseInt(strPage);
         if(intpage<1) intpage = 1; }
		 int find=1;
		 try{
		 find=java.lang.Integer.parseInt(strfind);
		 }catch(Exception e){}
		 int j=0;
		 int i=0;
		 int pagerecords=25;
		 List users=null;
		 int mypage=(intpage-1)*pagerecords;
		 try{
		 if(find==1){ users =userdao.pagediv(mypage); }
		 if(find==2){ users =userdao.findby0001(sex,mypage); }
		 if(find==3){ users =userdao.findby0010(region,mypage);}
		 if(find==4){ users =userdao.findby0011(sex,region,mypage); }
		 if(find==5){ users =userdao.findby1100(subject,mypage); }
		 if(find==6){ users =userdao.findby1101(subject,sex,mypage); }
		 if(find==7){ users =userdao.findby1110(subject,region,mypage); }
		 if(find==8){ users =userdao.findby1111(subject,region,sex,mypage); }
          }catch(Exception e){}
		 List<userinf1> useradmin=new ArrayList<userinf1>();
		  
			for (ListIterator iterator = users.listIterator(); iterator.hasNext(); )
			{  userinf1 user = (userinf1) iterator.next(); 
			
			   useradmin.add(user);
			  userdao.attachClean(user);
			}
      
     
       sess.clear();
		request.setAttribute("useradmin",useradmin);
     %>
   
     
      <c:forEach var="user" items="${useradmin}">
			<tr>	
			 	
                <td align="center" width=80 >
					${user.username}
				</td>
				<td align="center" width=150>
					${user.subject}
				</td>
                <td align="center" width=160>
					${user.region}
				</td>
				<td align="center" width=50>
					${user.sex}
				</td>
				<td align="center" width=60>
					<%
					i++;
					String videoyn="";
					 String a=useradmin.get(i-1).getVideo();
			         String b="n"; 
			         if(a.charAt(0)>b.charAt(0))videoyn="支持"; 
			           else videoyn="不支持";
					 %>
					 <%=videoyn %>
				</td>
				<td align="center" width=60>
					${user.score} 
				</td>
				
			</tr>
			</c:forEach>
			
	  </TABLE>
	  <form name="setpage" method="post">
	 <table cellSpacing=1 cellPadding=0   width=560  border=0 >
	  <tr>
      <td height="25" colspan="7" align="center">
       总共 <%=users.size()/pagerecords+1%> 页&nbsp;
       第 <%=intpage%> 页 &nbsp;
      <a href="teacher.jsp?page=1">首页</a>&nbsp;
      <%if(intpage>1){%>
      <a href="teacher.jsp?page=<%=intpage-1%>">上一页</a>&nbsp;
             <%
              }
             %>
        <%if(intpage<users.size()/pagerecords){%>
      <a href="teacher.jsp?page=<%=intpage+1%>">下一页</a>&nbsp;
          <%
           }
         %>
      <%if(intpage<users.size()/pagerecords){%>
      <a href="teacher.jsp?page=<%=users.size()/pagerecords%>">最后一页</a>&nbsp;
      <%
           }
         %>
      <font color="#0000FF">转到第
        <input type=text name=page size=2 maxlength=3 value=''>
        页
        <input  class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
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
    <script type="text/javascript">
  function toorder(){


window.location.target("neworder.jsp");

}
  </script>  			
<script language=javascript src="../js/footer_sso.js" 
type=text/javascript></script>
<%
tx.rollback();

useradmin.clear();
 %>
</center>

</BODY>
</html>
