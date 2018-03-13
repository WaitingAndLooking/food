<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<title>餐馆</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- pop-up -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up -->
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--/web-fonts-->
<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700' rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900" rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!--//web-fonts-->

  </head>
  
  <body>
   <!--/main-header-->
  <!--/banner-section-->
	<div id="demo-1" class="banner-inner">
	 <div class="banner-inner-dott">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile part2">	
				<nav class="navbar navbar-default">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<h1><a  href="index.jsp"><span>常信</span>外卖</a></h1>
					</div>
					<!-- navbar-header -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
							<li class="active">
									<a href="index.jsp">首页</a>
								</li>
							<li>
									<a href="restaurant.jsp">餐馆</a>
							</li>
							<li>
									<a href="cart.jsp">我的购物车</a>
								</li>
							
						<s:iterator value="#session.u" var="u">
								<li>
									<a href="/meituanwaimai/orderaction!selectByUname?u.uname=<s:property value='uname'/>">我的订单</a>
									
								</li>
								</s:iterator>
							<li>
									<a href="user.jsp">个人资料</a>
								</li>
								<li>
									<a href="about.jsp">关于我们</a>
								</li>
						</ul>

					</div>
					<div class="clearfix"> </div>	
				</nav>
					<div class="w3ls_search">
									<div class="cd-main-header">
										<ul class="cd-header-buttons">
											<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
										</ul> <!-- cd-header-buttons -->
									</div>
									<div id="cd-search" class="cd-search">
										<form action="#" method="post">
											<input name="Search" type="search" placeholder="Search...">
										</form>
									</div>
								</div>
	
			</div> 

			   </div>
		<!--//header-w3l-->
		</div>
    </div>
  <!--/banner-section-->
 <!--//main-header-->
	         <!--/banner-bottom-->
			  <div class="w3_agilits_banner_bootm">
			     <div class="w3_agilits_inner_bottom">
			            <div class="col-md-6 wthree_agile_login">
						     <ul>
									<li>
									<div align="right">
			<font color="#ff0000" face="仿宋" size="5"> 
 
				<font color="#00ff80">欢迎登录,${u.uname}</font>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/meituanwaimai/user/login.jsp">退出</a> </font>
		</div>
									</li>
									</ul>
						</div>
						 <div class="col-md-6 wthree_share_agile">
									
									<div class="single-agile-shar-buttons">
									<ul>
								<li>
									<div class="fb-like" data-href="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
									
								</li>
								</ul>
								</div>
						</div>
				</div>
			</div>
			<!--//banner-bottom-->
		   
						<!-- breadcrumb -->
	
