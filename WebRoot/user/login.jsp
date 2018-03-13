<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<style type="text/css">
.div1 {
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px 0 0 -200px;
	width: 400px;
	height: 300px;
}

.btn {
	width: 150px;
	height: 30px;
}

.t {
	width: 200px;
	height: 60px;
}

.dibu {
	position: fixed;
	top: 30; //
	这里换成top: 0;
	就悬浮在头部 width: 100%;
	height: 100px;
	right: 80;
	z-index: 100;
}

.dingbu {
	position: fixed;
	top: 10; //
	这里换成top: 0;
	就悬浮在头部 width: 100%;
	height: 100px;
	left: 80;
	z-index: 100;
}

a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

a:hover {
	text-decoration: none;
}

a:active {
	text-decoration: none;
}
</style>



	</head>

	<body background="../front/images/geometry2.png">
		
			<form action="useraction!login.action" method="post">
				<input type="hidden" name="action" value="login" />

				<div align="center" class="div1">
						<br/>
						<br/>
						<br/>
					<input class="t" type="text" name="uname"
						style="height: 25px; border-radius: 15px;" placeholder="用户名">
					<br>
					<br>

					<input type="password" name="password"
						style="height: 25px; border-radius: 15px;" placeholder="密码">
					<br>
					<br>
					<input type="radio" name="myright" value="1">
					<strong>管理员</strong>
					<input type="radio" name="myright" value="2">
					<strong>用户</strong>
					<input type="radio" name="myright" value="3">
					<strong>店主</strong>
					<br>

					<br>

					<input type="submit" value="登陆" class="btn">
					<br />
					<br />
					<font face="宋体">还没账号？ </font><font color="#ff0000" face="宋体"><a
						href="/meituanwaimai/user/register.jsp">免费注册</a> </font>
				</div>
			</form>
			<div class="dibu">
				<font face="宋体" size="4"><a href="">餐厅入驻</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a
					href="">关于我们</a> </font>

			</div>
			<div class="dingbu">
				<font size="7" face="仿宋"><strong>常信外卖</strong></font>
			</div>
			
	</body>
	
</html>
