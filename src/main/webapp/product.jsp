<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
	if(document.form.pcode.value=""){
		alert("상품 코드가 등록되지 않았습니다.");
		return false;
	}
	if(document.form.pname.value==""){
		alert("상품 이름이 등록되지 않았습니다.");
		return false;
	}
	form.submit();
}
</script>
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
}
.c1{
padding :0 0 0 20px;
}
.h3{
text-align:center;
}
	
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
<h3 class="h3">상품 등록화면</h3>
<table border=1 class="tb1">
<form name="form" method="post" action="proinsertprocess.jsp">
<tr>
<th>상품코드</th>
<td><input type="text" name="pnumber"></td></tr>
<tr>
<th>상품명</th>
<td><input type="text" name="pname"></td></tr>
<tr>
<th>단가</th>
<td><input type="text" name="pcost"></td>
<tr>
<th>재고수량</th>
<td><input type="text" name="invent"></td>

<tr>
<td colspan=2 align="center">
<input type="submit" value="등록" onclick=check();>
<input type="button" value="취소">
</td>
</form>
</table>
</section>
<footer>
HRDKOREA Copyright&copy;2024 All rights reserved. Human Resources Development Service of korea.
</footer>
</body>
</html>