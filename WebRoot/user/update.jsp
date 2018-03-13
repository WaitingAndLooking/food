<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="com.user.entity.User"%>
<html>
	<head>

		<title>修改用户</title>
		<style type="text/css">
.btn {
	width: 150px;
	height: 30px;
}
</style>

	</head>

	<body>
		<br>
		<div align="center">
			<br/>
			<br/>
			<br/>
			<br/>
			<br>
			<br />
			<%
				User u = (User) session.getAttribute("preupdate");
			%>
			<form action="/meituanwaimai/user/useraction!update.action"
				method="post">
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="uid" value="<%=u.getUid()%>" />
				<br />
				<font size="4" face="仿宋"><strong>用&nbsp;户&nbsp;名</strong>
				</font>
				<input type="text" style="height: 25px; border-radius: 15px;"
					name="u.uname" value="<%=u.getUname()%>">
				<br>
				<br>
				<%
					if (u.getSex().equals("男")) {
				%>
				<font size="4" face="仿宋"><strong>性&nbsp;&nbsp;&nbsp;别</strong>
				</font>
				<input type="radio" name="u.sex" value="女" />
				<font size="4" face="仿宋"><strong>女</strong>
				</font>
				<input type="radio" name="u.sex" value="男" checked="checked" />
				<font size="4" face="仿宋"><strong>男 </strong>
				</font>
				<br>
				<br>
				<%
					}
				%>
				<%
					if (u.getSex().equals("女")) {
				%>
				<font size="4" face="仿宋"><strong>性&nbsp;&nbsp;&nbsp;别</strong>
				</font>
				<input type="radio" name="u.sex" value="女" checked="checked" />
				<font size="4" face="仿宋"><strong>女</strong>
				</font>
				<input type="radio" name="u.sex" value="男" />
				<font size="4" face="仿宋"><strong>男</strong>
				</font>
				<br>
				<br>
				<%
					}
				%>
				<font size="4" face="仿宋"><strong>密
						&nbsp;&nbsp;&nbsp;码</strong>
				</font>
				<input type="password" style="height: 25px; border-radius: 15px;"
					name="u.password" value="<%=u.getPassword()%>" />
				<br>
				<br>
				<font size="4" face="仿宋"><strong>联系方式</strong>
				</font>
				<input type="text" style="height: 25px; border-radius: 15px;"
					name="u.phone" value="<%=u.getPhone()%>">
				<br>
				<br>
				<font size="4" face="仿宋"><strong> 邮件地址</strong>
				</font>
				<input type="text" style="height: 25px; border-radius: 15px;"
					name="u.email" value="<%=u.getEmail()%>">
				<br />
				<br />
				<%
					if (u.getMyright() == 1) {
				%>
				<font size="4" face="仿宋"><strong>用户权限</strong>
				</font>
				<input type="radio" name="u.myright" value="1" checked="checked" />
				<font size="4" face="仿宋"><strong> 管理员</strong>
				</font>
				<input type="radio" name="u.myright" value="2" />
				<font size="4" face="仿宋"><strong>店主</strong>
				</font>
				<input type="radio" name="u.myright" value="3" />
				<font size="4" face="仿宋"><strong> 用户 </strong>
				</font>
				<br />
				<br />
				<%
					}
				%>
				<%
					if (u.getMyright() == 2) {
				%>
				<font size="4" face="仿宋"><strong>用户权限 <input
							type="radio" name="u.myright" value="1"> 管理员 <input
							type="radio" name="u.myright" value="2" checked="checked">
						店主 <input type="radio" name="u.myright" value="3"> 用户 <br>
						<br>
						<%
							}
						%>
				</strong>
				</font>


				<font face="仿宋"><strong>
						<%
							if (u.getMyright() == 3) {
						%> <font size="4">用户权限 <input
								type="radio" name="u.myright" value="1"> 管理员 <input
								type="radio" name="u.myright" value="2"> 店主 <input
								type="radio" name="u.myright" value="3" checked="checked">
							用户 </font>
				</strong>
				</font>
				<br />
				<br />
				<%
					}
				%>
				<input type="submit" value="确定" class="btn">
				<input type="button" value="返回" class="btn" onclick="history.back()"/>

			</form>
		</div>
	</body>
</html>
