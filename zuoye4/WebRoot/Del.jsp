<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<body>
</body>
    <%
    String id=request.getParameter("id");
Connection con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/nzp?useUnicode=true&characterEncoding=utf8", "root", "root");
				    String sql="delete from user_list where id=?";
    PreparedStatement pstmt=con.prepareStatement(sql);
    pstmt.setInt(1,Integer.parseInt(id));
    int result=pstmt.executeUpdate();
    
    pstmt.close();
    con.close();
    %>
    
    <% 
    response.setHeader("Refresh","0;url=List.jsp");
    %>
    
