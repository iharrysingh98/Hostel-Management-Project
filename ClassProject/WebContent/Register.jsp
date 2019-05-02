<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%
    String uname = request.getParameter("uname");    
    String email = request.getParameter("email");
    String mobno = request.getParameter("mobno");
    String usertype=request.getParameter("usertype");
    //System.out.println(usertype+"haha");
    String psw = request.getParameter("psw");
    String psw1 = request.getParameter("psw1");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview","root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate ("insert into registered (uname, email, mobno, usertype, psw, psw1) values ('" + uname + "','" + email + "','" + mobno + "','"+ usertype+"','" + psw + "','" + psw1 +"')");
    if (i > 0) 
    {
        //session.setAttribute("uname", uname);
        //response.sendRedirect("Welcome.jsp");
       out.print("Registration Successfull!"+"<a href='signin.html'>Go to Login</a>");
    } else {
        response.sendRedirect("signin.html");
    }
%>
</body>
</html>