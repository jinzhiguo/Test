<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<%= request.getAttribute("msg")!= null?request.getAttribute("msg"):"" %>
<form action="loginServlet" method="post">
		<label>账户</label>
		<input type="text" name="id" /><br/>
		<label>密码</label>
		<input type ="password" name ="pass"/><br/>
		<input type="submit" value="登陆">
		</form>
	</center>
</body>
</html>