<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="AjaxUtils.js"></script>
<script type="text/javascript">
	function register(){
		var id = document.getElementsByName("id")[0].value;
		var pass = document.getElementsByName("pass")[0].value;
		var pass1= document.getElementsByName("pass1")[0].value;
		var p1=document.getElementById("msg");
		if (pass==pass1){
			if(id.length>0 && pass.length>0){
				postHttp("http://localhost:8080/day18/RegisterServlet","id="+id+"&pass="+pass,p1);
				
			}else{
				p1.innerHTML="账号密码不能为空";
			}
		}else{
			p1.innerHTML="2次密码不一样" ;
		}
	}
	function checkName(obj){
		var id =obj.value;
		var msg = document.getElementById("ishave");
		if(id.length>0){
			getHttp("http://localhost:8080/day18/CheckNameServlet","id="+id,msg);
		}else{
			msg.innerHTML="账号不能为空";
			
		}
	}
</script>
<body>
	<center>
	<%-- <%= request.getAttribute("msg")!= null?request.getAttribute("msg"):"" %> --%>
<!-- <form action="RegisterServlet" method="get"> -->
		<label>账户</label>
		<input type="text" name="id" onchange="checkName(this)"/><label id ="ishave"></label><br/>
		<label>密码</label>
		<input type ="password" name ="pass"/><br/>
		<label>确认密码</label>
		<input type ="password" name ="pass1"/><br/>
		<p id = "msg"></p>
		<input type="button" value="注册" onclick="register()" />
	<!-- 	</form> -->
	</center>
</body>
</html>