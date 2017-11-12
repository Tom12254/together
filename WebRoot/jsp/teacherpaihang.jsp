<%@ page language="java" import="java.util.*,userinf1.*,org.hibernate.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../150jjw/sso.css">
  </head>
  
  <body>
  150jjw明星教师TOP10：<br></br>
     <TABLE cellSpacing=1 cellPadding=0 width="440" bgColor=#eaeaea border=0 align="left">
     <thead>
    <%  
        userinf1DAO userdao=new userinf1DAO();
        List users=userdao.top10();
		List<userinf1> userinf1=new ArrayList<userinf1>();
		  
			for (ListIterator iterator = users.listIterator(); iterator.hasNext(); )
			{  userinf1 oneuser = (userinf1) iterator.next();   
			   userinf1.add(oneuser);
			   
			}
      
		request.setAttribute("userinf1",userinf1);
     %>
     <tr bgcolor=#fbee7b>
         <td width="75" align="center">排名</td>
         <td width="3" align="center">|</td>
         <td width="100" align="center">用户名</td>
         <td width="3" align="center">|</td>
         <td width="200" align="center">主讲科目</td>
         <td width="3" align="center">|</td>
         <td width="75" align="center">积分</td>    
     </tr>
     </thead>
      <c:forEach var="userinf1" items="${userinf1}" varStatus="status">
			<tr>
			<td align="center" >
					${status.index+1 }
				</td>
				<td width="5" align="center">|</td>		
				<td align="center">
					${userinf1.username}
				</td>
				 <td width="5" align="center">|</td>
				<td align="center" >
					${userinf1.subject}
				</td>
				<td width="5" align="center">|</td>
				<td align="center" >
					${userinf1.score}
				</td>		
			</tr>
			</c:forEach>
			
	  </TABLE>
	 
  </body>
</html>
