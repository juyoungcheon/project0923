<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="DBConn.jsp"%>

<%
   PreparedStatement pstmt=null;
   String custno=request.getParameter("custno");
   try{
	   String sql="delete from member0919 where custno=?";
	   pstmt=conn.prepareStatement(sql);
	   pstmt.setString(1, custno);
	   pstmt.executeUpdate();
	   %>
	   
	   <script>
	   alert("삭제 성공");
	   location.href="hobbySelect.jsp"
       </script>
	   <%
	   
	   
   }catch(Exception e){
	   System.out.println("삭제 실패");
	   System.out.println(e.getMessage());
   }

%>