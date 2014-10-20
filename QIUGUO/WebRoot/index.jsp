<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Home</title>
	<meta charset="utf-8">
	<meta charset="gb2312">
	<link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
	<link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">  
	<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
	<script src="js/cufon-replace.js" type="text/javascript"></script>
	<script src="js/Vegur_500.font.js" type="text/javascript"></script>
	<script src="js/Ropa_Sans_400.font.js" type="text/javascript"></script> 
	<script src="js/FF-cash.js" type="text/javascript"></script>	  
	<script src="js/tms-0.3.js" type="text/javascript"></script>
	<script src="js/tms_presets.js" type="text/javascript"></script>
	<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
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
<body id="page1">
	<!--==============================header=================================-->
	<header>
		<div class="border-bot">
			<div class="main">
				<div class="logo"><a href="index.html"></a></div>
				<div class="menu">
					<ul>
						<li><a class="active" href="index.jsp">首页</a></li>
						<li><a href="javascript:;" id="trends">公司动态</a></li>
						<li><a href="javascript:;" id="introduction">公司简介</a></li>
						<li><a href="javascript:;" id="scope">业务范围</a></li>
						<c:choose>
						<c:when test="${user.role!=null}">
							<li><a href="index-stock.html">库存管理</a></li>
							<li><a href="index-task.html">任务管理</a></li>
							<li><a href="user.do?method=list&userPage=1">用户管理</a></li>
							<li><a href="user.do?method=logout">退出</a></li>							
						</c:when>
						<c:otherwise>
							<li><a href="#">联系我们</a></li>
							<li><a href="index-login.jsp">登录</a></li>
							<li><a href="index-register.html">注册</a></li>
						</c:otherwise>
					</c:choose>
						
				</ul>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="row-bot">
			<div class="slider-wrapper">
				<div class="slider">
					<ul class="items">
						<li>
							<img src="images/slider-img1.jpg" alt="" />
						</li>
						<li>
							<img src="images/slider-img2.jpg" alt="" />
						</li>
						<li>
							<img src="images/slider-img3.jpg" alt="" />
						</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<!--==============================content================================-->
	<section id="content"><div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a> - Mrach 03, 2012!</div>
		<div class="main">
			<div class="container_12">
				<div class="wrapper">
					<article class="grid_8">
						<h2>公司简介</h2>
						<p>我们是一家专业的通信工程服务公司，作为有志于在信息技术大发展时代有所作为的公司，我们的业务范围涵盖了从通信工程、通信维护、通信业务销售代理、网络应用技术开发推广、网络及通信设备推广销售等信息服务领域。我们有能力和信念经过几年时间的发展，为客户提供最具信赖的支持服务，为客户提供优质先进的信息化应用方案与产品。</p>
						<p>致力于为客户提供最优质的服务，这与公司的核心价值、服务理念相一致，也和公司肩负的社会责任相契合。我们竭尽所能协助客户创建优质工程项目，降低运营成本，提高运营效率和市场竞争力， 帮助客户打破资源的限制开拓市场，并运用各种方式增加收益。我们深知，企业的快速发展得益于专业的技术背景与执着的信念，而在发展过程中我们也在不断地寻求突破和创新，并期望成为通信行业最值得信赖的合作伙伴！</p>
						<p><b>“精益求精 言信行果”浓缩了我们的价值观和倡导奉行的发展理念。</b>公司一直提倡员工秉承积极进取的态度，执着专注于信息服务，密切团队协作，不断创新发展，创造开放自由的环境，培养坚韧不拔、永不放弃的性格，为亲人，为家庭，为更美好的人生自信奋斗。当我们能如此的要求自己，心中的智慧自然就会油然而生，才能去包容一切、去创造美好。</p>
						<p><b>我们的服务</b>&nbsp;&nbsp;服务理念：我们始终坚守“精益求精 言信行果”的服务理念和企业精神，不断调整和创新我们的技术和管理，为客户提供最优质的服务支持。&nbsp;&nbsp;核心价值：我们倡导人文关怀，注重员工成长，努力营造一个充满生机的企业氛围，引导所有成员树立仁爱、正直、责任的精神，鼓励员工传播这种文化，以此为家庭、社会贡献更大的企业价值。&nbsp;&nbsp;发展策略：优秀的人才是企业创新与进步的基石，我们珍视人才的培养与成长，努力为员工的快速健康发展搭建一个最具优势的平台。&nbsp;&nbsp;公司愿景：在追寻梦想的道路上，我们依靠诚信的品质和优质的服务不断前进。正是因为拥有对人生、对亲人美好的愿景，才有了我们孜孜不倦的追求。</p>

						<h2>业务范围</h2>
						<ul class="list-1">
							<li>通信工程：通信工程的设计施工；计算机网络工程安装、维护、调试、销售、网络设备、仪表、通信设备。</li>
							<li>代理业务：代理中国电信授权的业务；代理中国移动授权的业务：代理中国联通授权的业务：线缆批发、零售等业务。</li>
							<li>应用开发：桌面应用开发 / Web App；移动设备 Apple iOS、Google Android 应用开发：大型商业应用开发、云端开发：Node.js / Express.js / Koa.js / Total.js / Meteor.js  应用开发。</li>
						</ul>
					</article>
					<article class="grid_4" style="border-left:#ccc dashed 1px;">
						<h2 style="margin-left:30px;">公司动态</h2>
						<ul class="list-1" style="margin-left:30px;">
							<li>通信工程：通信工程的设计施工；计算机网络工程安装、维护、调试、销售、网络设备、仪表、通信设备。</li>
							<li>代理业务：代理中国电信授权的业务；代理中国移动授权的业务：代理中国联通授权的业务：线缆批发、零售等业务。</li>
							<li>应用开发：桌面应用开发 / Web App；移动设备 Apple iOS、Google Android 应用开发：大型商业应用开发、云端开发：Node.js / Express.js / Koa.js / Total.js / Meteor.js  应用开发。</li>
						</ul>
					</article>
					<article class="grid_12">
						<h2>团队精英</h2>
						<p>我们是一个紧密协作的团队，我们将不断努力开拓，每一次成功的背后，都洒满了奋斗的艰辛与汗水。今后，我们将继续坚守那份不变的承诺，继往开来，为更好的明天而拼搏！</p>
						<div class="apeople">
							<img src="images/people/long.png">
							<h4>Long <small>总经理</small></h4>
							<p>让通信遍布每个角落</p>
						</div>
						<div class="apeople">
							<img src="images/people/zhanghong.png">
							<h4>Mr. Hon <small>程序设计师</h4>
							<p>努力给我的客户带来最好滴体验</p>
						</div>
						<div class="apeople">
							<img src="images/people/xuanxuan.png">
							<h4> Alex Xuan <small> </small></h4>
							<p> </p>
						</div>
						<div class="apeople">
							<img src="images/people/baogang.png">
							<h4> Jason Gang <small> </small></h4>
							<p> </p>
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
		$(window).load(function() {
			
			$('.slider')._TMS({
				duration:1000,
				easing:'easeOutQuint',
				preset:'diagonalFade',
				slideshow:7000,
				banners:false,
				pauseOnHover:true,
				pagination:true,
				pagNums:false
			});
			
			
		});


	</script>
</body>
</html>