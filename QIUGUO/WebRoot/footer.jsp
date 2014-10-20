<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<body>
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
