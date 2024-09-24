<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
	if(document.form.custno.value==""){
		alert("회원번호가 입력되지 않았습니다.");
		return false;
	}
	if(document.form.custname.value==""){
		alert("회원성명이 입력되지 않았습니다.");
		return false;
	}
	if(document.form.phone.value==""){
		alert("회원전화가 입력되지 않았습니다.");
		return false;
	}
	if(document.form.address.value==""){
		alert("회원주소가 입력되지 않았습니다.");
		return false;
	}
	if(document.form.joindate.value==""){
		alert("가입일자가 입력되지 않았습니다.");
		return false;
	}
	if(document.form.code.value==""){
		alert("도시코드가 입력되지 않았습니다.");
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
.td1{
width:70%;
}
.c1{
padding :0 0 0 20px;
	
}
</style>
</head>
<%@ include file="DBConn.jsp" %>
<%
   ResultSet rs=null;
   PreparedStatement pstmt=null;
   int next_id=0;
   try{
	   String sql="select max(custno) from member0919";
	   pstmt=conn.prepareStatement(sql);
	   rs=pstmt.executeQuery();
	   if(rs.next()){
	       next_id=rs.getInt(1)+1;
   }else{
	   next_id=1;
   }
   }catch(Exception e){
	   System.out.println("읽기 오류");
	   System.out.println(e.getMessage());
   }
%>
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
<h1 class="h1"><br>홈쇼핑 회원 등록</h1><br>
<form name="form" method="post" action="registerprocess.jsp">
<table border=1 class="p1">
<tr>
<th>회원번호(자동발생)</th>
<td><input type="text" name="custno" value="<%=next_id%>"></td>
<tr>
<th>회원성명</th>
<td><input type="text" name="custname">
<tr>
<th>회원전화</th>
<td><input type="text" name="phone">
<tr>
<th>회원주소</th>
<td><input type="text" class="td1" name="address"></td>
<tr>
<th>가입일자</th>
<td><input type="date" name="joindate"></td>
<tr>
<th>고객등급</th>
<td><select name="grade">
<option value="A">A:VIP</option>
<option value="B">B:일반</option>
<option value="C">C:직원</option>
</select></td>
<tr>
<th>도시코드</th>
<td><select name="city">
<option value="01">01:서울</option>
<option value="02">02:경기</option>
<option value="10">10:대전</option>
<option value="20">20:부산</option>
<option value="30">30:광주</option>
<option value="40">10:울산</option>
<option value="50">01:대구</option>
<option value="60">60:강원</option>
<option value="70">70:경상</option>
<option value="80">80:충청</option>
<option value="90">90:제주</option>
</select></td>
<tr>
<th>관심상품</th>
<td><input type="checkbox" name="goods" value="프로그램">프로그램
<input type="checkbox" name="goods" value="의류">의류
<input type="checkbox" name="goods" value="식료품">식료품
<input type="checkbox" name="goods" value="컴퓨터">컴퓨터
<input type="checkbox" name="goods" value="공산품">공산품
<input type="checkbox" name="goods" value="관광">관광
<input type="checkbox" name="goods" value="전자제품"> 전자제품
<input type="checkbox" name="goods" value="건강제품">건강제품
<input type="checkbox" name="goods" value="운동기구">운동기구</td>
<tr>
<td colspan=2 align="center">
<input type="button" value="등록" onclick="check()">
<input type="reset" value="취소"></td>

</table></form>
</section>
  <footer>
HRDKOREA Copyright&copy;2024 All rights reserved. Human Resources Development Service of korea.
</footer>
</body>
</html>