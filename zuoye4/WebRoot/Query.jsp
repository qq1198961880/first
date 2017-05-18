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
    <h1 align="center">查询用户</h1>
    
    <center>
    <form name="form" action="Query_do.jsp" method="post">

    请输入要查询的用户名：
    <input type="text" name="queryname"><br>
    <input  type="submit" value="确定">
    </form>
    <form action="List.jsp">
    <input type="submit" value="返回">
    </form>
    </center>
    
  </body>
  
</html>
