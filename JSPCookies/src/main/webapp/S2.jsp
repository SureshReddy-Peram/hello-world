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
   out.print("<h1>Reading Cookies</h1>"); 
  Cookie cookie = null;
  
  Cookie[] cookies =null;
  
  cookies = request.getCookies();
  
  if(cookies == null)
     out.print("<h2>No cookies found</h2>");
   else 
     out.print("<h2>Found cookies Name and value</h2>");
     
     //Now here we search for the cookie
     for(int i=0; i<=cookies.length; i++)
     {
        //Here we provide the value to the cookies
       cookie = cookies[i];
       out.print("Name: " + cookie.getName() + ",");
       out.print("Value: " + cookie.getValue() + "<br>");
     }  
     %>
</body>
</html>