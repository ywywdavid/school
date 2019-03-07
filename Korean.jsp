<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>이용우's to do list</h1>
<hr>

<%-- 
<%
	int a = 10;
	int b = 20;
	int c;
	c = a+b;
	out.print("value : " + c);

%>
--%>


1. 우유 사오기 <br>
2. 강아지 산책 <br>

<hr>

<form name="submitform" action="write.jsp">
<input type="text" name="todo" value="111" ></input>
<input type="submit"></input>
</form>
</body>
</html>