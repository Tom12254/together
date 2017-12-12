<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

	<style>
	#header1{
		height:70px;
		width:420px;
		padding:5px;
		text-align:center;
		position: absolute;
		font-family:华文行楷;
		left:50px;
		top:0; }
	#header2{
		height:100px;
		width:400px;
		padding:5px;
		text-align:right;
		position: absolute;
		font-family:隶书;
		left:150px;
		top:50px;
		}
	#back{
		line-height:30px;
		height:300px;
		width:100px;
		float:right;
		padding:5px; }
	#nav {
		line-height:30px;
		background-color:rgba(255, 255, 255, 0.3); 
		height:400px;
		width:200px;
		float:left;
		padding:5px; 
		top:50px;}
	#section {
    width:350px;
    float:center;
    padding:10px; }
	#inform {
		float: left;
		margin: 5px;
		padding: 15px;
		background-color:rgba(255, 255, 255, 0.3); 
		width: 300px;
		height: 300px;
		border: 1px solid black;} 
	.abc{text-decoration:none;
		color: black;}
	</style>
	
	

</head>
<!-- //Head -->
	
<!-- Body -->
<body background="images\主楼.jpg">
<img src="images\校徽.jpg" width="70" height="70" />
 
	<div id="header1";class="a";align="center">
	 <h1 style="font-size:50px ;text-align:center">哈尔滨工业大学</h1></div>
	 <div id="header2";class="a";align="center">
	  <p style="font-size:30px">家教服务系统</div></body>
<body link="black" alink="black" vlink="black">
	<h4 align="right">
		<button><a href="adminstor.jsp" class="abc">退出</a></button></h4>
	<div id="nav">
	<b>（请选择管理员）</b>
	<u1>
	<table border="1" style="border-collapse:collapse;">  
		<tr>  
		<td>姓名</td>
		</tr>  
		<s:iterator value="Userlist" var="b" >
		<tr>  
		<td>
		<s:url action="detail" var="Link">
				<s:param name="username"><s:property value="b"/></s:param>
		</s:url>
		<a href="${Link}"><s:property value="b"/></a>
		
		</td> 
		</tr> 
		</s:iterator> 
		<br/>    
	</table> 
	</u1>
	</div>
	 </body>
</html>