<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%
	Statement stmt = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/todos","root","cs1234");
	
	
	stmt = conn.createStatement();
	if(stmt.execute("select * from todo")){
		rs = stmt.getResultSet();
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div>
	<h1>yw's todos</h1>
	<hr>
	<%
		while(rs.next()){
			out.println(rs.getInt("id") + " : " +rs.getString("item"));
		}
	rs.close();
	stmt.close();
	
	%>
	1. buy milk<br>
	2. walk with doggy<br>
	<hr>
	
	<form method="post" action="write.jsp">
		<input type="text" name="todo-item"/>
		<input type="submit" value="�ۼ�"/>
	</form>
</div>


</body>
</html>