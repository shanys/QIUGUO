<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>登录</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">  
	<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="js/cufon-replace.js" type="text/javascript"></script>
	<script src="js/Vegur_500.font.js" type="text/javascript"></script>
	<script src="js/Ropa_Sans_400.font.js" type="text/javascript"></script> 
	<script src="js/FF-cash.js" type="text/javascript"></script>	
	<script src="js/script.js" type="text/javascript"></script>
	<script src="js/Vegur_400-Vegur_700.font.js" type="text/javascript"></script>  
	<!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
		<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
			<img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
		</a>
	</div>
	<![endif]-->
	<!--[if lt IE 9]>
 		<script type="text/javascript" src="js/html5.js"></script>
		<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
	<![endif]-->
</head>
<body id="page5">
	<!--==============================header=================================-->
	<%@include file="head.jsp" %>
	<!--==============================content================================-->
	<section id="content"><div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >用户登录</a> - Mrach 03, 2012!</div>
		<div class="main">
			<div class="container_12">
				<div class="wrapper">
					<article class="grid_8">
						<h3>用户登录</h3>
						<form id="contact-form" method="post" action="user.do?method=login">					
							<fieldset>
								  <label><span class="text-form">用户名:</span><input name="username" type="text" />${userError}</label>
								  <label><span class="text-form">密码:</span><input name="password" type="password" />${passwordError}</label>							  
								  <!-- <label><span class="text-form">èç³»æ¹å¼:</span><input name="phone" type="text" /></label> -->							  
								  <div class="wrapper">
									<!-- <div class="text-form">å¤æ³¨:</div>
									<div class="extra-wrap">
										<textarea></textarea>
										<div class="clear"></div>
										<div class="buttons">
											<a href="#" onClick="document.getElementById('contact-form').reset()">Clear</a>
											<a href="#" onClick="document.getElementById('contact-form').submit()">Send</a>
										</div> 
									</div> -->
									<input type="submit" class="register" value="登录" style="width:60px;height:26px;background:#26b4b8;border:0;border-radius:3px;float:left;margin-left:320px;color:white;font-width:700;"></input>
									<!-- <input type="reset" class="register" style="width:60px;height:26px;background:#26b4b8;border:0;border-radius:3px;float:left;margin-left:10px;color:white;font-width:700;"></input> -->
								  </div>							
							</fieldset>						
						</form>
					</article>
					<article class="grid_4">
						<div class="indent-top indent-left">
							<div class="wrapper p3">
								<figure class="img-indent-r"><a href="#"><img src="images/page1-img1.png" alt=""></a></figure>
								<div class="extra-wrap">
									<strong class="title-1">Tell Your<strong>Friends</strong><em>About</em><em>My Qiuguo</em></strong>
								</div>
							</div>
							<!-- <h3 class="p1">Latest News</h3>
							<p class="prev-indent-bot">24 Hour Emergency Towing</p>
							<p class="p0">Monday - Friday: 7:30 am - 6:00</p>
							<p class="prev-indent-bot">Saturday: 7:30 am - Noon</p>
							<p class="img-indent-bot">Night Drop Available</p>
							<dl>
								<dt class="prev-indent-bot">Demolink.org 8901 Marmora Road, Glasgow, D04 89GR.</dt>
								<dd><span>Telephone:</span>+1 959 552 5963;</dd>
								<dd><span>FAX:</span>+1 959 552 5963</dd>
								<dd><span>E-mail:</span><a href="#">mail@demolink.org</a></dd>
							</dl> -->
						</div>
					</article>
				</div>
			</div>
		</div>
	</section>
	<!--==============================footer=================================-->
	<footer>
		<div class="main">
			<div class="container_12">
				<div class="wrapper">
					<!-- <div class="grid_3">
						<div class="spacer-1">
							<a href="index.html"><img src="images/footer-logo.png" alt=""></a>
						</div>
					</div> -->
					<div class="grid_5" style="margin-left:350px;">
						<div class="indent-top2">
							<p class="prev-indent-bot">&copy; 2012 Interior <a rel="nofollow" href="http://www.cssmoban.com/" target="_blank">球果</a> | <a rel="nofollow" href="#">通信</a></p>
							球果通信:<a href="#">www.qiuguotongxin.com</a>
						</div>
					</div>
					<!-- <div class="grid_4">
						<ul class="list-services">
							<li><a class="item-1" href="#"></a></li>
							<li><a class="item-2" href="#"></a></li>
							<li><a class="item-3" href="#"></a></li>
							<li><a class="item-4" href="#"></a></li>
						</ul>
						<span class="footer-text">&copy; 2012 <a class="link color-2" href="#">Privacy Policy</a></span>
					</div> -->
				</div>
			</div>
		</div>
	</footer>
	<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>