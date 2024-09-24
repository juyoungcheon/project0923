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
width:70%;
}
.tb1{
margin: 0 auto;
width:70%;
text-align:center;
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

<h3 class="h1">상품목록조회</h3>
<section>
<table border=1 id=tb1>
<tr>
<th>no</th>
<th>상품번호</th>
<th>상품명</th>
<th>단가</th>
<th>재고</th>
<th>구분</th>
</tr>
<%@ include file="DBConn.jsp" %>
<%
PreparedStatement pstmt=null;
ResultSet rs=null;
int no=0;
try{
	   String sql="select * from list0919 ";//order by ()desc(내림차순) asc(오름차순)
	   pstmt=conn.prepareStatement(sql);
	   rs=pstmt.executeQuery();
	   while(rs.next()){
		   String pnumber=rs.getString("pnumber");
		   String pname=rs.getString("pname");
		   String pcost=rs.getString("pcost");
		   String invent=rs.getString("invent");
		   no++;
%>
    <tr>
    <td><%=no %></td>
    <td><%=pnumber %></td>
    <td><%=pname %></td>
    <td><%=pcost %></td>
    <td><%=invent %></td>
    <td><a href="proinsertupdate.jsp?pnumber=<%=pnumber %>">수정</a>/
    <a href="proinsertdelete.jsp?pnumber=<%=pnumber %>"
    onclick="if(!confirm('정말로 삭제하시겠습니까?'))return false;">삭제</a></td>
    
    </tr>
    <%
    	   }
       }catch(Exception e){
    	   System.out.println("읽기 오류");
    	   System.out.println(e.getMessage());//section 닫아주는 창 위로 옮겨야 함
       }
%>
</table>
</section>
<footer>
<p>HRDKOREA Copyright&copy;2024 All rights reserved. Human Resources Development Service of korea.</p>
</footer>
</body>
</html>