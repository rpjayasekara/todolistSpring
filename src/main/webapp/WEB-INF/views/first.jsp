<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>I am the first JSP bitches</title>
</head>
<body>
<h2> ${error}</h2>	
 <h1>
 	Bitches I am the boss dfadf ${name}
 	Hey I am ${firstname}   ${lastname}
 </h1>
<form action="/login" method="post">
  First name:<br>
  <input type="text" name="firstname" value="Mickey"><br>
  Last name:<br>
  <input type="text" name="lastname" value="Mouse"><br><br>
  Password:<br>
  <input type="password" name="password" value=""><br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>