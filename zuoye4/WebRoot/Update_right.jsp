<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    

  </head>
  
  <body>
  您想修改的用户，其id为：
  <script>
document.write(id)
</script>
  </body>
    <%
    String id=request.getParameter("id");
    String flagName = (String)session.getAttribute("Flag");
    if(flagName=="" || flagName==null){
      out.print("您没有修改权限，即将返回！");
      response.setHeader("Refresh","2;url=List.jsp");
    }else{
     out.print("您拥有修改权限,即将跳转到修改页面！");
     
     response.setHeader("Refresh","2;url=Update.jsp");
     } 
    %>
  
  
</html>
