<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>权限控制</title>
  </head>
  <body style="background:url('image/background.jpg') no-repeat;">
    <%
    String userName = (String)request.getParameter("userName");

    String flagName = (String)session.getAttribute("Flag");
    if(flagName=="" || flagName==null){
      out.print("你没有删除权限！即将返回！");
      response.setHeader("Refresh","2;url=List.jsp");
    }else{
     out.print("你拥有删除权限，执行删除操作后讲返回！");
     String id=request.getParameter("id");
     String id0=id;
     Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/nzp?useUnicode=true&characterEncoding=utf8", "root", "root");
				    String sql="delete from user_list where id=?";
    PreparedStatement pstmt=con.prepareStatement(sql);
    pstmt.setInt(1,Integer.parseInt(id));
    int result=pstmt.executeUpdate();
    
    pstmt.close();
    con.close();
   
    }
    %>
    <% 
    response.setHeader("Refresh","2;url=List.jsp");
    %>
  </body>
</html>
