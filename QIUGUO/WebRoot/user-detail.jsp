<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Events</title>
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
		.btn {width: 70px;height: 20px; background: #26b4b8;border: 0;border-radius: 3px;margin-top: 2px;float: left;margin-left: 10px; color: white;}
		.txt {width: 170px; height: 18px; border: #26b4b8 solid 1px; float: right;}
		.select {width: 92px; height: 19px; border: #26b4b8 solid 1px; float: right; margin-right: 10px;margin-top: 3px;}
	</style>
</head>
<body id="page2">
	<!--==============================header=================================-->
	<%@include file="head.jsp"%>
	
	<!--==============================content================================-->
	
	<table class="table">
			<tr class="table_header">
				<td>ID</td>
				<td>UserId</td>
				<td>LoginTime</td>
				<td>ROLE</td>
			</tr>
			
			<c:forEach items="${uds}" var="ud" varStatus="s">						
					<tr class="row${s.index%2+1} }">
						<td>${ud.id }</td>
						<td>${ud.userId }</td>
						<td>${ud.loginTime }</td>
						<td>${ud.role }</td>
					</tr>
			</c:forEach>
			<tr  align="center">
			<td colspan="5" align="center"">
					<c:choose>
					<c:when test="${page>1}">
						<a href="user.do?method=detail&userId=${userId}&page=${page-1 }">上一页</a>
					</c:when>
					<c:otherwise>
						上一页
					</c:otherwise>
				</c:choose>
				
					&nbsp;&nbsp;第${page}页&nbsp
				<c:choose>
					<c:when test="${page<totalPages}">
					<a href="user.do?method=detail&userId=${userId}&page=${page+1 }">下一页</a>
					</c:when>
					<c:otherwise>下一页</c:otherwise>
				</c:choose>
				
				&nbsp;&nbsp;共${totalPages }页
				</td>
			</tr>
		</table>
		<p >
			<a href="index-person.jsp">返回</a>
		</p>
	<!--==============================footer=================================-->
	<%@include file="footer.jsp" %>
	<script type="text/javascript"> Cufon.now(); </script>
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
