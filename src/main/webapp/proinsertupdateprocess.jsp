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
    PreparedStatement pstmt=null;
    String pnumber=request.getParameter("pnumber");//포맷을 넘어온 데이터는 무조건 숫자취급
    String pname=request.getParameter("pname");
    String pcost=request.getParameter("pcost");
    String invent=request.getParameter("invent");
    try{
    	String sql="insert into list0919 values(?,?,?,?)"; //입력은 insert  수정은 update
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(4, pnumber);
    	pstmt.setString(1, pname);
    	pstmt.setString(2, pcost);
    	pstmt.setString(3, invent);
    	pstmt.executeUpdate();
    	System.out.println("상품등록 성공");
    }catch(Exception e){
    	System.out.println("상품등록 실패");
    	System.out.println(e.getMessage());
    }
    

%>
</body>
</html>