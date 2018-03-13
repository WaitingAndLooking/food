<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.user.entity.Comment"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>contact</title>
    
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
						<h1><a  href="index.html"><span>常信</span>外卖</a></h1>
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
			
					
	
<!-- //breadcrumb -->
			<!--/content-inner-section-->
				<div class="w3_content_agilleinfo_inner">
					<div class="agile_featured_movies">
							<div class="inner-agile-w3l-part-head">
					            <h3 class="w3l-inner-h-title">留言</h3>
								<p class="w3ls_head_para">您的评价是对我们最好的鼓励。</p>
							</div>
						<div class="w3_mail_grids">
						
						<br/><br/>
								
									<div class="col-md-6 w3_agile_mail_grid">
			<font  size="6" >本店全部留言</font>	
			<hr/>						
			<table width="100%" border="0" align="center">
				<tbody>
					
					<%
						List<Comment> list = (List<Comment>) session
								.getAttribute("clist");
						Iterator it = list.iterator();
						while (it.hasNext()) {
					%>
					<s:iterator value="#session.clist" status="status" var="c">
						<tr>
							<td >
								<font  size="5" face="黑体"><s:property
										value="#c.user.uname" />: </font>
							<br/>
							
								<font size="4" face="仿宋" style="align:center"> <p align="center"><s:property value="#c.content" /></p>
								</font>
							<br/>
								 <%
 						Comment c = (Comment) it.next();
 						SimpleDateFormat sdf = new SimpleDateFormat(
 						"yyyy-MM-dd HH:mm:ss");
 						String d = sdf.format(c.getDate());
 %> 
 							<font size="2" face="仿宋" ><p align="right"><%=d %> </p></font>
 							<hr/>
							</td>
						</tr>
						<br/>
						
					</s:iterator>
						<%
						}
					%>
					
					</tbody>
			</table>
										
									</div>
									
									<!--留言模块-->
									
									<s:iterator value="#session.rlist" var="res">
									<form action="/meituanwaimai/comaction!add.action" method="post">
									<s:hidden name="action" value="insert" />
									<s:hidden name="c.restaurant.rname" value="%{#res.rname}"/>
									<s:hidden name="c.user.uname" value="%{#u.uname}"/>
									
									
									<div class="col-md-6 w3_agile_mail_grid two">
									
										<textarea name="c.content" placeholder="Your Message" required></textarea>
										<input type="submit" value="提交">
									
									
									</div>
									
									<div class="clearfix"> </div>
									
								</form>
								</s:iterator>
								
					
					</div>
					</div>
							
				</div>
			<!--//content-inner-section-->


	
			<div class="w3agile_footer_copy">
				    <p>Copyright &copy; 2017.MeiTuanWaiMai.Company name All rights reserved.<a target="_blank" href="http://www.777moban.com/"></a></p>
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
			<!-- //search-jQuery -->
			

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
