<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function check(){
	if(document.form.t1.value==""){
		alert("1번 입력창을 입력하세요");
		document.form.t1.focus();
		return false;
	}
	if(document.form.t2.value=="0"){
		alert("2번을 선택해 주세요");
		document.form.t2.focus();
		return false;
	}
	let cnt=0;
	let chk=document.getElementsByName("chk");
	for(let i=0;i<chk.length;i++){
		if(chk[i].checked==true){
			cnt++;
			break;
		}
	}
	if(cnt==0){
		alert("3번을 체크해 주세요");
		return false;
	}
	if(document.form.rao.value==""){
		alert("4번을 체크해 주세요")
        return false;
	}
}
</script>
</head>
<body>
<form name="form">
<h3>Input 유효성 체크하기</h3>
1.Text<br>
<input type="text" id="t1" name="t1"><br>
2.select <선택안함 : 없음><br>
<select name="t2">
<option value="0">없음</option>
<option value="1">가</option>
<option value="2">나</option>
<option value="3">다</option>
</select><br>
3.checkbox<br>
<input type="checkbox" name="chk" value="a">a 방법
<input type="checkbox" name="chk" value="b">b 방법
<input type="checkbox" name="chk" value="c">c 방법
<br>
4.radio<br>
<input type="radio" name="rao" value"m">남성
<input type="radio" name="rao" value"w">여성<br>

<input type="button" value="유효성 검사" onclick="check()">
</form>
</body>
</html>