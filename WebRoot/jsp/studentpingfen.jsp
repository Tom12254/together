<%@ page language="java" import="java.util.*,appreciation.*,myorder.*,org.hibernate.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../150jjw/sso.css">
    
  </head>
  
  <body>
  ������û�����ֵ��û���<br></br>
  <form name="pingfen" action="../servlet/pingfen.html" method="post">
   
     <TABLE cellSpacing=1 cellPadding=0 width="440" bgColor=#eaeaea border=0 align="left">
     <thead>
    <%  
        List<myorder> myorder=new ArrayList<myorder>();
        myorderDAO myorderdao=new myorderDAO();
        appreciationDAO appreciationdao=new appreciationDAO();
        List appreciations=appreciationdao.findByProperty("score",0);
        
		  
			for (ListIterator iterator = appreciations.listIterator(); iterator.hasNext(); )
			{  appreciation oneapp = (appreciation) iterator.next(); 
			   myorder onemyorder=myorderdao.findById(oneapp.getOrdernum());  
			   myorder.add(onemyorder);
			   
			}  
	  Integer i=0; 
	  Integer j=0;
      int size=myorder.size();
		request.setAttribute("myorder",myorder);
     %>
     
     <tr bgcolor=#fbee7b>
         <td width="75" align="center">��ʦ<input type="hidden" name="size" value=<%=size %> } /></td>
         <td width="3" align="center">|</td>
         <td width="75" align="center">�ͻ�</td>
         <td width="3" align="center">|</td>
         <td width="108" align="center">�ͻ�����</td>
         <td width="3" align="center">|</td>
         <td width="120" align="center">ԤԼʱ��</td> 
         <td width="3" align="center">|</td>
         <td width="50" align="center">����</td>   
     </tr>
     </thead>
      <c:forEach var="myorder" items="${myorder}">
			<tr>
			<%i++; %>
			<%j++; %>
			<td align="center" >
					${myorder.teacher}<input type="hidden"  name=<%="teacher"+i.toString() %>  value=<%=myorder.get(j-1).getTeacher()%> />
				</td>
				<td width="3" align="center">|</td>		
				<td align="center">
					${myorder.student}
				</td>
				 <td width="3" align="center">|</td>
				<td align="center" >
					${myorder.cellphone}
				</td>
				<td width="3" align="center">|</td>
				<td align="center" >
					${myorder.datetime}<input type="hidden"  name=<%="ordernum"+i.toString() %>  value=<%=myorder.get(j-1).getOrdernum()%> />
				</td>		
				<td width="3" align="center">|</td>
				<td align="center" width="50" >
					<input type="text" maxlength="3" name=<%="score"+j.toString()%> width="50" value="0"/>
				</td>		
			</tr>
			</c:forEach>
			<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td align="center"><input  class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'" type="submit" value="�ύ����" name="subminscore"/></td>
			</tr>
	  </TABLE> 
	  </form>
  </body>
</html>