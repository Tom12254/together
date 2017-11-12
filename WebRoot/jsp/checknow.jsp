<%@ page language="java" import="java.util.*,myorder.*,userinf0.*,org.hibernate.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../150jjw/sso.css">
  </head>
  
  <body>
  您的当前订单信息：<br></br>
     <TABLE cellSpacing=1 cellPadding=0 width="440" bgColor=#eaeaea border=0 align="left">
     <thead>
    <%  
        userinf0 user=new userinf0();
        user=(userinf0)session.getAttribute("userinf0");
        String teacher=user.getUsername();
        
        myorderDAO orderdao=new myorderDAO();
        List order=orderdao.findByMutiTeacher(teacher);
		List<myorder> orders=new ArrayList<myorder>();
		  
			for (ListIterator iterator = order.listIterator(); iterator.hasNext(); )
			{  myorder oneorder = (myorder) iterator.next();   
			   orders.add(oneorder);
			   
			}
       
		request.setAttribute("orders",orders);
     %>
     <tr bgcolor=#fbee7b>
         <td width="60" align="center">客户名</td>
         <td width="3" align="center">|</td>
         <td width="150" align="center">地点</td>
         <td width="3" align="center">|</td>
         <td width="110" align="center">上课时间</td>
         <td width="3" align="center">|</td>
         <td width="110" align="center">联系电话</td>
     </tr>
     </thead>
      <c:forEach var="order" items="${orders}">
			<tr>		
				<td align="center">
					${order.student}
				</td>
				 <td width="5" align="center">|</td>
				<td align="center" >
					${order.region}
				</td>
				<td width="5" align="center">|</td>
				<td align="center" >
					${order.teachtime}
				</td>
				<td width="5" align="center">|</td>
				<td align="center" >
					${order.cellphone}
				</td>
				
			</tr>
			</c:forEach>
			
	  </TABLE>
	 
  </body>
</html>
