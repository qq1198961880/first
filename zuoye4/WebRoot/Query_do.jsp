<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    

  </head>
  
 


    <%
  request.setCharacterEncoding("utf-8");
  String queryname=request.getParameter("queryname");
  
String sql=null;
//out.print(queryname);
Connection con=null;
 PreparedStatement ps=null; 
 ResultSet rs=null;
  
  Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nzp","root","root");

   sql="select * from user_list where user_name=?";
		ps=con.prepareStatement(sql);
 ps.setString(1,queryname);
 rs=ps.executeQuery();
if(rs.next()){
		out.println("所查询到的用户信息为");
		out.print("id:"+rs.getString("id")+"     ");
	
 out.print("用户名："+rs.getString("user_name")+"     ");

 out.print("密码:"+rs.getString("password")+"     ");

 out.print("年龄："+rs.getString("age")+"     ");


 
}
else{
out.println("所查询到的用户不存在！");
}
rs.close();
 ps.close();
 con.close();

 
		System.out.println(rs);
  
       con.close();
  %>
    <body style="background:url('image/background.jpg') no-repeat;">
    <center>
    <a href="List.jsp">点击返回
    </a>
    </center>
   </body>
 
</html>
