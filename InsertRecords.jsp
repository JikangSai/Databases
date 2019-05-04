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
<h1>Click "Submit" to insert data records.</h1>
<form  method = "POST">
<input type = "submit" name = "SUBMIT" value = "Submit" />
<% String button = request.getParameter("SUBMIT");
	if(button!=null && button.equals("Submit")){
		String URL = "jdbc:mysql://localhost:3306/sys?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		Connection connect = null;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connect = DriverManager.getConnection(URL, "root", "123");			
		PreparedStatement insert = connect.prepareStatement("INSERT INTO students (ssn, snum, name, gender, dob, c_addr, c_phone, p_addr, p_phone)VALUES ('654651234', '1001', 'Randy', 'M', '20001201', '301 E Hall', '5152700988', '121 Main', '7083066321')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO students (ssn, snum, name, gender, dob, c_addr, c_phone, p_addr, p_phone)VALUES ('123097834', '1002', 'Victor', 'M', '20000506', '270 W Hall', '5151234578', '702 Walnut', '7080366333')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO students (ssn, snum, name, gender, dob, c_addr, c_phone, p_addr, p_phone)VALUES ('978012431', '1003', 'John', 'M', '19990708', '201 W Hall', '5154132805', '888 University', '5152012011')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO students (ssn, snum, name, gender, dob, c_addr, c_phone, p_addr, p_phone)VALUES ('746897816', '1004', 'Seth', 'M', '19981230', '199 N Hall', '5158891504', '21 Green', '5154132907')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO students (ssn, snum, name, gender, dob, c_addr, c_phone, p_addr, p_phone)VALUES ('186032894', '1005', 'Nicole', 'F', '20010401', '178 S Hall', '5158891155', '13 Gray', '5157162071')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO students (ssn, snum, name, gender, dob, c_addr, c_phone, p_addr, p_phone)VALUES ('534218752', '1006', 'Becky', 'F', '20010516', '12 N Hall', '5157083698', '189 Clark', '2034267632')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO students (ssn, snum, name, gender, dob, c_addr, c_phone, p_addr, p_phone)VALUES ('432609519', '1007', 'Kevin', 'M', '20000812', '75 E Hall', '5157082497', '89 National', '7182340772')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO departments (name, code, phone, college)VALUES ('Computer Science', '401', '5152982801', 'LAS')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO departments (name, code, phone, college)VALUES ('Mathematics', '402', '5152982802', 'LAS')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO departments (name, code, phone, college)VALUES ('Chemical Engineering', '403', '5152982803', 'Engineering')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO departments (name, code, phone, college)VALUES ('Landscape Architect', '404', '5152982804', 'Design')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO degrees (name, level, department_code)VALUES ('Computer Science', 'BS', '401')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO degrees (name, level, department_code)VALUES ('Software engineering', 'BS', '401')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO degrees (name, level, department_code)VALUES ('Computer Science', 'MS', '401')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO degrees (name, level, department_code)VALUES ('Computer Science', 'PhD', '401')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO degrees (name, level, department_code)VALUES ('Applied mathematics', 'MS', '402')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO degrees (name, level, department_code)VALUES ('Chemical Engineering', 'BS', '403')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO degrees (name, level, department_code)VALUES ('Landscape Architect', 'BS', '404')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO major (snum, name, level)VALUES ('1001','Computer Science', 'BS')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO major (snum, name, level)VALUES ('1002','Software Engineering', 'BS')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO major (snum, name, level)VALUES ('1003','Chemical Engineering', 'BS')");
		insert.executeUpdate();
		
		insert = connect.prepareStatement("INSERT INTO major (snum, name, level)VALUES ('1004','Landscape Architect', 'BS')");
		insert.executeUpdate();			
		
		insert = connect.prepareStatement("INSERT INTO major (snum, name, level)VALUES ('1005','Computer Science', 'MS')");
		insert.executeUpdate();
		
		insert = connect.prepareStatement("INSERT INTO Major (snum, name, level)VALUES ('1006','Applied Mathematics', 'MS')");
		insert.executeUpdate();
		
		insert = connect.prepareStatement("INSERT INTO major (snum, name, level)VALUES ('1007','Computer Science', 'PhD')");
		insert.executeUpdate();		

		insert = connect.prepareStatement("INSERT INTO minor (snum, name, level)VALUES ('1007','Applied Mathematics', 'MS')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO minor (snum, name, level)VALUES ('1005','Applied Mathematics', 'MS')");
		insert.executeUpdate();
		
		insert = connect.prepareStatement("INSERT INTO minor (snum, name, level)VALUES ('1001','Software Engineering', 'BS')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO courses (name, number, description, credithours, level, department_code)VALUES ('Spreadsheet','113', 'Microsofr Excel and Access', '3', 'Undergraduate', '401')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO courses (name, number, description, credithours, level, department_code)VALUES ('Algorithm','311', 'Design and Analysis', '3', 'Undergraduate', '401')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO courses (name, number, description, credithours, level, department_code)VALUES ('Theory of Computation','531', 'theorem and Probability', '3', 'Graduate', '401')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO courses (name, number, description, credithours, level, department_code)VALUES ('Database','363', 'Design Principle', '3', 'Undergraduate', '401')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO courses (name, number, description, credithours, level, department_code)VALUES ('Water Management','412', 'Water Management', '3', 'Undergraduate', '404')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO courses (name, number, description, credithours, level, department_code)VALUES ('Special Topics','228', 'Interesting Topics about CE', '3', 'Undergraduate', '403')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO courses (name, number, description, credithours, level, department_code)VALUES ('Calculus','101', 'Limit and Derivative', '4', 'Undergraduate', '402')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO register (snum, course_number, regtime, grade)VALUES ('1001', '363', 'Fall2015', '3')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO register (snum, course_number, regtime, grade)VALUES ('1002', '311', 'Fall2015', '4')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO register (snum, course_number, regtime, grade)VALUES ('1003', '228', 'Fall2015', '4')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO register (snum, course_number, regtime, grade)VALUES ('1004', '363', 'Spring2015', '3')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO register (snum, course_number, regtime, grade)VALUES ('1005', '531', 'Spring2015', '4')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO register (snum, course_number, regtime, grade)VALUES ('1006', '363', 'Fall2015', '3')");
		insert.executeUpdate();

		insert = connect.prepareStatement("INSERT INTO register (snum, course_number, regtime, grade)VALUES ('1007', '531', 'Spring2015', '4')");
		insert.executeUpdate();
		response.sendRedirect("InsertRecordsResult.jsp");
		    }%>
</form>
</body>
</html>