<!-- //breadcrumb -->
			<!--/content-inner-section-->
				<div align="center" class="w3_content_agilleinfo_inner">
						<div class="agile_featured_movies">
				            <div class="inner-agile-w3l-part-head">
					            <h3 class="w3l-inner-h-title">餐馆</h3>
								<p class="w3ls_head_para">餐馆创造美食。</p>
							</div>
							   <div class="latest-news-agile-info">
								   <div class="col-md-8 latest-news-agile-left-content">
											<div class="w3-agileits-news-one">
												<div class="wthree-news-img">
													<a href="news-single.html"><img src="images/m1.jpg" alt=""></a>
												</div>
												<div class="wthree-news-info">
													<h5><a href="news-single.html">如意饭店</a></h5>
													<div class="agile-post">
															 <h4>地址 ：</h4><h5>羊尖镇五洲国际广场B区BA栋1029、1030号</h5></div>
						 <h4>特色食品 ：</h4><p>麻辣牛肉菜饭，菌菇卤肉菜饭，香菇鸡粒菜饭，如意咸肉菜饭</p>
														<a class="new-more" href="/meituanwaimai/comaction!listByCid?c.restaurant.rid=1 ">评论</a>
												</div>
												<div class="clearfix"> </div>
											</div>
											<div class="w3-agileits-news-one">
												<div class="wthree-news-img">
													<a href="news-single.html"><img src="images/m2.jpg" alt=""></a>
												</div>
												<div class="wthree-news-info">
													<h5><a href="news-single.html">糊涂生煎</a></h5>
													<div class="agile-post">
															 <h4>地址 ：</h4><h5>羊尖镇育才路5号</h5></div>
						 <h4>特色食品 ：</h4><p>生煎包，玉兰饼，砂锅小馄饨</p>
														<a class="new-more" href="/meituanwaimai/comaction!listByCid?c.restaurant.rid=2 ">评论</a>
												</div>
												<div class="clearfix"> </div>
											</div>
											<div class="w3-agileits-news-one">
												<div class="wthree-news-img">
													<a href="news-single.html"><img src="images/m3.jpg" alt=""></a>
												</div>
												<div class="wthree-news-info">
													<h5><a href="news-single.html">太湖水产</a></h5>
													<div class="agile-post">
														
															 <h4>地址 ：</h4><h5>羊尖镇育才路5号</h5></div>
						 <h4>特色食品 ：</h4><p>生煎包，玉兰饼，砂锅小馄饨</p>
														<a class="new-more" href="/meituanwaimai/comaction!listByCid?c.restaurant.rid=3 ">评论</a>
												</div>
												<div class="clearfix"> </div>
											</div>
											<div class="w3-agileits-news-one">
												<div class="wthree-news-img">
													<a href="news-single.html"><img src="images/m4.jpg" alt=""></a>
												</div>
												<div class="wthree-news-info">
													<h5><a href="news-single.html">罗黄法式西点</a></h5>
													<div class="agile-post">
															 <h4>地址 ：</h4><h5>锡山区羊尖镇五洲国际广场B区BA栋1031号</h5></div>
						 <h4>特色食品 ：</h4><p>番茄菲力牛排，黑胡椒菲力牛排，抹茶奶盖，多芒小丸子</p>
														<a class="new-more" href="/meituanwaimai/comaction!listByCid?c.restaurant.rid=4 ">评论</a>
												</div>
												<div class="clearfix"> </div>
											</div>
											<div class="w3-agileits-news-one">
												<div class="wthree-news-img">
													<a href="news-single.html"><img src="images/m5.jpg" alt=""></a>
												</div>
												<div class="wthree-news-info">
													<h5><a href="news-single.html">阿姨奶茶店</a></h5>
													<div class="agile-post">
															 <h4>地址 ：</h4><h5>羊尖镇育才路5号</h5></div>
						 <h4>特色食品 ：</h4><p>常州信息职业技术学院男生食堂旁</p>
														<a class="new-more" href="/meituanwaimai/comaction!listByCid?c.restaurant.rid=5 ">评论</a>
												</div>
												<div class="clearfix"> </div>
											</div>
												<div class="w3-agileits-news-one">
												<div class="wthree-news-img">
													<a href="news-single.html"><img src="images/m6.jpg" alt=""></a>
												</div>
												<div class="wthree-news-info">
													<h5><a href="news-single.html">上上谦</a></h5>
													<div class="agile-post">
															 <h4>地址 ：</h4><h5>上海市浦东新区</h5></div>
						 <h4>特色食品 ：</h4><p>小分鸡公煲，大牛蛙煲，咸水毛豆，牛百叶，毛肚，培根</p>
														<a class="new-more" href="/meituanwaimai/comaction!listByCid?c.restaurant.rid=6 ">评论</a>
												</div>
												<div class="clearfix"> </div>
											</div>
								   </div>
								  
												</div>
											</div>
										</div>
										
							       </div>
								   <div class="clearfix"></div>
							   </div>
							   <div class="blog-pagenat-wthree">
								<ul>
									<li><a class="frist" href="#">Prev</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									
									<li><a class="last" href="#">Next</a></li>
								</ul>
							</div>
						</div>
				</div>
			<!--//content-inner-section-->


	
			<div class="w3agile_footer_copy">
				    <p>Copyright &copy; 2017.MeiTuan.Company name All rights reserved.<a target="_blank" href="http://www.777moban.com/"></a></p>
			</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<script src="js/jquery-1.11.1.min.js"></script>
	<!-- Dropdown-Menu-JavaScript -->
			<script>
				$(document).ready(function(){
					$(".dropdown").hover(            
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideDown("fast");
							$(this).toggleClass('open');        
						},
						function() {
							$('.dropdown-menu', this).stop( true, true ).slideUp("fast");
							$(this).toggleClass('open');       
						}
					);
				});
			</script>
		<!-- //Dropdown-Menu-JavaScript -->
		<!-- search-jQuery -->
				<script src="js/main.js"></script>
			
			<script src="js/simplePlayer.js"></script>
			<script>
				$("document").ready(function() {
					$("#video").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video1").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video2").simplePlayer();
				});
			</script>
				<script>
				$("document").ready(function() {
					$("#video3").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video4").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video5").simplePlayer();
				});
			</script>
			<script>
				$("document").ready(function() {
					$("#video6").simplePlayer();
				});
			</script>

			<!-- pop-up-box -->  
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->

			<div id="small-dialog1" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src=""></iframe>
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<script src="js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<script src="js/owl.carousel.js"></script>
<script>
	$(document).ready(function() { 
		$("#owl-demo").owlCarousel({
	 
		 autoPlay: 3000, //Set AutoPlay to 3 seconds
		  autoPlay : true,
		   navigation :true,

		  items : 5,
		  itemsDesktop : [640,4],
		  itemsDesktopSmall : [414,3]
	 
		});
	 
	}); 
</script> 

<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>

<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
<!--end-smooth-scrolling-->
	<script src="js/bootstrap.js"></script>
  </body>
</html>
