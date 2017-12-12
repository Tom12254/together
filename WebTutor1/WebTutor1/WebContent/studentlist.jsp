<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;  charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" style="border-collapse:collapse;">  
	<tr>  
	<td>姓名</td>
	</tr>
	<s:iterator value="Userlist0" var="b" >  
	<tr>  
	<td>
	<s:url action="detail" var="Link">
			<s:param name="username"><s:property value="b"/></s:param>
	</s:url>
	<a href="${Link}"><s:property value="b"/></a>
	</td> 
	</tr>  
	<br/>  
	</s:iterator>  
</table> 
</body>
</html>