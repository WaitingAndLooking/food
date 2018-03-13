<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@page import="com.cart.Cart"%>
<%@page import="com.user.entity.Food"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>购物车</title>
		<!-- for-mobile-apps -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!-- //for-mobile-apps -->
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
			media="all" />
		<!-- pop-up -->
		<link href="css/popuo-box.css" rel="stylesheet" type="text/css"
			media="all" />
		<!-- //pop-up -->
		<link href="css/easy-responsive-tabs.css" rel='stylesheet'
			type='text/css' />
		<link rel="stylesheet" type="text/css" href="css/zoomslider.css" />
		<link rel="stylesheet" type="text/css" href="css/table-style.css" />
		<link rel="stylesheet" type="text/css" href="css/basictable.css" />
		<!-- list-css -->
		<link rel="stylesheet" href="css/list.css" type="text/css" media="all" />
		<!-- //list-css -->
		<link rel="stylesheet" type="text/css" href="css/style.css" />
		<link href="css/font-awesome.css" rel="stylesheet">
		<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
		<!--/web-fonts-->
		<link href='http://fonts.googleapis.com/css?family=Tangerine:400,700'
			rel='stylesheet' type='text/css'>
		<link
			href="http://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900"
			rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
			rel='stylesheet' type='text/css'>
		<!--//web-fonts-->

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

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
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<h1>
								<a href="index.jsp"><span>常信</span>外卖</a>
							</h1>
						</div>
						<!-- navbar-header -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">
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
						<div class="clearfix">
						</div>
						</nav>
						<div class="w3ls_search">
							<div class="cd-main-header">
								<ul class="cd-header-buttons">
									<li>
										<a class="cd-search-trigger" href="#cd-search"> <span></span>
										</a>
									</li>
								</ul>
								<!-- cd-header-buttons -->
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
								<div class="fb-like" data-href="" data-layout="button_count"
									data-action="like" data-size="small" data-show-faces="false"
									data-share="false"></div>

							</li>

						</ul>
					</div>
				</div>
			</div>
		</div>
		<!--//banner-bottom-->


		<!-- //breadcrumb -->
		<!--/content-inner-section-->
		<div class="w3_content_agilleinfo_inner">
			<div class="agile_featured_movies">
				<div class="inner-agile-w3l-part-head">
					<h3 class="w3l-inner-h-title">
						购物车
					</h3>
				</div>
				<div class="bs-example bs-example-tabs" role="tabpanel"
					data-example-id="togglable-tabs">

					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home"
							aria-labelledby="home-tab">
							<div class="agile-news-table">
								<div class="w3ls-news-result">

								</div>
								<table id="table-breakpoint">
									<thead>
										<tr>
											<th>
												<table id="table-breakpoint27">
													<thead>
														<tr>
															<th>
																美食
															</th>
															<th>
																单价
															</th>
															<th>
																餐馆
															</th>
															<th>
																数量
															</th>
															<th>
																总价
															</th>
															<th>
																操作
															</th>
														</tr>
													</thead>
													<tbody>
														<%
															Cart c = (Cart) session.getAttribute("cart");
															if (c == null) {
														%>
														<a href="/meituanwaimai/front/index.jsp">当前的购物车为空，请您继续购物</a>
														<%
															} else {
																Map map = c.getCart();
																Set set = map.entrySet();
																Iterator it = set.iterator();
																while (it.hasNext()) {
																	Map.Entry entry = (Map.Entry) it.next();
																	Food f = (Food) entry.getValue();
														%>
														<form action="/meituanwaimai/cartaction!update.action"
															method="post">
															<input type="hidden" name="action" value="update">
															<input type="hidden" name="fid" value="<%=f.getFid()%>" />
															<tr>
																<td><%=f.getFname()%></td>
																<td>
																	￥<%=f.getPrice()%></td>

																<td><%=f.getRestaurant().getRname()%></td>

																<td>
																	<input type="text" name="f.number" size="6"
																		style="height: 25px; border-radius: 15px;"
																		value="<%=f.getNumber()%>" />
																</td>
																<td>
																	￥<%=f.getPrice() * f.getNumber()%></td>

																<td>
																	<a
																		href="/meituanwaimai/cartaction!update?f.fid=<%=f.getFid()%>"><img
																			src="images/update.png" alt="update" /> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
																	<a
																		href="/meituanwaimai/cartaction!delete?f.fid=<%=f.getFid()%>"><img
																			src="images/remove.png" alt="remove" /> </a>

																</td>
															</tr>

														</form>
														<%
															}
														%>
														<tr bgcolor="#41581B">
															<td></td>
															<td></td>
															<td></td>
															<td></td>
															<td align="right">
																<h4>
																	总计:
																</h4>
															</td>
															<td align="center">
																<h4>
																	¥<%=c.sum()%></h4>
															</td>

														</tr>
												</table>
													<%
														}
													%>
												<div class="cleaner h20"></div>
												<div class="right" style="font-weight: normal; background-color: rgb(255, 255, 255);"><div align="right"> 
			<font size="5" face="仿宋" color="#ff0000">
			<s:iterator value="#session.u" var="u">
			<a class="button" front="" href="/meituanwaimai/orderaction!qdadd.action?u.uname=<s:property value='uname' /> ">下单</a>
			</s:iterator>
			</font></div>
												</div>
												
												</tbody>
								</table>
								
								</thead>
								</table>
							</div>
						</div>

						<!--//content-inner-section-->
					</div>
				</div>

				<br>
				<br>
				<br>
				<br>
				<br>
				<br>

				<div class="w3agile_footer_copy">
					<p>
						Copyright &copy; 2017.MeiTuan.Company name All rights reserved.
						<a target="_blank" href="#"></a>
					</p>
				</div>
				<a href="#home" id="toTop" class="scroll" style="display: block;">
					<span id="toTopHover" style="opacity: 1;"> </span> </a>

				<script src="js/jquery-1.11.1.min.js"></script>
				<!-- Dropdown-Menu-JavaScript -->
				<script>
	$(document).ready(function() {
		$(".dropdown").hover(function() {
			$('.dropdown-menu', this).stop(true, true).slideDown("fast");
			$(this).toggleClass('open');
		}, function() {
			$('.dropdown-menu', this).stop(true, true).slideUp("fast");
			$(this).toggleClass('open');
		});
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
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup( {
			type : 'inline',
			fixedContentPos : false,
			fixedBgPos : true,
			overflowY : 'auto',
			closeBtnInside : true,
			preloader : false,
			midClick : true,
			removalDelay : 300,
			mainClass : 'my-mfp-zoom-in'
		});

	});
