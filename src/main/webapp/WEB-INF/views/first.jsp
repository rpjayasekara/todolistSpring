<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
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

<%@ include file="common/footer.jspf"%>