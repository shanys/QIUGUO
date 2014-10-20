$(function(){
	var oTrends = document.getElementById("trends");
			var oIntroduction = document.getElementById("introduction");
			var oScope = document.getElementById("scope");
			var iScrollTop = document.documentElement.scrollTop || document.body.scrollTop;
			oTrends.onclick = function(){
				iScrollTop = 0;
				time(750);
			};
			oIntroduction.onclick = function(){
				iScrollTop = 0;
				time(750);
			};
			oScope.onclick = function(){
				iScrollTop = 0;
				time(1375);
			};
			function time(stop_time){
				var timer = setInterval(function(){
					iScrollTop += 25;
					if(iScrollTop == stop_time){
						clearInterval(timer);
					}
					window.scrollTo(0, iScrollTop);
				}, 10);
			};

});