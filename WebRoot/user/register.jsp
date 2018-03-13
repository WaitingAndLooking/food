<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
	<head>
		<style type="text/css">
.register {
	position: absolute;
	top: 50%;
	left: 50%;
	margin: -150px 0 0 -200px;
	width: 400px;
	height: 300px;
}
.btn{
width: 150px;
	height: 30px;
}
.dingbu {
	position: fixed;
	top: 30; //
	这里换成top: 0;
	就悬浮在头部 width: 100%;
	height: 100px;
	right: 80;
	z-index: 100;
}

.dibu {
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
	<div class="dingbu">
				<font face="宋体" size="4">已有账号？<font size="5"><strong style="background-color: rgb(0, 128, 255);"><a href="/meituanwaimai/user/login.jsp">登录</a></strong></font></font>

			</div>
			<div class="dibu">
				<font size="7" face="仿宋"><strong>常信外卖</strong></font>
			</div>
		<div>
			<div class="register">
				<form action="/meituanwaimai/user/useraction!register.action"
					method="post">
					<input type="hidden" name="action" value="insert">
					<br />
					用&nbsp;户&nbsp;名&nbsp;
					<input style="height: 25px; border-radius: 15px;" type="text"
						name="u.uname">
					<br>
					<br>
					性&nbsp;&nbsp;&nbsp;别&nbsp;
					<input type="radio" name="u.sex" value="女" />
					女
					<input type="radio" name="u.sex" value="男" />
					男
					<br>
					<br>
					密 &nbsp;&nbsp;&nbsp;码&nbsp;
					<input style="height: 25px; border-radius: 15px;" type="password"
						name="u.password" />
					<br>
					<br>
					&nbsp;联系方式&nbsp;
					<input style="height: 25px; border-radius: 15px;" type="text"
						name="u.phone">
					<br>
					<br>
					&nbsp;邮件地址&nbsp;
					<input style="height: 25px; border-radius: 15px;" type="text"
						name="u.email">
					<br />
					<br />
					<input type="hidden" name="u.myright" value="2" />
					&nbsp;&nbsp;
					<input class="btn" type="submit" value="确定">

				</form>
			</div>
		</div>
	</body>
</html>
