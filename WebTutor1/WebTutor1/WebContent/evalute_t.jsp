<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Education &mdash; Free Website Template, Free HTML5 Template by freehtml5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	

	

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">

	<!-- Pricing -->
	<link rel="stylesheet" href="css/pricing.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">
	
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<style>
		#header1{
		height:70px;
		width:420px;
		padding:5px;
		text-align:center;
		position: absolute;
		font-family:华文行楷;
		left:150px;
		top:50px; }
	#header2{
		height:100px;
		width:400px;
		padding:5px;
		text-align:right;
		position: absolute;
		font-family:隶书;
		left:150px;
		top:100px;
		}
	</style>

	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-right">
						<p class="site"></p>
						<p class="num"></p>
						<!-- <ul class="fh5co-social">
							<li><a href="#"><i class="icon-facebook2"></i></a></li>
							<li><a href="#"><i class="icon-twitter2"></i></a></li>
							<li><a href="#"><i class="icon-dribbble2"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul> -->
					</div>
				</div>
			</div>
		</div>
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<img src="images\校徽.jpg" width="70" height="70" /></a></div>
					</div>
	<div id="header1";class="a";align="center">
		<h1 style="font-size:50px ;text-align:center">哈尔滨工业大学</h1></div>
	 <div id="header2";class="a";align="center">
		<p style="font-size:30px">家教服务系统</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li class="btn-cta"><a href="student.login.html"><span>学生登录/注册</span></a></li>
							<li class="btn-cta"><a href="teacher.login.html"><span>教师登录/注册</span></a></li>
							
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</nav>
	
	<aside id="fh5co-hero">
		<div class="flexslider">
			<ul class="slides">
		   	<li style="background-image: url(images/主楼.jpg);">
		   		<div class="overlay-gradient"></div>
		   		<div class="container">
		   			<div class="row">
			   			<div class="col-md-8 col-md-offset-2 text-center slider-text">
			   				<div class="slider-text-inner">
			   					<h1>这里是评价页面，您可以通过这里进行学生评价</h1>
								<h1>Here is the evaluation page, and you can evaluate your student here.</h1>
			   				</div>
			   			</div>
			   		</div>
		   		</div>
		   	</li>
		  	</ul>
	  	</div>
	</aside>
	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="fh5co-contact-info">
						<h3>联系开发者</h3>
						<ul>
							<li class="address">哈工大 <br> </li>
							<li class="phone"><a href="tel://1234567920">188****0620</a></li>
							<li class="email"><a href="mailto:info@yoursite.com">779109194@qq.com</a></li>
							<!-- <li class="url"><a href="http://freehtml5.co">freeHTML5.co</a></li> -->
						</ul>
						<meta charset="utf-8">	
							
							<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
							
							
							<script type="text/javascript">
							var check = 0;//该变量是记录当前选择的评分
							var time = 0;//该变量是统计用户评价的次数，这个是我的业务要求统计的（改变评分不超过三次），可以忽略
							
							/*over()是鼠标移过事件的处理方法*/
							function over(param){
								if(param == 1){
									$("#star1").attr("src","img/star_red.png");//第一颗星星亮起来，下面以此类推
									$("#message").html("很差");//设置提示语，下面以此类推
								}else if(param == 2){
									$("#star1").attr("src","img/star_red.png");
									$("#star2").attr("src","img/star_red.png");
									$("#message").html("比较差");
								}else if(param == 3){
									$("#star1").attr("src","img/star_red.png");
									$("#star2").attr("src","img/star_red.png");
									$("#star3").attr("src","img/star_red.png");
									$("#message").html("一般");
								}else if(param == 4){
									$("#star1").attr("src","img/star_red.png");
									$("#star2").attr("src","img/star_red.png");
									$("#star3").attr("src","img/star_red.png");
									$("#star4").attr("src","img/star_red.png");
									$("#message").html("比较好");
								}else if(param == 5){
									$("#star1").attr("src","img/star_red.png");
									$("#star2").attr("src","img/star_red.png");
									$("#star3").attr("src","img/star_red.png");
									$("#star4").attr("src","img/star_red.png");
									$("#star5").attr("src","img/star_red.png");
									$("#message").html("很好");
								}
							}
							/*out 方法是鼠标移除事件的处理方法，当鼠标移出时，恢复到我的打分情况*/
							function out(){
								if(check == 1){//打分是1，设置第一颗星星亮，其他星星暗，其他情况以此类推
									$("#star1").attr("src","img/star_red.png");
									$("#star2").attr("src","img/star.png");
									$("#star3").attr("src","img/star.png");
									$("#star4").attr("src","img/star.png");
									$("#star5").attr("src","img/star.png");
									$("#message").html("");
								}else if(check == 2){
									$("#star1").attr("src","img/star_red.png");
									$("#star2").attr("src","img/star_red.png");
									$("#star3").attr("src","img/star.png");
									$("#star4").attr("src","img/star.png");
									$("#star5").attr("src","img/star.png");
									$("#message").html("");
								}else if(check == 3){
									$("#star1").attr("src","img/star_red.png");
									$("#star2").attr("src","img/star_red.png");
									$("#star3").attr("src","img/star_red.png");
									$("#star4").attr("src","img/star.png");
									$("#star5").attr("src","img/star.png");
									$("#message").html("");
								}else if(check == 4){
									$("#star1").attr("src","img/star_red.png");
									$("#star2").attr("src","img/star_red.png");
									$("#star3").attr("src","img/star_red.png");
									$("#star4").attr("src","img/star_red.png");
									$("#star5").attr("src","img/star.png");
									$("#message").html("");
								}else if(check == 5){
									$("#star1").attr("src","img/star_red.png");
									$("#star2").attr("src","img/star_red.png");
									$("#star3").attr("src","img/star_red.png");
									$("#star4").attr("src","img/star_red.png");
									$("#star5").attr("src","img/star_red.png");
									$("#message").html("");
								}else if(check == 0){
									$("#star1").attr("src","img/star.png");
									$("#star2").attr("src","img/star.png");
									$("#star3").attr("src","img/star.png");
									$("#star4").attr("src","img/star.png");
									$("#star5").attr("src","img/star.png");
									$("#message").html("");
								}
							}
							
							/*click()点击事件处理，记录打分*/
							function click(param){
								time++;//记录打分次数
								check = param;//记录当前打分
								out();//设置星星数
								
								return;
							}
							
							</script>
						<ul>
							<li>教学态度
								
								
									<a href="javascript:click(1)"><img src="img/star.png" id="star1" onMouseOver="over(1)" onMouseOut="out(1)"/></a>
									<a href="javascript:click(2)"><img src="img/star.png" id="star2" onMouseOver="over(2)" onMouseOut="out(2)" /></a>
									<a href="javascript:click(3)"><img src="img/star.png" id="star3" onMouseOver="over(3)" onMouseOut="out(3)" /></a>
									<a href="javascript:click(4)"><img src="img/star.png" id="star4" onMouseOver="over(4)" onMouseOut="out(4)"/></a>
									<a href="javascript:click(5)"><img src="img/star.png" id="star5" onMouseOver="over(5)" onMouseOut="out(5)"/></a>
									<span id="message"></span>
								
							
							</li>
							
							<li>教学质量
								
									<a href="javascript:click(1)"><img src="img/star.png" id="star1" onMouseOver="over(1)" onMouseOut="out(1)"/></a>
									<a href="javascript:click(2)"><img src="img/star.png" id="star2" onMouseOver="over(2)" onMouseOut="out(2)" /></a>
									<a href="javascript:click(3)"><img src="img/star.png" id="star3" onMouseOver="over(3)" onMouseOut="out(3)" /></a>
									<a href="javascript:click(4)"><img src="img/star.png" id="star4" onMouseOver="over(4)" onMouseOut="out(4)"/></a>
									<a href="javascript:click(5)"><img src="img/star.png" id="star5" onMouseOver="over(5)" onMouseOut="out(5)"/></a>
									<span id="message2"></span>
								
							</li>
						</ul>
					</div>

				</div>
				<div class="col-md-6 animate-box">
					<h3>您的评价</h3>
					<form action="#">
						<div class="row form-group">
							<div class="col-md-6">
								<!-- <label for="fname">First Name</label> -->
								<input type="text" id="fname" class="form-control" placeholder="您的姓名">
							</div>
							<div class="col-md-6">
								<!-- <label for="lname">Last Name</label> -->
								<input type="text" id="lname" class="form-control" placeholder="您的学生的姓名">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="email">Email</label> -->
								<input type="text" id="email" class="form-control" placeholder="您的邮箱">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="email">Email</label> -->
								<input type="text" id="email" class="form-control" placeholder="您的学生的邮箱">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="subject">Subject</label> -->
								<input type="text" id="subject" class="form-control" placeholder="您此门课的学科">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<!-- <label for="message">Message</label> -->
								<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="您的评价"></textarea>
							</div>
						</div>
						<div class="form-group">
							<input type="submit" value="发送信息" class="btn btn-primary">
						</div>

					</form>		
				</div>
			</div>
			
		</div>
	</div>
	<div id="map" class="fh5co-map"></div>





	



	<footer id="fh5co-footer" role="contentinfo" style="background-image: url(images/img_bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">


			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy;家教服务系统 </small>
					</p>
				</div>
			</div>

		</div>
	</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	<!-- Count Down -->
	<script src="js/simplyCountdown.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
	<script>
    var d = new Date(new Date().getTime() + 1000 * 120 * 120 * 2000);

    // default example
    simplyCountdown('.simply-countdown-one', {
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate()
    });

    //jQuery example
    $('#simply-countdown-losange').simplyCountdown({
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate(),
        enableUtc: false
    });
	</script>
	</body>
</html>

