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
		alert("회원 번호가 등록되지 않았습니다.");
		return false;
	}
	if(document.form.custname.value==""){
		alert("회원 성명이 등록되지 않았습니다.");
		return false;
	}
	if(document.form.phone.value==""){
		alert("회원 전화가 등록되지 않았습니다.");
		return false;
	}
	if(document.form.address.value==""){
			alert("회원 주소가 등록되지 않았습니다.");
			return false;
	}
	if(document.form.joindate.value==""){
			alert("가입일자가 등록되지 않았습니다.");
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
  String custno=request.getParameter("custno");
  ResultSet rs=null;
  PreparedStatement pstmt=null;
  
  try{
	  String sql="select custno, custname, phone, address, TO_CHAR(joindate, 'YYYY-MM-DD'), grade, city, goods from member0919 where custno=?";
	  pstmt=conn.prepareStatement(sql);
	  pstmt.setString(1, custno);
	  rs=pstmt.executeQuery();
	  if(rs.next()){
		  String custname=rs.getString("custname");
		  String phone=rs.getString("phone");
		  String address=rs.getString("address");
		  String joindate=rs.getString(5);
		  String grade=rs.getString("grade");
		  String city=rs.getString("city");
		  String goods=rs.getString("goods");
		  String arr[]=goods.split(",");   
		  //쩜과 콧마로 받아야 함. (goods에 콧마가 있어서)
	 
		 
%>
<h1 class="h1"><br>회원목록조회/수정</h1>
<form name="form" method="post" action="insertupdateprocess.jsp">
<table border=1 class="p1">
<tr>
<th>회원번호(자동발생)</th>
<td><input type="text" name="custno" size="30" value="<%=custno %>">
<tr>
<th>회원성명</th>
<td><input type="text" name="custname" size="30" value="<%=custname %>">
<tr>
<th>회원전화</th>
<td><input type="text" name="phone" value="<%=phone %>">
<tr>
<th>회원주소</th>
<td><input type="text" class="td1" name="address" value="<%=address %>"></td>
<tr>
<th>가입일자</th>
<td><input type="text" name="joindate" value="<%=joindate %>"></td>
<tr>
<th>고객등급</th>
<td><select name="grade">
<option value="A"<%if(grade.equals("A")){%>selected<%}%>>A:VIP</option>
<option value="B"<%if(grade.equals("B")){%>selected<%}%>>B:일반</option>
<option value="C"<%if(grade.equals("C")){%>selected<%}%>>C:직원</option>
</select></td>
<tr>
<th>도시코드</th>
<td><select name="city">
<option value="01"<%if(city.equals("01")){%>selected<%}%>>01:서울</option>
<option value="02"<%if(city.equals("02")){%>selected<%}%>>02:경기</option>
<option value="10"<%if(city.equals("10")){%>selected<%}%>>10:대전</option>
<option value="20"<%if(city.equals("20")){%>selected<%}%>>20:부산</option>
<option value="30"<%if(city.equals("30")){%>selected<%}%>>30:광주</option>
<option value="40"<%if(city.equals("40")){%>selected<%}%>>40:울산</option>
<option value="50"<%if(city.equals("50")){%>selected<%}%>>50:대구</option>
<option value="60"<%if(city.equals("60")){%>selected<%}%>>60:강원</option>
<option value="70"<%if(city.equals("70")){%>selected<%}%>>70:경상</option>
<option value="80"<%if(city.equals("80")){%>selected<%}%>>80:충청</option>
<option value="90"<%if(city.equals("90")){%>selected<%}%>>90:제주</option>
</select></td>
<tr>
<th>관심상품</th> <!-- 체크박스는 배열로 받아야 함. 배열은 for문 if x -->
<td><input type="checkbox" name="goods" value="프로그램"
<%for(int i=0;i<arr.length;i++){if(arr[i].equals("프로그램")){%>checked<%}}%>>프로그램
<input type="checkbox" name="goods" value="의류"
<%for(int i=0;i<arr.length;i++){if(arr[i].equals("의류")){%>checked<%}}%>>의류
<input type="checkbox" name="goods" value="식료품"
<%for(int i=0;i<arr.length;i++){if(arr[i].equals("식료품")){%>checked<%}}%>>식료품
<input type="checkbox" name="goods" value="컴퓨터"
<%for(int i=0;i<arr.length;i++){if(arr[i].equals("컴퓨터")){%>checked<%}}%>>컴퓨터
<input type="checkbox" name="goods" value="공산품"
<%for(int i=0;i<arr.length;i++){if(arr[i].equals("공산품")){%>checked<%}}%>>공산품
<input type="checkbox" name="goods" value="관광"
<%for(int i=0;i<arr.length;i++){if(arr[i].equals("관광")){%>checked<%}}%>>관광
<input type="checkbox" name="goods" value="전자제품"
<%for(int i=0;i<arr.length;i++){if(arr[i].equals("전자제품")){%>checked<%}}%>>전자제품
<input type="checkbox" name="goods" value="건강제품"
<%for(int i=0;i<arr.length;i++){if(arr[i].equals("건강제품")){%>checked<%}}%>>건강제품
<input type="checkbox" name="goods" value="운동기구"
<%for(int i=0;i<arr.length;i++){if(arr[i].equals("운동기구")){%>checked<%}}%>>운동기구</td></tr>
<tr>
<td colspan=2 align="center">
<input type="button" value="작성" onclick="check()">
 </table>
<%
  }
			  
  }catch(Exception e){
	  System.out.print("읽기 오류");
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