<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <body style="background:url('image/background.jpg') no-repeat;">
    <% 
    String flagName = (String)session.getAttribute("Flag");
    if(flagName=="" || flagName==null){
      out.print("您没有修改权限，即将返回！");
      response.setHeader("Refresh","2;url=List.jsp");
    }else{
     out.print("您拥有修改权限！");
     

     //}
    
    
    String id=request.getParameter("id"); 
     Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/nzp?useUnicode=true&characterEncoding=utf8", "root", "root");
				    String sql="select * from user_list where id=?"; 
    PreparedStatement pstmt=con.prepareStatement(sql); 
    pstmt.setInt(1,Integer.parseInt(id)); 
    ResultSet rs=pstmt.executeQuery(); 
    if(rs.next()){ 
    String username=rs.getString("user_name"); 
    String password=rs.getString("password"); 
    String age=rs.getString("age"); 
    
    %>
<h2 align="center">修改用户信息</h2>
<form name="form1" onSubmit="return check()" 
      action="Update_do.jsp" method="post">
<input type="hidden" name="id" value="<%=id%>">
<table align="center" border="1">
<tr><th>用户名：</th>
<td><input type="text" name ="username" value="<%=username%>"></td></tr>
<tr><th>密码：</th>
<td><input type="password" name ="password" value="<%=password%>"></td></tr>
<tr><th>年龄：</th>
<td><input type="text" name ="age" value="<%=age%>"></td></tr>
<tr><th colspan="2">
<input type ="submit" value="修改">
<input type ="reset"  value="重置"></th></tr>
</table>
</form>
<%
}
rs.close();
pstmt.close();
con.close();
}
%>

  </body>
</html>
