<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>库存管理</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">  
	<link rel="stylesheet" href="css/index-stock.css">
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
		#con {background:#fafafa; border-top:2px solid #26b4b8;}
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
	<%@include file="head.jsp" %>
	
	<!--==============================content================================-->
	<section id="content"><div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a> - Mrach 03, 2012!</div>
		<div class="main">
			<h4 id="title">
				<span class="on">库存管理</span>
			</h4>
			<div id="con">
				<!-- 库存管理 -->
				<!-- <ul class="on">
					<li>
						<a href="add-type.html"><input type="button" class="btn" value="添加种类" style="width:150px;"></a>
						<a href="add-stock.html"><input type="button" class="btn" value="添加" style="width:150px;"></a>
						<img src="images/search.png" style="float:right;margin-right: 10px;">
						<input type="text" class="txt">
					</li>
					<li>
						<a href="#">1</a>
						<input type="button" class="btn" value="删除">
						<input type="button" class="btn" value="修改">
					</li>
					<li>
						<a href="#">2</a>
						<input type="button" class="btn" value="删除">
						<input type="button" class="btn" value="修改">
					</li>
					<li>
						<a href="#">3</a>
						<input type="button" class="btn" value="删除">
						<input type="button" class="btn" value="修改">
					</li>
				</ul> -->
				<ul class="on clearfix" style="padding:0;"><div class="container">
				<li>
						<a href="add-stock.html"><input type="button" class="btn" value="添加" style="width:150px;"></a>
						<a href="#"><img src="images/search.png" style="float:right;margin-right: 10px;"></a>
						<input type="text" class="txt">
					</li>
					<div class = "sider-left" id="table_left">
						<form action="">
							<h4>入库明细列表流水</h4>
							<table cellspacing="0">
								<tr><td>编号</td><td>入库物资名称</td><td>数量</td><td>品质</td><td>价值</td><td>入库时间</td><td>经手人</td></tr>
								<tr class="act"><td>1</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
								<tr class="act"><td>2</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
								<tr class="act"><td>3</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
								<tr class="act"><td>4</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
								<tr class="act"><td>5</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
							</table>
						</form>
					</div>
					<div class = "center">
						<div class="content">
							<div class="content1">
								固定位置:<br/>物资名称:<br/>数量:<br/>品质:<br/>价值:<br/>入库日期：
							</div>
							<div class="content2">
								固定位置:<br/>物资名称:<br/>数量:<br/>品质:<br/>价值:<br/>入库日期：
							</div>
							<div class="content3">
								固定位置:<br/>物资名称:<br/>数量:<br/>品质:<br/>价值:<br/>入库日期：
							</div>
						</div>
						<div class="content">
							<div class="content1">
								固定位置:<br/>物资名称:<br/>数量:<br/>品质:<br/>价值:<br/>入库日期：
							</div>
							<div class="content2">
								固定位置:<br/>物资名称:<br/>数量:<br/>品质:<br/>价值:<br/>入库日期：
							</div>
							<div class="content3">
								固定位置:<br/>物资名称:<br/>数量:<br/>品质:<br/>价值:<br/>入库日期：
							</div>
						</div>
						<div class="content">
							<div class="content1">
								固定位置:<br/>物资名称:<br/>数量:<br/>品质:<br/>价值:<br/>入库日期：
							</div>
							<div class="content2">
								固定位置:<br/>物资名称:<br/>数量:<br/>品质:<br/>价值:<br/>入库日期：
							</div>
							<div class="content3">
								固定位置:<br/>物资名称:<br/>数量:<br/>品质:<br/>价值:<br/>入库日期：
							</div>
						</div>
					</div>
					<div class = "sider-right" id="table_right">
						<form action="">
							<h4>出库明细列表流水</h4>
							<table cellspacing="0">
								<tr><td>编号</td><td>入库物资名称</td><td>数量</td><td>品质</td><td>价值</td><td>入库时间</td><td>经手人</td></tr>

								<tr><td>1</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
								<tr><td>2</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
								<tr><td>3</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
								<tr><td>4</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
								<tr><td>5</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td><td>111</td></tr>
							</table>
						</form>
					</div>
				</div></ul>
				
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
					<div class="grid_5" style="margin-left:350px;;">
						<div class="indent-top2">
							<p class="prev-indent-bot">&copy; 2012 Interior <a rel="nofollow" href="http://www.cssmoban.com/" target="_blank">球果</a> | <a rel="nofollow" href="http://www.cssmoban.com">通信</a></p>
							qiuguotongxin:<a href="#">www.qiuguotongxin.com</a>
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
	<script type="text/javascript" src="js/style.js"></script>
	<script type="text/javascript">
		window.onload=function () {
			var oTitle = document.getElementById('title');
			var aSpan = oTitle.getElementsByTagName('span');
			var oCon = document.getElementById('con');
			var aUl = oCon.getElementsByTagName('ul');
			var i = 0;
			
			for(i=0; i<aSpan.length; i++) {
				var index = 0;
				aSpan[i].index = aUl[i].index = i;
				
				aSpan[i].onclick = function () {
					for(i=0; i<aSpan.length; i++) {
						aSpan[i].className = '';
						aUl[i].className = '';
					}
					
					this.className = 'on';
					aUl[this.index].className = 'on';
				};
			}
		};
	</script>
</body>
</html>
