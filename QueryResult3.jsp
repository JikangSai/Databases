<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>query1</title>
<style>
table, th, td {
    border: 2px solid blue;
}
</style>
</head>
<body>
<table style="width:75%">
<tr><th>number</th><th>name</th></tr>
<% 
ArrayList<Integer> number = (ArrayList<Integer>) request.getAttribute("number");
ArrayList<String> name = (ArrayList<String>) request.getAttribute("name");
for(int i=0; i<number.size(); i++){%>
<tr><th><%=number.get(i) %></th><th><%=name.get(i) %></th></tr>
    <%}%>
</table>
</body>
</html>