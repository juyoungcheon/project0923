<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
margin:0;
padding:0;
}
header
{
height:15%;
text-align:center;
background-color:gray;
color:white;
font-size:2em;
line-height:130px;
}
nav{
height:5%;
background-color:black;
line-height:45px;
}
nav li{
display:inline; 
padding:0 15px;
}
nav a{
text-decoration:none;
color:white;
}
section{
height:75%;
}
html,body{
height:100%;
width:100%;
}
footer{
height:5%;
background-color:gray;
color:white;
text-align:center;
line-height:50px;
}
.h1{
text-align:center;
}
.p1{
margin:0 auto;
width:60%;
text-align:center;
}
.tb1{
width:70%;
}
.c1{
padding :0 0 0 20px;
	
}
</style>
</head>
<body>
 <header>
<b>회원 매출 관리 ver 1.0</b>
</header>
   <nav>
<ul>
<li><a href="register.jsp">회원등록</a></li>
<li><a href="product.jsp">상품등록</a></li>
<li><a href="insert.jsp">회원목록조회/수정/삭제</a></li>
<li><a href="proinsert.jsp">상품목록조회</a></li>
<li><a href="saleshap.jsp">회원매출집계조회</a></li>
<li><a href="sales.jsp">회원매출조회</a></li>
<li><a href="index.jsp">홈으로</a></li>
</ul>
</nav>
<section>
<%@ include file="DBConn.jsp" %>
<%
  String pnumber=request.getParameter("pnumber");
  ResultSet rs=null;
  PreparedStatement pstmt=null;
  
  try{
	  String sql="select * from list0919 where pnumber=? ";
	  pstmt=conn.prepareStatement(sql);
	  pstmt.setString(1, pnumber);
	  rs=pstmt.executeQuery();
	  if(rs.next()){
		  String pname=rs.getString("pname");
		  String pcost=rs.getString("pcost");
		  String invent=rs.getString("invent");
		
%>
<h1 class="h1"><br>회원목록조회/수정</h1>
<form name="form" method="post" action="proinsertupdateprocess.jsp">
<table border=1 class="p1">
<tr>
<th>상품번호</th>
<td><input type="text" name="pnumber" value="<%=pnumber %>">
<tr>
<th>상품명</th>
<td><input type="text" name="pname" value="<%=pname %>">
<tr>
<th>단가</th>
<td><input type="text" name="pcost" value="<%=pcost %>">
<tr>
<th>재고수량</th>
<td><input type="text" name="invent" value="<%=invent %>"></td>
<tr>
<td colspan=2 align="center">
<input type="button" value="등록" onclick="check">
<input type="reset" value="취소">
</table>
<%
  }
			  
  }catch(Exception e){
	  System.out.print("조회 실패");
	  System.out.print(e.getMessage());
  }
 %>
</form>
</section>
  <footer>
HRDKOREA Copyright&copy;2024 All rights reserved. Human Resources Development Service of korea.
</footer>
</body>
</html>