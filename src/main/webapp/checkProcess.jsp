<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
   String lang[]=request.getParameterValues("lang"); //체크박스는 배열로 받아야함. 여러개니까
   String chk="";
   if(lang!=null){//lang의 길이 몇 개 체크되었는지 윗줄[]배열
	   for(int i=0;i<lang.length;i++){//for)(int i=0;i<lang.length;i++)for(String val:lang)
          if(i==(lang.length-1)){
          chk=chk+lang[i];
   //System.out.println("lang:"+val);
   }else{
	   chk=chk+lang[i]+",";
   }
	   }
   System.out.println("cah:"+chk);
   String v1[]=chk.split(",");
   for(int i=0;i<v1.length;i++){
   System.out.println("v1:"+v1[i]);
   }
   }
%>
</body>
</html>