<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>个人主页</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">  
	<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="js/cufon-yui.js" type="text/javascript"></script>
	<script src="js/cufon-replace.js" type="text/javascript"></script>
	<script src="js/Vegur_500.font.js" type="text/javascript"></script>
	<script src="js/Ropa_Sans_400.font.js" type="text/javascript"></script> 
	<script src="js/FF-cash.js" type="text/javascript"></script>	 
	<script src="js/script.js" type="text/javascript"></script> 
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
	<style type="text/css">
		* {margin:0; padding:0;}
		a {text-decoration: none;}
		ul{ list-style:none;}
		#title {height:30px; line-height:30px;}
		#title span {float:left; width:120px; height:30px; margin-right:5px; color:#333; background:#eee; text-align:center; cursor:pointer; font-weight:bold;}
		#title span.on {background:#26b4b8; color:#fff;}
		#con {background:#fafafa; height:200px; border-top:2px solid #26b4b8;}
		#con ul {display:none; padding:10px;}
		#con ul.on {display:block;}
		#con ul li {height:24px; line-height:24px; border-bottom:1px dotted #ccc; text-indent:10px;}
		.btn {width: 70px;height: 20px; background: #26b4b8;border: 0;border-radius: 3px;margin-top: 2px;float: right;margin-right: 10px; color: white;}
		.txt {width: 170px; height: 18px; border: #26b4b8 solid 1px; float: right;}
		.select {width: 92px; height: 19px; border: #26b4b8 solid 1px; float: right; margin-right: 10px;margin-top: 3px;}
	</style>
</head>
<body id="page2">
	<!--==============================header=================================-->
	<header>
		<div class="border-bot">
			<div class="main">
				<div class="logo"><a href="index.html"></a></div>
				<nav>
					<ul class="menu">
						<li><a class="active" href="index.jsp">首页</a></li>
						<li><a href="index.jsp" id="trends">公司动态</a></li>
						<li><a href="index.jsp" id="introduction">公司简介</a></li>
						<li><a href="index.jsp" id="scope">业务范围</a></li>
						<li><a href="#">联系我们</a></li>						
						<c:choose>
							<c:when test="${user.role!=null}">
								<li><a href="index-stock.html">库存管理</a></li>
								<li><a href="index-task.html">任务管理</a></li>
								<li><a href="user.do?method=list&userPage=1">用户管理</a></li>
								<li><a href="user.do?method=logout">退出</a></li>	
							</c:when>
							<c:otherwise>
								<li><a href="index-login.jsp">登录</a></li>
								<li><a href="index-register.html">注册</a></li>
							</c:otherwise>
						</c:choose>
						
					</ul>
				</nav>
				<div class="clear"></div>
			</div>
		</div>
	</header>
</body>
</html>