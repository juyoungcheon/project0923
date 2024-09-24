<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    Connection conn=null;
    try{
    	String jdbcUrl="jdbc:oracle:thin:@//localhost:1521/xe";//오라클은 무조건 xe, 반면에 sql은 yang으로 설정한 것처럼 설정 가능함 . localhost는 도메인 주소 들어가야함.
    	String jdbcDriver="oracle.jdbc.OracleDriver";
    	String user="system";//sql은 root, 한글은 2byte 차지하지만 오라클은 3byte차지함
    	String pass="1234";
    	Class.forName(jdbcDriver);
    	conn=DriverManager.getConnection(jdbcUrl,user,pass);
    	System.out.println("database 연결 성공");
    }catch(Exception e){
    	System.out.println("database 연결 실패");
    	System.out.println(e.getMessage());
    }
    
%>