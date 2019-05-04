<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Click "Submit" to modify records.</h1>
<form method = "POST">
	<input type = "submit" name = "SUBMIT" value = "Submit" />
		    <% String button = request.getParameter("SUBMIT");
	        if(button!=null && button.equals("Submit")){
				String URL = "jdbc:mysql://localhost:3306/sys?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
				Connection connect = null;
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				connect = DriverManager.getConnection(URL, "root", "123");					
				PreparedStatement modify = connect.prepareStatement("UPDATE students SET name = 'Scott' WHERE ssn = '746897816'");
				modify.executeUpdate();
			    response.sendRedirect("ModifyRecordsResult.jsp");
		    }%>
    </form>
</body>
</html>