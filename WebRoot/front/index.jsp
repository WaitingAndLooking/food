<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
   <title>美食外卖</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
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
	<div id="demo-1" data-zs-src='["images/2.jpg", "images/1.jpg", "images/3.jpg","images/4.jpg"]' data-zs-overlay="dots">
		<div class="demo-inner-content">
		<!--/header-w3l-->
			   <div class="header-w3-agileits" id="home">
			     <div class="inner-header-agile">	
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
								
								<li>
									<a href="/meituanwaimai/useraction!selectByUname?u.uname=<s:property value='uname'/>">个人资料</a>
								</li>
								</s:iterator>
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
			<!--/banner-info-->
			   <div class="baner-info">
			      <h3>美食 <span>在线</span> <span>订购</span></h3>
				  <h4>美食丰富生活。</h4>
				
			   </div>
			<!--/banner-ingo-->		
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
					
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">
						<!--/agileinfo_tabs-->
					   <div class="agileinfo_tabs">
						<!--/tab-section-->
					    <div id="horizontalTab">
								<ul class="resp-tabs-list">
									<li>新品</li>
									<li>最受欢迎</li>
									<li>高评价</li>
									
								</ul>
						<div class="resp-tabs-container">
							<div class="tab1">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="f2Z65fobH2I" id="video"> <img src="images/11.jpg" alt="" class="img-responsive" /> </div>
													</div>


										
	        <div class="player-text">
												<p class="fexi_header">黄金凤尾虾</p>
												<p class="fexi_header_para"><span class="conjuring_w3">介绍<label>:</label></span>江苏南京市汉族传统名菜,属金陵菜,虾肉洁白,尾壳鲜红,形似凤尾,衬以绿色青豆,色彩艳丽,虾味鲜嫩。</p>
