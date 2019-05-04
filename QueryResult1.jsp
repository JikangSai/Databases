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
<tr><th>snum</th><th>ssn</th></tr>
<% 
ArrayList<Integer> snum = (ArrayList<Integer>) request.getAttribute("snum");
ArrayList<Integer> ssn = (ArrayList<Integer>) request.getAttribute("ssn");
for(int i=0; i<snum.size(); i++){%>
<tr><th><%=snum.get(i) %></th><th><%=ssn.get(i) %></th></tr>
    <%}%>
</table>
</body>
</html>