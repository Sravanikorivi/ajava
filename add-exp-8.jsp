<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Add two numbers</title>
</head>
<body>
<form action="add.jsp"method="get">
num1: <input type="number" name="num1"><br></br>
num2: <input type="number" name="num2"><br></br>
      <input type="submit" value="Add">
</form>
<%
    String num1Str = request.getParameter("num1");
    String num2Str = request.getParameter("num2");
    if (num1Str != null && num2Str != null) {
    	int num1 = Integer.parseInt(num1Str);
    	int num2 = Integer.parseInt(num2Str);
    	int sum = num1 + num2;
  %>
  <p><%= num1 %> + <%= num2 %> = <%= sum %></p>
  <% 
    }
%>
</body>
</html>