<p class="fexi_header_para"><span>欢迎选购！<label></label></span></p><br>                                                
												<p class="fexi_header_para"><span>开售日期<label>:</label></span>2017-12-21 12:00:00</p>
												<p class="fexi_header_para">
													<span>分类<label>:</label> </span>
													海鲜
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>评价<label>:</label></span>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
												</p>
											</div>
										    </div>
										     <div class="col-md-7 wthree_agile-movies_list">
														<div class="w3l-movie-gride-agile">
															<a href="/meituanwaimai/cartaction!add.action?f.fid=29" class="hvr-sweep-to-bottom"><img src="images/m1.jpg" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h5>水果沙拉披萨</h5>						
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p><a href="/meituanwaimai/cartaction!add.action?f.fid=29">购买</a></p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		
																		<div class="clearfix"></div>
																		
																	</div>
																</div>
															<div class="ribben">
																<p>￥45</p>
															</div>
													</div>
														<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=30" class="hvr-sweep-to-bottom"><img src="images/m2.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>意大利面</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=30">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥20</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=1" class="hvr-sweep-to-bottom"><img src="images/m3.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>牛肉拌饭</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=1">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥18</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=26" class="hvr-sweep-to-bottom"><img src="images/m4.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>阳澄湖大闸蟹</h5>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=26">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥20</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=31" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>红烧牛肉面</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=31">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥18</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=35" class="hvr-sweep-to-bottom"><img src="images/m6.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>烧牛排</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=35">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥50</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=36" class="hvr-sweep-to-bottom"><img src="images/m7.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>特色拌面</h5>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=36">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥20</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=37" class="hvr-sweep-to-bottom"><img src="images/m8.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>精致皮蛋</h5>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=37">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥10</p>
												</div>
											</div>
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
								</div>
							<div class="tab2">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="fNKUgX8PhMA" id="video1"> <img src="images/22.jpg" alt="" class="img-responsive" /> </div>
													</div>


										        <div class="player-text">
												<p class="fexi_header">水果沙拉披萨</p>
												<p class="fexi_header_para"><span class="conjuring_w3">介绍<label>:</label></span>水果沙拉披萨是一道烘焙食品，主料有高筋面粉、草莓、雪梨、芒果、芝士，辅料有酵母、草莓酱、沙拉酱、清水、黄油等。</p>
												<p class="fexi_header_para"><span>开售日期<label>:</label></span>2017-12-21 12:00:00</p>
												<p class="fexi_header_para">
													<span>分类<label>:</label> </span>
													披萨
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>Star Rating<label>:</label></span>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a>
												</p>
											</div>

										    </div>
										     <div class="col-md-7 wthree_agile-movies_list">
														<div class="w3l-movie-gride-agile">
															<a href="/meituanwaimai/cartaction!add.action?f.fid=29" class="hvr-sweep-to-bottom"><img src="images/m9.jpg" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h5>水果沙拉披萨</h5>							
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p><a href="/meituanwaimai/cartaction!add.action?f.fid=29">购买</a></p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																				<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben">
																<p>￥45</p>
															</div>
													</div>
														<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=30" class="hvr-sweep-to-bottom"><img src="images/m10.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>意大利面</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=30">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥20</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=38" class="hvr-sweep-to-bottom"><img src="images/m11.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>烧牛肋骨</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=38">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥30</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=2" class="hvr-sweep-to-bottom"><img src="images/m12.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>生煎包</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=2">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥20</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=39" class="hvr-sweep-to-bottom"><img src="images/m13.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>糖醋排骨</h5>							
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=39">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥30</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=40" class="hvr-sweep-to-bottom"><img src="images/m14.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>肉末茄子</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=40">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥25</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=44" class="hvr-sweep-to-bottom"><img src="images/m15.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>烤鱿鱼</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=44">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥15</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=45" class="hvr-sweep-to-bottom"><img src="images/m16.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>炒鱿鱼</h5>				
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=45">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
																<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥17</p>
												</div>
											</div>
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
							</div>
						<div class="tab3">
								<div class="tab_movies_agileinfo">
										<div class="w3_agile_featured_movies">
											<div class="col-md-5 video_agile_player">
										            <div class="video-grid-single-page-agileits">
														<div data-video="BXEZFd0RT5Y" id="video2"> <img src="images/44.jpg" alt="" class="img-responsive" /> </div>
													</div>

        <div class="player-text">
												<p class="fexi_header">意大利面 </p>
												<p class="fexi_header_para"><span class="conjuring_w3">介绍<label>:</label></span>作为意大利面的法定原料，杜兰小麦是最硬质的小麦品种，具有高密度、高蛋白质、高筋度等特点，其制成的意大利面通体呈黄色，耐煮、口感好。 </p>
												<p class="fexi_header_para"><span>开售日期<label>:</label></span>2017-12-21 12:00:00</p>
												<p class="fexi_header_para">
													<span>分类<label>:</label> </span>
													面食
												</p>
												<p class="fexi_header_para fexi_header_para1"><span>评价<label>:</label></span>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a>
												</p>
											</div>

										    </div>
										     <div class="col-md-7 wthree_agile-movies_list">
														<div class="w3l-movie-gride-agile">
															<a href="/meituanwaimai/cartaction!add.action?f.fid=29" class="hvr-sweep-to-bottom"><img src="images/m1.jpg" title="Movies Pro" class="img-responsive" alt=" ">
																<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
															</a>
																<div class="mid-1 agileits_w3layouts_mid_1_home">
																	<div class="w3l-movie-text">
																		<h5>水果沙拉披萨</h5>		
																	</div>
																	<div class="mid-2 agile_mid_2_home">
																		<p><a href="/meituanwaimai/cartaction!add.action?f.fid=29">购买</a></p>
																		<div class="block-stars">
																			<ul class="w3l-ratings">
																				<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
																			</ul>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</div>
															<div class="ribben">
																<p>￥45</p>
															</div>
													</div>
														<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=30" class="hvr-sweep-to-bottom"><img src="images/m2.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>意大利面</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=30">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥20</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=1" class="hvr-sweep-to-bottom"><img src="images/m3.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>牛肉拌饭</h5>				
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=1">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥18</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=26" class="hvr-sweep-to-bottom"><img src="images/m4.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>阳澄湖大闸蟹</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=26">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥20</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=31" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>红烧牛肉面</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=31">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥18</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=35" class="hvr-sweep-to-bottom"><img src="images/m6.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>烧牛排</h5>					
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=35">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥50</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=36" class="hvr-sweep-to-bottom"><img src="images/m7.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>特色拌面</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=36">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥20</p>
												</div>
											</div>
												<div class="w3l-movie-gride-agile">
												<a href="/meituanwaimai/cartaction!add.action?f.fid=37" class="hvr-sweep-to-bottom"><img src="images/m8.jpg" title="Movies Pro" class="img-responsive" alt=" ">
													<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
												</a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h5>精致皮蛋</h5>						
													</div>
													<div class="mid-2 agile_mid_2_home">
														<p><a href="/meituanwaimai/cartaction!add.action?f.fid=1">购买</a></p>
														<div class="block-stars">
															<ul class="w3l-ratings">
																<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															</ul>
														</div>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="ribben">
													<p>￥10</p>
												</div>
											</div>
											 </div>
											<div class="clearfix"> </div>
										  </div>
										  <div class="cleafix"></div>
									</div>	
								</div>
							</div>
						</div>
						
					</div>
				<!--//tab-section-->	
				  <h3 class="agile_w3_title"> 新品<span>美食</span></h3>
			<!--/movies-->				
			<div class="w3_agile_latest_movies">
			
				<div id="owl-demo" class="owl-carousel owl-theme">
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="/meituanwaimai/cartaction!add.action?f.fid=31" class="hvr-sweep-to-bottom"><img src="images/m5.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h5>红烧牛肉面</h5>						
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p><a href="/meituanwaimai/cartaction!add.action?f.fid=31">购买</a></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>￥18</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="/meituanwaimai/cartaction!add.action?f.fid=35" class="hvr-sweep-to-bottom"><img src="images/m6.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h5>烧牛排</h5>						
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p><a href="/meituanwaimai/cartaction!add.action?f.fid=35">购买</a></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>￥50</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="/meituanwaimai/cartaction!add.action?f.fid=36" class="hvr-sweep-to-bottom"><img src="images/m7.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h5>特色拌面</h5>						
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p><a href="/meituanwaimai/cartaction!add.action?f.fid=36">购买</a></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>￥20</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="/meituanwaimai/cartaction!add.action?f.fid=37" class="hvr-sweep-to-bottom"><img src="images/m8.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h5>精致皮蛋</h5>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p><a href="/meituanwaimai/cartaction!add.action?f.fid=37">购买</a></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>￥10</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="/meituanwaimai/cartaction!add.action?f.fid=1" class="hvr-sweep-to-bottom"><img src="images/m3.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h5>牛肉拌饭</h5>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p><a href="/meituanwaimai/cartaction!add.action?f.fid=1">购买</a></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>￥18</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="/meituanwaimai/cartaction!add.action?f.fid=38" class="hvr-sweep-to-bottom"><img src="images/m11.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h5>烧牛肋骨</h5>						
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p><a href="/meituanwaimai/cartaction!add.action?f.fid=38">购买</a></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star" aria-hidden="true"></i></a>
													<a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>￥30</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="/meituanwaimai/cartaction!add.action?f.fid=40" class="hvr-sweep-to-bottom"><img src="images/m14.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h5>肉末茄子</h5>						
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p><a href="/meituanwaimai/cartaction!add.action?f.fid=40">购买</a></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>￥25</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="/meituanwaimai/cartaction!add.action?f.fid=39" class="hvr-sweep-to-bottom"><img src="images/m13.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h5>糖醋排骨</h5>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p><a href="/meituanwaimai/cartaction!add.action?f.fid=39">购买</a></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>￥30</p>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="w3l-movie-gride-agile w3l-movie-gride-slider ">
							<a href="/meituanwaimai/cartaction!add.action?f.fid=44" class="hvr-sweep-to-bottom"><img src="images/m15.jpg" title="Movies Pro" class="img-responsive" alt=" " />
								<div class="w3l-action-icon"><i class="fa fa-play-circle-o" aria-hidden="true"></i></div>
							</a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h5>烤鱿鱼</h5>							
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p><a href="/meituanwaimai/cartaction!add.action?f.fid=44">购买</a></p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben one">
								<p>￥15</p>
							</div>
							</div>
						</div>
					   </div>
				    </div>
				<!--//movies-->
					
					
				<!--//top-movies-->
			</div>
		</div>
			<!--//content-inner-section-->
		
	<!--/footer-bottom-->
		
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


<script type="text/javascript" src="js/jquery.zoomslider.min.js"></script>
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
