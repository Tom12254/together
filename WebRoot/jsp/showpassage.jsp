<%@ page language="java" import="java.util.*,org.hibernate.*,text.*,org.hibernate.cfg.Configuration,java.net.*" pageEncoding="GBK"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<TITLE>�����б�_��Ѷ����_150�ҽ���</TITLE>


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
          <TD>&nbsp;&nbsp;150�ҽ��� &gt;&gt; �����б�
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
		textDAO userdao=new textDAO();
		 java.lang.String strfind;
		 java.lang.String strPage;
		 java.lang.String txtclass;
		 java.lang.String txtname;
		
		 txtname=(String)request.getAttribute("name");
		 if(txtname==null){
		 txtname="";
		 }
		 java.lang.String thetype=null;
         try{thetype=URLDecoder.decode(request.getParameter("thetype"),"utf-8");}catch(Exception e){};
         if(thetype==null)
		 txtclass=(String)request.getAttribute("txtclass");
		 else txtclass=thetype;
		 strfind=(String)request.getAttribute("find");
		 if(strfind==null){
		 strfind="1";
		 }
		 strPage = request.getParameter("page");
		 if(strPage==null){
//������QueryString��û��page��һ����������ʱ��ʾ��һҳ����
          intpage = 1;
          } else{
//���ַ���ת��������
         intpage = java.lang.Integer.parseInt(strPage);
         if(intpage<1) intpage = 1; 
         }
		 int find=1;
		 try{ find=java.lang.Integer.parseInt(strfind);}catch(Exception e){}
		 List users=null;
		 int j=0;
		
		 int pagerecords=16;
		 int mypage=(intpage-1)*pagerecords;
		 try{
		 if(find==1) users=userdao.pagediv(mypage); 
		 if(find==2) users=userdao.findtxtclass(txtclass,mypage);
		 }catch(Exception e){}
		
		 List<text> useradmin=new ArrayList<text>();
		  
			for (ListIterator iterator = users.listIterator(); iterator.hasNext(); )
			{  text user = (text) iterator.next(); 
			 if(txtname=="") useradmin.add(user);
			   else {
			      try{
			       if(user.getName().contains(txtname))useradmin.add(user);
			   }catch(Exception e){}
			   }
			}

		request.setAttribute("useradmin",useradmin);
     %>
   
     
      <c:forEach var="user" items="${useradmin}">
			<tr>	
			  <%
			   j++;
			   String name=useradmin.get(j-1).getName();
                String qingjiajiao="D:/workspace/WebTutor/file/txt/"+name+".txt";
                       %>	
				<td align="center">
					<a href="../jsp/showtxt.jsp?url=<%=java.net.URLEncoder.encode(qingjiajiao,"utf-8") %>"><span>${user.name}</span></a>
				</td>
				
			</tr>
			</c:forEach>
			
	  </TABLE>
	  <form name="setpage" method="post">
	 <table cellSpacing=1 cellPadding=0 width=440  border=0>
	  <tr>
      <td height="25" colspan="7" align="center">
       �ܹ� <%=userdao.count()/pagerecords+1%> ҳ&nbsp;
       �� <%=intpage%> ҳ &nbsp;
      <a href="showpassage.jsp?page=1">��ҳ</a>&nbsp;
      <%if(intpage>1){%>
      <a href="showpassage.jsp?page=<%=intpage-1%>">��һҳ</a>&nbsp;
             <%
              }
             %>
        <%if(intpage<userdao.count()/pagerecords){%>
      <a href="showpassage.jsp?page=<%=intpage+1%>">��һҳ</a>&nbsp;
          <%
           }
         %>
      <%if(intpage<userdao.count()/pagerecords){%>
      <a href="showpassage.jsp?page=<%=userdao.count()/pagerecords%>">���һҳ</a>&nbsp;
      <%
           }
         %>
      <font color="#0000FF">ת����
        <input type=text name=page size=2 maxlength=3 value=''>
        ҳ
        <input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'"
         type=button value=' Go ' onclick="changepage()">
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
window.location.href="showpassage.jsp?page="+page;

}
  </script>  		
<script language=javascript src="../js/footer_sso.js" 
type=text/javascript></script>
</center>

</BODY>
</html>