</script>
				<script src="js/easy-responsive-tabs.js"></script>
				<script>
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs( {
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true, // 100% fit in a container
			closed : 'accordion', // Start closed if in accordion view
			activate : function(event) { // Callback function if tab is switched
				var $tab = $(this);
				var $info = $('#tabInfo');
				var $name = $('span', $info);
				$name.text($tab.text());
				$info.show();
			}
		});
		$('#verticalTab').easyResponsiveTabs( {
			type : 'vertical',
			width : 'auto',
			fit : true
		});
	});
</script>
				<!-- tables -->
				<script type="text/javascript" src="js/jquery.basictable.min.js"></script>

				<script type="text/javascript">
	$(document).ready(function() {
		$('#table').basictable();

		$('#table-breakpoint').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint1').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint2').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint3').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint4').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint5').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint6').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint7').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint8').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint9').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint10').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint11').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint12').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint13').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint14').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint15').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint16').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint17').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint18').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint19').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint20').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint21').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint22').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint23').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint24').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint25').basictable( {
			breakpoint : 768
		});
		$('#table-breakpoint26').basictable( {
			breakpoint : 768
		});
	});
</script>
				<!-- //tables -->


				<!--/script-->
				<script type="text/javascript" src="js/move-top.js"></script>
				<script type="text/javascript" src="js/easing.js"></script>

				<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate( {
				scrollTop : $(this.hash).offset().top
			}, 900);
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

		$().UItoTop( {
			easingType : 'easeOutQuart'
		});

	});
</script>
				<!--end-smooth-scrolling-->
				<script src="js/bootstrap.js"></script>
	</body>
</html>
