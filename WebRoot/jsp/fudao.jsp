<%@ page language="java" import="java.util.*,org.hibernate.*,fudao.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<TITLE>��ѯ����_��ѯ�б�_150�ҽ���</TITLE>
<LINK media=all href="../150jjw/sso.css" type=text/css rel=stylesheet>

</head>

<BODY bgColor=#ffffff >
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
    <TD align=middle width=431>
      <TABLE height=40 cellSpacing=2 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=right width=20><IMG height=13 
            src="../150jjw/mcenter_arrow.gif" width=13>
          </TD>
          <TD>&nbsp;&nbsp;150�ҽ��� &gt;&gt; �������б�
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

     <TABLE cellSpacing=1 cellPadding=0 width=440 bgColor=#eaeaea border=0>
    
    <%
        int intpage;
        Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Transaction tx=sess.beginTransaction();
		 fudaoDAO userdao=new fudaoDAO();
		 
		 java.lang.String strPage;
		 strPage = request.getParameter("page");
		 if(strPage==null){
          intpage = 1;
          } else{

        intpage = java.lang.Integer.parseInt(strPage);
         if(intpage<1) intpage = 1; }
		 
		 int j=0;
		 int pagerecords=10;
		 List users =userdao.pagediv((intpage-1)*pagerecords); 
		 List<fudao> useradmin=new ArrayList<fudao>();
		  
			for (ListIterator iterator = users.listIterator(); iterator.hasNext(); )
			{  fudao user = (fudao) iterator.next();   
			   useradmin.add(user);
			   
			}

		request.setAttribute("useradmin",useradmin);
     %>
             ----------------------------------------------  
      <c:forEach var="user" items="${useradmin}">
			<tr>
            <td colspan="2"><span>���ƣ�${user.name}</span></td>
         </tr>
          <tr>
          <td><span>�绰��${user.phone}</span></td>
          <td><span>����ʱ�䣺${user.starttime}</span></td>
         </tr>
           <tr>
           <td colspan="2"><span>��ַ��${user.address}</span></td>
             </tr>
  
			
			</c:forEach>
			
	  </TABLE>
	  <form name="setpage" method="post">
	 <table cellSpacing=1 cellPadding=0 width=440  border=0>
	  <tr>
      <td height="25" colspan="7" align="center"> �ܹ� <%=userdao.count()/pagerecords+1%> ҳ&nbsp;
       �� <%=intpage%> ҳ &nbsp;
      <a href="fudao.jsp?page=1">��ҳ</a>&nbsp;
      <%if(intpage>1){%>
      <a href="fudao.jsp?page=<%=intpage-1%>">��һҳ</a>&nbsp;
             <%
              }
             %>
      <%if(intpage<userdao.count()/pagerecords){%>
      <a href="fudao.jsp?page=<%=intpage+1%>">��һҳ</a>&nbsp;
          <%
           }
         %>
      <%if(intpage<userdao.count()/pagerecords){%>
      <a href="fudao.jsp?page=<%=userdao.count()/pagerecords%>">���һҳ</a>&nbsp;
      <%
           }
         %>
      <font color="#0000FF">ת���� <input type=text name=page size=2 maxlength=3 value=''> ҳ
        <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
          onmouseout="this.className='btn3_mouseout'"
          onmousedown="this.className='btn3_mousedown'"
           onmouseup="this.className='btn3_mouseup'" type=button value=' Go ' onclick="changepage()">
       </font></td>
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
window.location.href="fudao.jsp?page="+page;

}
  </script>  		
<script language=javascript src="../js/footer_sso.js" 
type=text/javascript></script>
</center>

</BODY>
</html>
