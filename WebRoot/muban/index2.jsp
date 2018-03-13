<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
  <head>
   
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description"
			content="Creative - Bootstrap 3 Responsive Admin Template">
		<meta name="author" content="GeeksLabs">
		<meta name="keyword"
			content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
		<link rel="shortcut icon" href="img/favicon.png">

		<title>美团店主</title>

		<link rel="stylesheet" href="css/index.css" type="text/css"
			media="screen" />

		<!-- Bootstrap CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!-- bootstrap theme -->
		<link href="css/bootstrap-theme.css" rel="stylesheet">
		<!--external css-->
		<!-- font icon -->
		<link href="css/elegant-icons-style.css" rel="stylesheet" />
		<link href="css/font-awesome.min.css" rel="stylesheet" />
		<!-- full calendar css-->
		<link
			href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
			rel="stylesheet" />
		<link href="assets/fullcalendar/fullcalendar/fullcalendar.css"
			rel="stylesheet" />
		<!-- easy pie chart-->
		<link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
			rel="stylesheet" type="text/css" media="screen" />
		<!-- owl carousel -->
		<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
		<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
		<!-- Custom styles -->
		<link rel="stylesheet" href="css/fullcalendar.css">
		<link href="css/widgets.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<link href="css/style-responsive.css" rel="stylesheet" />
		<link href="css/xcharts.min.css" rel=" stylesheet">
		<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
		<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->


		<script type="text/javascript">
    .right-content{
    margin-left: 180px;
	background:#fff;
    height: 100%;
    min-height:100%;
    overflow:auto;
}
    </script>

  </head>
  
  <body>
		<!-- container section start -->
		<section id="container" class="">


		<header class="header dark-bg">
		<div class="toggle-nav">
			<div class="icon-reorder tooltips"
				data-original-title="Toggle Navigation" data-placement="bottom"></div>
		</div>

		<!--logo start-->
		<a href="/meituanwaimai/muban/index2.jsp" class="logo">美食外卖<span class="lite">店主后台</span>
		</a>
		<!--logo end-->
		<div style="float: right; ">
		<br/>
			<font color="#ff0000" face="仿宋" size="5">

				欢迎登录,${u.uname}&nbsp;&nbsp;|&nbsp;&nbsp;<a href="/meituanwaimai/user/login.jsp">退出</a> </font>
		</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
		<div id="sidebar" class="nav-collapse ">
			<!-- sidebar menu start-->
			<ul class="sidebar-menu">

				<!--我的餐馆 -->
				<li class="active">
					<a class="" href="/meituanwaimai/muban/index2.jsp"> <i class="icon_document_alt"></i> <span>我的餐馆</span>
						<span class="menu-arrow arrow_carrot-right"></span> </a>
					<ul class="sub">
					<s:iterator value="#session.u" var="user">
						<li>
							<a class="" href="/meituanwaimai/resaction!selectByUname?user.uname=<s:property value='uname'/>"
								target="menuFrame">查看餐馆</a>
						</li>
						<li>
							<a class="" href="/meituanwaimai/dianzhu/addres.jsp" target="menuFrame">添加餐馆</a>
						</li>
					</s:iterator>
					</ul>
				</li>
				
				<!--订单信息-->
				<li class="sub-menu">
					<a href="javascript:;" class=""> <i class="icon_document_alt"></i>
						<span>我的订单</span> <span class="menu-arrow arrow_carrot-right"></span>
					</a>
					<ul class="sub">
					<s:iterator value="#session.showres" var="showres">
						<li>
							<a class="" href="/meituanwaimai/orderaction!selectByRid?o.restaurant.rid=<s:property value='rid'/>"
								target="menuFrame">查看<em><strong><s:property
							value="#showres.rname" /></strong></em>の订单</a>
						</li>
					</s:iterator>
					</ul>
				</li>

				<!--我的菜单-->
				<li class="sub-menu">
				
					<a href="javascript:;" class=""> <i class="icon_document_alt"></i>
						<span>我的菜单</span> <span class="menu-arrow arrow_carrot-right"></span>
					</a>
					<ul class="sub">
					<s:iterator value="#session.showres" var="showres">
					<!--<s:property value="#showres.rid"/>
						-->
						<li>
							<a class="" href="/meituanwaimai/foodaction!selectByRid?f.restaurant.rid=<s:property value='rid'/>"
								target="menuFrame">查看<em><strong><s:property
							value="#showres.rname" />
				</strong>
			</em>の菜单</a>
						</li>
						</s:iterator>
						<s:iterator value="#session.showres" var="showres">
						<li>
							<a class="" href="/meituanwaimai/foodaction!preupload?f.restaurant.rid=<s:property value='rid'/>" target="menuFrame">添加<em><strong><s:property
							value="#showres.rname" />
				</strong>
			</em>の菜单</a>
						</li>
						</s:iterator>
					</ul>
				</li>


			</ul>
			<!-- sidebar menu end-->
		</div>
		</aside>
		<!--sidebar end-->


		<!--菜单右边的iframe页面-->
		<div id="right-content" class="right-content">
			<div class="content">
				<div id="page_content">
					<iframe id="menuFrame" name="menuFrame" style="overflow: visible;"
						scrolling="yes" frameborder="no" width="100%" height="100%" align="right"></iframe>
				</div>
			</div>
		</div>




		</section>
		<!-- container section start -->

		<!-- javascripts -->
		<script src="js/jquery.js"></script>
		<script src="js/jquery-ui-1.10.4.min.js"></script>
		<script src="js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
		<!-- bootstrap -->
		<script src="js/bootstrap.min.js"></script>
		<!-- nice scroll -->
		<script src="js/jquery.scrollTo.min.js"></script>
		<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
		<!-- charts scripts -->
		<script src="assets/jquery-knob/js/jquery.knob.js"></script>
		<script src="js/jquery.sparkline.js" type="text/javascript"></script>
		<script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
		<script src="js/owl.carousel.js"></script>
		<!-- jQuery full calendar -->
		<
		<script src="js/fullcalendar.min.js"></script>
		<!-- Full Google Calendar - Calendar -->
		<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
		<!--script for this page only-->
		<script src="js/calendar-custom.js"></script>
		<script src="js/jquery.rateit.min.js"></script>
		<!-- custom select -->
		<script src="js/jquery.customSelect.min.js"></script>
		<script src="assets/chart-master/Chart.js"></script>

		<!--custome script for all page-->
		<script src="js/scripts.js"></script>
		<!-- custom script for this page-->
		<script src="js/sparkline-chart.js"></script>
		<script src="js/easy-pie-chart.js"></script>
		<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="js/jquery-jvectormap-world-mill-en.js"></script>
		<script src="js/xcharts.min.js"></script>
		<script src="js/jquery.autosize.min.js"></script>
		<script src="js/jquery.placeholder.min.js"></script>
		<script src="js/gdp-data.js"></script>
		<script src="js/morris.min.js"></script>
		<script src="js/sparklines.js"></script>
		<script src="js/charts.js"></script>
		<script src="js/jquery.slimscroll.min.js"></script>


	</body>
</html>
