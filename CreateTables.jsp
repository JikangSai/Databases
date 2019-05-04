<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CreateTables</title>
</head>
<body>

<h1>Click "Submit" to create tables.</h1>
<form  method = "POST">
<input type = "submit" name = "SUBMIT" value = "Submit" />
<% String button = request.getParameter("SUBMIT");
	if(button!=null && button.equals("Submit")){
		String URL = "jdbc:mysql://localhost:3306/sys?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection connect = null;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connect = DriverManager.getConnection(URL, "root", "123");	
					
		PreparedStatement createTable = connect.prepareStatement("CREATE TABLE students(ssn int,snum int,name varchar(10), gender varchar(1), dob datetime, c_addr varchar(20),c_phone varchar(10),p_addr varchar(20),p_phone varchar(10),primary key (ssn),unique (snum))");
		createTable.executeUpdate();

		createTable = connect.prepareStatement("CREATE TABLE departments (name varchar(50),code int,phone varchar(10),college varchar(20),primary key (code),unique (name))");
		createTable.executeUpdate();
		
		createTable = connect.prepareStatement("CREATE TABLE degrees (name varchar(50),level varchar(5),department_code int,primary key (name, level),foreign key (department_code) references departments(code))");
		createTable.executeUpdate();
		
		createTable = connect.prepareStatement("CREATE TABLE courses (name varchar(50),number int,description varchar(50),credithours int,level varchar(20),department_code int,primary key (number),unique (name),foreign key (department_code) references departments(code))");
		createTable.executeUpdate();
		
		createTable = connect.prepareStatement("CREATE TABLE register (snum int,course_number int,grade int,regtime varchar(20),primary key (snum, course_number),foreign key (snum) references students(snum),foreign key (course_number) references courses(number))");
		createTable.executeUpdate();
		
		createTable = connect.prepareStatement("CREATE TABLE major (snum int,name varchar(50),level varchar(5),primary key (snum, name, level),foreign key (snum) references students(snum),foreign key (name, level) references degrees(name, level))");
		createTable.executeUpdate();
		
		createTable = connect.prepareStatement("CREATE TABLE minor(snum int,name varchar(50),level varchar(5),primary key (snum, name, level),foreign key (snum) references students(snum),foreign key (name, level) references degrees(name, level))");
		createTable.executeUpdate();
		response.sendRedirect("CreateTablesResult.jsp"); 
		    }%>
		   	</form>   
</body>
</html>