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
    String custno=request.getParameter("custno");//포맷을 넘어온 데이터는 무조건 숫자취급
    String custname=request.getParameter("custname");
    String phone=request.getParameter("phone");
    String address=request.getParameter("address");
    String joindate=request.getParameter("joindate");
    String grade=request.getParameter("grade");
    String city=request.getParameter("city");
    String goods=request.getParameter("goods");
    try{
    	String sql="insert into member0919 values(?,?,?,?,?,?,?,?)"; //입력은 insert  수정은 update
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1, custno);
    	pstmt.setString(2, custname);
    	pstmt.setString(3, phone);
    	pstmt.setString(4, address);
    	pstmt.setString(5, joindate);
    	pstmt.setString(6, grade);
    	pstmt.setString(7, city);
    	pstmt.setString(8, goods);
    	pstmt.executeUpdate();
    	System.out.println("회원등록 성공");
    }catch(Exception e){
    	System.out.println("회원등록 실패");
    	System.out.println(e.getMessage());
    }
    

%>
</body>
</html>