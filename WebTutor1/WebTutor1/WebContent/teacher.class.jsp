<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
#class {
		float: left;
		margin: 5px;
		padding: 15px;
		width: 300px;
		height: 100px;
		border: 1px solid black;
} 
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
		.abc{text-decoration:none;
		color: black;}	
</style>
</head>
<body background="images\主楼.jpg">
<img src="images\校徽.jpg" width="70" height="70" />
 
	<div id="header1";class="a";align="center">
		<h1 style="font-size:50px ;text-align:center">哈尔滨工业大学</h1></div>
	 <div id="header2";class="a";align="center">
		<p style="font-size:30px">家教服务系统</div>
	<h3 align="right"><button><a href="teacher.edge.jsp" class="abc">退出</a></button></h3>
	<div id="class">
	<h>英语一班</h><br>
	<img src="images\课程头像.jpg" width="70" height="70"/>
	
	<button>查看学生信息</button>
	<button>布置作业</button>
	</div>

</body>
</html>