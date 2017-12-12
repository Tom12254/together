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

	<!-- Style --> <link rel="stylesheet" href="css/stylea.css" type="text/css" media="all">
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
	  <p style="font-size:30px">家教服务系统</div>
	<h3 style="font-size:30px">教师信息更改入口</h3></body>
<body link="white" alink="white" vlink="white">
<div id="inform">
	
			<h2>信息更改</h2>
			
			<form action="teainfcha" method="post">
			 <input type="hidden" name=type value="0"/> 	
				 <input type="hidden" name=IDcardnum value= "<s:property value="IDcardnum"/>"/>
				<input type="text" name=username placeholder="用户名" required="" value= <s:property value="username"/>>
				<input type="password" name=loadsecret placeholder="密码" required="" value= <s:property value="loadsecret"/>>	
				<input type="text" name=sex placeholder="性别（填男\女）" required="" value= <s:property value="sex"/>>
				<input type="text" name=region placeholder="地区" required="" value= <s:property value="region"/>>
				<input type="text" name=email placeholder="邮箱" required="" value= <s:property value="email"/>>
				<input type="text" name=QQnum placeholder="QQ号码" required="" value= <s:property value="QQnum"/>>
				<input type="text" name=phonenum placeholder="手机号码" required="" value= <s:property value="phonenum"/>>
				
			
			<div class="send-button w3layouts agileits">
					<input type="submit" value="确认修改">
				</form><br/>
			</div>
			
			<div class="clear"></div>
		</div>

		<div class="clear"></div>

	</div>
</body>
</html>