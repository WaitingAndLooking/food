<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
	<head>
		<style type="text/css">
.btn {
	width: 150px;
	height: 30px;
}
</style>

	</head>

	<body>
	<br/>
	<br/>
		<div align="center">
			<font face="仿宋">&nbsp; <br>
				<br>
				<br>
			</font>




			<form action="/meituanwaimai/user/useraction!add.action"
				method="post">
				<font face="仿宋"><input type="hidden" name="action"
						value="insert">
					<br>
					<font size="4"><strong>用&nbsp;户&nbsp;名</strong> <input
							type="text" style="height: 25px; border-radius: 15px;" name="u.uname">
						
					<br>
						<br>
						<strong>密 &nbsp;&nbsp;&nbsp;码</strong> <input type="password"
							style="height: 25px; border-radius: 15px;" name="u.password">
							
						<br>
						<br>
						<strong>联系方式</strong> <input type="text" style="height: 25px; border-radius: 15px;"
							name="u.phone">
						<br>
						<br>
						<strong>邮件地址</strong> <input type="text" style="height: 25px; border-radius: 15px;"
							name="u.email">
							<br>
						<br>
						<strong> 性&nbsp;&nbsp;&nbsp;别 <input type="radio"
								name="u.sex" value="女">
					</strong> <strong> 女</strong> <input type="radio" name="u.sex" value="男">
						<strong>男 </strong>
						<br>
						<br>
						<strong>用户权限</strong> <input type="radio" name="u.myright"
							value="1"> <strong>管理员</strong> <input type="radio"
							name="u.myright" value="2"> <strong>店主</strong> <input
							type="radio" name="u.myright" value="3"> <strong>
							用户 </strong>
				</font>
				</font>

				<br />
				<br />
				&nbsp;&nbsp;
				<input type="submit" value="添加" class="btn">

			</form>
		</div>
	</body>
</html>
