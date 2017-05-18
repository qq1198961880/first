<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<body style="background:url('image/background.jpg') no-repeat;">
</body>
<%
  request.setCharacterEncoding("utf-8");
  String id=request.getParameter("id");
  String username=request.getParameter("username");
  String password=request.getParameter("password");
  String age=request.getParameter("age");
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nzp","root","root");
  String sql="update user_list set user_name=?,password=?,age=? where id=?";
  PreparedStatement pstmt=con.prepareStatement(sql);
  pstmt.setString(1,username);
  pstmt.setString(2,password);
  pstmt.setString(3,age);
  pstmt.setInt(4,Integer.parseInt(id));
  int result=pstmt.executeUpdate();
  String msg="修改失败，单击确定返回用户信息界面！";
  if(result==1){
       msg="修改成功，单击确定返回用户信息界面！";
       }
       pstmt.close();
       con.close();
  %>
<script>window.alert('<%=msg%>');</script>
<% 
   response.setHeader("Refresh","1;url=List.jsp");
   %>

