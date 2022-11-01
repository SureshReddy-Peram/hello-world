<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <% 
   String fName = request.getParameter("fname");
   String lName = request.getParameter("lname");
   String fullname =fName +" " + lName;
   out.print("Fullname: " + fullname);
   
   Cookie firstname = new Cookie("fname", fName);
   Cookie lastname = new Cookie("lname", lName);
   
   //setting the expiry date after 1hour for both the cookies
   firstname.setMaxAge(60 * 60);
	lastname.setMaxAge(60 * 60);	   
		   
   response.addCookie(firstname);           //Cookie sent to client
   response.addCookie(lastname);
   
   %>
   <form action="S2.jsp" method="get">
     <input type="submit" value="Go">
   </form>
   
</body>
</html>