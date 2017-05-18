<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
<meta charset="utf-8"> 

<style>

</style>
</head>
  
  <body style="background:url('image/background.jpg') no-repeat;">
  <h2 align="center">账户管理系统</h2>
  <center>
    <form  action="Log_do.jsp" method="post">
     用户名：<input type=text name="userName"><br>
     ------------------------------<br>
     密--码：<input type="password" name="password"><br>
     <input type="submit" value="登录">     
     </form>
     
     <form action="Reg.jsp">
        <input type="submit" value="注册">
     </form>
     </center> 
  </body>
</html>
