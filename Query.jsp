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
<h1>Click "Q1" to see result of query 1</h1>  
<form method = "POST">
<input type = "submit" name = "query1" value = "Q1" />      
<% String button = request.getParameter("query1");	        
	        if(button!=null && button.equals("Q1")){
	        	String connectionURL = "jdbc:mysql://localhost:3306/sys?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	    		Connection connect = null;
	    		Class.forName("com.mysql.jdbc.Driver").newInstance();
	    		connect = DriverManager.getConnection(connectionURL, "root", "123");					
				
	    		PreparedStatement query = connect.prepareStatement("SELECT snum,ssn FROM students WHERE name='Becky'");
				ResultSet queryResult = query.executeQuery();
			    ArrayList<Integer> snum = new ArrayList<Integer>();
			    ArrayList<Integer> ssn = new ArrayList<Integer>();
				int i = 0;
				while(queryResult.next()){
				    snum.add(queryResult.getInt("snum"));
				    ssn.add(queryResult.getInt("ssn"));
				}
				queryResult.close();
			    request.setAttribute("snum",snum);
			    request.setAttribute("ssn", ssn);			   	
			    RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/QueryResult1.jsp");
			    dispatcher.forward(request, response);
		    }%>
</form>
<h1>Click "Q2" to see result of query 2</h1>    
<form method = "POST">
       <input type = "submit" name = "query2" value = "Q2" />
       	    <% String secondButton = request.getParameter("query2");	        
	        if(secondButton!=null && secondButton.equals("Q2")){
	        	String URL = "jdbc:mysql://localhost:3306/sys?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	    		Connection connect = null;
	    		Class.forName("com.mysql.jdbc.Driver").newInstance();
	    		connect = DriverManager.getConnection(URL, "root", "123");						
	    		PreparedStatement query = connect.prepareStatement("SELECT name, level FROM Degrees DE WHERE DE.department_code IN (SELECT code FROM Departments D WHERE D.name='Computer Science')");
	    		ResultSet queryResult = query.executeQuery();
			    ArrayList<String> name = new ArrayList<String>();
			    ArrayList<String> level = new ArrayList<String>();			    
				int i = 0;
				while(queryResult.next()){
				    name.add(queryResult.getString("name"));
				    level.add(queryResult.getString("level"));
				}
				queryResult.close();
			    request.setAttribute("name",name);
			    request.setAttribute("level", level);
			    RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/QueryResult2.jsp");
			    dispatcher.forward(request, response);
		    }%>
</form>
<h1>Click "Q3" to see result of query 3</h1>    
<form method = "POST">
        <input type = "submit" name = "query3" value = "Q3" /> 
       	    <% String thirdButton = request.getParameter("query3");	        
	        if(thirdButton!=null && thirdButton.equals("Q3")){
	        	String URL = "jdbc:mysql://localhost:3306/sys?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	    		Connection connect = null;
	    		Class.forName("com.mysql.jdbc.Driver").newInstance();
	    		connect = DriverManager.getConnection(URL, "root", "123");								
			    PreparedStatement query = connect.prepareStatement("SELECT number, name FROM Courses WHERE department_code IN (SELECT code FROM Departments WHERE name='Computer Science' or name='Landscape Architect')");
				ResultSet queryResult = query.executeQuery();
			    ArrayList<Integer> number = new ArrayList<Integer>();
			    ArrayList<String> name = new ArrayList<String>();		    
				int i = 0;
				while(queryResult.next()){
				    number.add(queryResult.getInt("number"));
				    name.add(queryResult.getString("name"));
				}
				queryResult.close();
			    request.setAttribute("number",number);
			    request.setAttribute("name", name);
			    RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/QueryResult3.jsp");
			    dispatcher.forward(request, response);
		    }%>
</form>
</body>
</html>