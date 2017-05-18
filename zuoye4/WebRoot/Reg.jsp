<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body style="background:url('image/background.jpg') no-repeat;">
    <h2 align="center">注册用户</h2>
<form name="form1" onSubmit="return check()"
  action="Reg_do.jsp" method="post">
<table align="center" border="1">
<tr><th >用户名：</th>
<td><input type="text" name="username"></td></tr>
<tr><th>密码：</th>
<td><input type="password" name="password"></td></tr>
<tr><th>年龄：</th>
<td><input type="text" name="age"></td></tr>
<tr><th colspan="2">
<input type="submit" value="确定">
<input type="reset"  value="重置"></th></tr>
</table>
</form>


  </body>
</html>
