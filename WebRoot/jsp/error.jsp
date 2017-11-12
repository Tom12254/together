<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <title>My JSP 'error.jsp' starting page</title>
    
  </head> 
  
 <body >
<h3>错误提示信息：</h3>
  <p>
  <%
    
		String txtname= (String)request.getAttribute("msg");
     
  %>
 <%=txtname %>
   </p>
	</body>
</html>
