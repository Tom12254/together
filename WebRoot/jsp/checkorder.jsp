<%@ page language="java" import="java.util.*,myorder.*,userinf0.*,org.hibernate.*,org.hibernate.cfg.Configuration" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../150jjw/sso.css"> 
  </head>
  
  <body> 
  当前待批订单：<br></br>
  <tr>
     <td>
     <form name="checkorder" action="../servlet/checkorder.html" method="post"  >
     <TABLE cellSpacing=1 cellPadding=0 width="300" bgColor=#eaeaea border=0 align="left">

    <%  
        myorderDAO orderdao=new myorderDAO();
        userinf0DAO userdao=new userinf0DAO();
        List myorder=orderdao.firstNstatus();
        myorder oneorder=new myorder(0,"you","have","no","no","order","n","check","yes","n",0,10);
        String teachernum="order";
		List<myorder> orders=new ArrayList<myorder>();
		  
			for (ListIterator iterator = myorder.listIterator(); iterator.hasNext(); )
			{  oneorder = (myorder) iterator.next();   
			   orders.add(oneorder);
			   teachernum=userdao.findById(oneorder.getTeacher()).getCellphone();
			}

     %>
     <tr bgcolor=#fbee7b>
     
         <td width="80" align="center">订单号码<input type=hidden name=ordernum id=ordernum value=<%=oneorder.getOrdernum()%> ></input></td>
         <td width="3" align="center">|</td>
         <td width="80" align="center">客户名称</td>
         <td width="3" align="center">|</td>
         <td width="134" align="center">客户电话</td>
   
     </tr>

      
			<tr>		
				<td align="center">
					<%=oneorder.getOrdernum()%>
				</td>
				 <td width="3" align="center">|</td>
				<td align="center" >
					<%=oneorder.getStudent() %>
				</td>
				<td width="3" align="center">|</td>
				<td align="center" >
					<%=oneorder.getCellphone() %>
				</td>
				
			</tr>
		    <tr>
		  <td width="80" align="center"></td>
          <td width="3" align="center"></td>
          <td width="80" align="center"><input class=btn3_mouseout onmouseover="this.className='btn3_mouseover'"
onmouseout="this.className='btn3_mouseout'"
onmousedown="this.className='btn3_mousedown'"
onmouseup="this.className='btn3_mouseup'" type=submit name="censor" value="确认审批"></input></td>
          <td width="3" align="center"></td>
          <td width="134" align="center"></td>
			</tr>
     </TABLE>
   </form>
	  </td>
	  <td>
	  <table cellSpacing=0 cellPadding=0 width="140" bgColor=#eaeaea border=0 align="left">
	  <tr bgcolor=#fbee7b>
	  <td align="center">教师电话</td>
	  </tr>
	  
			<tr >		
				<td align="center">
					<%=teachernum %>
				</td>
			
			</tr>
			<tr>		
				<td align="center">	</td>
			</tr>
     </table>
   </td>
     <td>
     <table cellSpacing=0 cellPadding=0 width="140" bgColor=#eaeaea border=0 align="left">
       </table>
     </td>  
    
  </tr>

  </body>
</html>
