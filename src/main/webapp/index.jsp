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
.td1{
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
<h1 class="h1"><br>join 실습 시스템</h1><br>
<p class="c1">&emsp;회원매출정보 데이터베이스를 구축하고, 회원관리 프로그램을 작성하는 프로그램이다.<br>
&emsp;프로그램 작성 순서<br>
1. 회원정보 테이블을 생성한다.<br>
2. 매출정보 테이블을 생성한다.<br>
3. 회원정보,매출정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.<br>
4. 회원정보 입력 프로그램을 작성한다.<br>
5. 회원정보 조회 프로그램을 작성한다.<br>
6. 회원매출정보 조회 프로그램을 작성한다.
</p>
</section>
  <footer>
HRDKOREA Copyright&copy;2024 All rights reserved. Human Resources Development Service of korea.
</footer>
</body>
</html>