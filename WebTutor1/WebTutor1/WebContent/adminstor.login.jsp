<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="css/stylea.css" type="text/css" >
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
		left:200px;
		top:50px;
		}
	#inform {
		width:30%;
		margin: 0 auto;
		padding: 40px;
		background-color: rgba(10, 10, 10, 0.77);
		border: 1px ridge rgba(238, 238, 238, 0.13);
		border-radius: 5px;
		<!-- -moz-box-shadow: 0 -5px 10px 1px rgba(16, 16, 16, 0.57); -->
		<!-- -webkit-box-shadow: 0 -5px 10px 1px rgba(16, 16, 16, 0.57);
		box-shadow: 0 -5px 10px 1px rgba(16, 16, 16, 0.57); -->
		border-bottom: none;
		border-bottom-left-radius: initial;
		border-bottom-right-radius: initial;} 
	#nav {
		line-height:30px;
		background-color:rgba(255, 255, 255, 0); 
		height:300px;
		width:100px;
		float:left;
		padding:5px; 
		top:50px;}
	.abc{text-decoration:none;
		color: black;}
	</style>
</head>
<body background="images\主楼.jpg">
<img src="images\校徽.jpg" width="70" height="70" />
 
	<div id="header1";class="a";align="center">
	 <h1 style="font-size:50px ;text-align:center"></h1></div>
	 <div id="header2";class="a";align="center">
	  <p style="font-size:30px">家教服务系统</div><br><br>
	<h3 style="font-size:30px">管理员登录入口</h3></body>
	<h3 align="right"><button><a href="index.jsp" class="abc">退出</a></button></h3>
<body link="white" alink="white" vlink="white">

	<div id="inform">

		
			<h2>登 录</h2>
			<form action="query" method="post">
				<input type="text" name="username" placeholder="用户名" required="">
				<input type="password" name="secretkey" placeholder="密码" required="">
			
			<div class="send-button w3layouts agileits">
				<form>
					<input type="submit" value="登 录">
				</form>
			</div>
			还没有账号？
			<a href="adminstor.create.jsp">注册</a>
			</form>
			<div class="clear"></div>
		</div><div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
		<div class="register w3layouts agileits">
			
		

		<div class="clear"></div>

	</div>
</body>
</html>