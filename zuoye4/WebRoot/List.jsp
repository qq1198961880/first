<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style>     
  td {text-align:center}  
  </style>
    <base href="<%=basePath%>">
    
    <title>My JSP 'List.jsp' starting page</title>
   
  </head>

  
  <body style="background:url('image/background.jpg') no-repeat;">
  <table align="center" width="50%" bordercolor='black' border='1' style="border-collapse: collapse">
    <tr><th>id</th><th>用户名</th><th>密码</th><th>年龄</th><th>operation</th><th>operation</th></tr>
    <%
    request.setCharacterEncoding("utf-8");
    Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nzp?useUnicode=true&characterEncoding=utf8", "root", "root");
				    String sql="select * from user_list";
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery(sql);
    while(rs.next()){
    int id=rs.getInt(1);
    %>
    <tr ><td><%=rs.getString("id") %></td>
    <td><%=rs.getString("user_name") %></td>
    <td><%=rs.getString("password") %></td>
    <td><%=rs.getString("age") %></td>
    <td><a href="Update.jsp?id=<%=id%>">修改
    <td><a href="Del_do.jsp?id=<%=id%>"onclick="return confirm('删除？')">
    删除</a></td></tr>   
<%
}
rs.close();
stmt.close();
con.close();
%>
</table>
    <table align="center">
      <td><a href="Query.jsp">查询
      </a>
      </td>
      </table>

    <table align="center">
      <td><a href="Reg.jsp">注册新用户
      </a>
      </td>
      </table>
      <table align="center">
      <td><a href="Log.jsp">返回登录界面
      </a>
      </td>
      </table>
  </body>
</html>
