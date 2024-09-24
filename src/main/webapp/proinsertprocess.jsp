<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBConn.jsp" %>
<%
   String pnumber=request.getParameter("pnumber");
   String pname=request.getParameter("pname");
   String pcost=request.getParameter("pcost");
   String invent=request.getParameter("invent");
   ResultSet rs=null;
   PreparedStatement pstmt=null;
   
   try{
	   String sql="insert into list0919 values(?,?,?,?)";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, pnumber);
		pstmt.setString(1, pname);
		pstmt.setString(2, pcost);
		pstmt.setString(3, invent);
		pstmt.executeUpdate();
		System.out.println("저장 성공");
		%>
		<script>
			alert("저장성공");
			location.href="proinsertprocess.jsp";
			
		</script>
		<%	
   }catch(Exception e){
	   System.out.println("저장 실패");
	   System.out.println(e.getMessage());
   }
   
   
   
   
   %>
</body>
</html>