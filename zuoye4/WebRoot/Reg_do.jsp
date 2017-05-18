<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
  <body style="background:url('image/background.jpg') no-repeat;">

</body>
<%
  request.setCharacterEncoding("utf-8");
  String username=request.getParameter("username");
  String password=request.getParameter("password");
  String age=request.getParameter("age");
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nzp","root","root");
  String sql="insert into user_list values(null,?,?,?)";
  PreparedStatement pstmt=con.prepareStatement(sql);
  pstmt.setString(1,username);
  pstmt.setString(2,password);
  pstmt.setString(3,age);
  int result=pstmt.executeUpdate();
  String msg="注册失败，单击确定跳转到用户信息界面！";
  if(result==1){
       msg="注册成功，单击确定跳转到用户信息界面！";
       }
       pstmt.close();
       con.close();
  %>
<script>window.alert('<%=msg%>');</script>
<% 
   response.setHeader("Refresh","1;url=List.jsp");
   %>
