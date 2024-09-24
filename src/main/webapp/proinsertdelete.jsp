<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBConn.jsp"%>

<%
   PreparedStatement pstmt=null;
   String pnumber=request.getParameter("pnumber");
   try{
	   String sql="delete from list0919 where pnumber=?";
	   pstmt=conn.prepareStatement(sql);
	   pstmt.setString(1, pnumber);
	   pstmt.executeUpdate();
	   %>
	   
	   <script>
	   alert("삭제 성공");
	   location.href="proinsert.jsp"
       </script>
	   <%
	   
	   
   }catch(Exception e){
	   System.out.println("삭제 실패");
	   System.out.println(e.getMessage());
   }

%>