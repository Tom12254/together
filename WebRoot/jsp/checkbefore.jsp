<%@ page language="java" import="java.util.*,myorder.*,userinf0.*,org.hibernate.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../150jjw/sso.css">
  </head>
  
  <body>
  您已完成的订单信息：<br></br>
     <TABLE cellSpacing=1 cellPadding=0 width="440" bgColor=#eaeaea border=0 align="left">
     <thead>
    <%  
        userinf0 user=new userinf0();
        user=(userinf0)session.getAttribute("userinf0");
        String teacher=user.getUsername();
        Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Transaction tx=sess.beginTransaction(); 
        myorderDAO orderdao=new myorderDAO();
       
        List order=orderdao.findByMutiFTeacher(teacher);
        List<myorder> orders=new ArrayList<myorder>();
		  
			for (ListIterator iterator = order.listIterator(); iterator.hasNext(); )
			{  myorder oneorder = (myorder) iterator.next();   
			   orders.add(oneorder);
			   
			}
			
       tx.commit();
       sess.close();
		request.setAttribute("orders",orders);
     %>
     <tr bgcolor=#fbee7b>
         <td width="68" align="center">客户名</td>
         <td width="3" align="center">|</td>
         <td width="80" align="center">联系电话</td>
         <td width="3" align="center">|</td>
         <td width="200" align="center">家庭住址</td>
         <td width="3" align="center">|</td>
         <td width="40" align="center">天数</td>
         <td width="3" align="center">|</td>
         <td width="40" align="center">收入</td>
         
     </tr>
     </thead>
      <c:forEach var="order" items="${orders}">
			<tr>		
				<td align="center" width="68">
					${order.student}
				</td>
				<td width="3" align="center">|</td>
				<td align="center" width="80">
					${order.cellphone}
				</td>
				<td width="3" align="center">|</td>
				<td align="center" width="200" >
					${order.region}
				</td>
				<td width="3" align="center">|</td>
				<td align="center" width="40" >
					${order.days}
				</td>
				<td width="3" align="center">|</td>
				<td align="center" width="40" >
					${order.days*order.fee}
				</td>
				
			</tr>
			</c:forEach>
			
	  </TABLE>
	 
  </body>
</html>
