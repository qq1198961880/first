<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body style="background:url('image/background.jpg') no-repeat;">
    <%
    request.setCharacterEncoding("utf-8");
    String userName = (String)request.getParameter("userName");
    out.print(userName);
    String userPass = (String)request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/nzp?useUnicode=true&characterEncoding=utf8", "root", "root");
		String sql = "select *  from user_list where user_name ='"+userName+"'";
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
        if(rs.next()){
            System.out.println(userPass);
             String  getPassword  = rs.getString("password");
              System.out.println(getPassword); 
             if(getPassword.equals(userPass)){
                out.print("欢迎光临！");
                response.setHeader("Refresh","1;url=List.jsp");
                session.setAttribute("Flag","true");
             }else{
             	out.print("密码有误！即将返回！");
             	response.setHeader("Refresh","1;url=Log.jsp");
             }
        }else{
           out.print("用户名有误！即将返回！");
           response.setHeader("Refresh","1;url=Log.jsp");
        }
   
    %>
   
  </body>
</html>
